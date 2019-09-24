defmodule Bunq do
  @moduledoc """
  Documentation for Bunq.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Bunq.hello()
      :world

  """
  def hello do
    HTTPoison.start

    # Generate Keys
    {:ok, priv} = RsaEx.generate_private_key
    {:ok, pub} = RsaEx.generate_public_key(priv)

    ip = "167.202.201.20"


    with  {:ok, body} <- Poison.encode(%{"client_public_key" => pub}),
          {:ok, response} <- create_installation(body),
          {:ok, response_body} <- decode_installation(response.body),
          token <- parse_token(response_body),
          server_public_key <- parse_server_public_key(response_body),
          {:ok, dsbody} <- Poison.encode(%{"description" => "bunq.ex", "secret" => "sandbox_0c3455603650264be3d392c62a5b50fef52a5af24aedc206a5a120b1", "permitted_ips" => ["*"]}),
          {:ok, dsresponse} <- create_device_server(dsbody, token, priv) do

        IO.inspect dsresponse
        IO.puts("YAY")

    else
      {:error, error} ->
        IO.inspect error
    end

    :world
  end

  defp parse_server_public_key(response) do
    response."Response"
    |> Enum.at(2)
    |> Map.fetch!("ServerPublicKey")
    |> Map.fetch!("server_public_key")
    |> IO.inspect(label: "Server Public Key")
  end

  defp parse_token(response) do
    response."Response"
    |> Enum.at(1)
    |> Map.fetch!("Token")
    |> Map.fetch!("token")
    |> IO.inspect(label: "Token")
  end

  defp create_device_server(body, token, rsa_private_key) do
    body |> IO.inspect(label: "Body")
    headers = [
      {"Cache-Control", "no-cache"},
      {"User-Agent", "bunq.ex/#{Application.spec(:bunq, :vsn)}"},
      {"X-Bunq-Language", "nl_NL"},
      {"X-Bunq-Region", "nl_NL"},
      {"X-Bunq-Client-Request-Id", UUID.uuid4()},
      {"X-Bunq-Geolocation", "0 0 0 0 000"},
      {"X-Bunq-Client-Authentication", token}
    ]

    signature = sign("POST", "/v1/device-server", headers, body, rsa_private_key)
    IO.inspect(signature, label: "Signature")

    [{"X-Bunq-Client-Signature", signature} | headers] |> IO.inspect
    body |> IO.inspect

    HTTPoison.post(
      "#{api_url()}/device-server",
      body,
      [{"X-Bunq-Client-Signature", signature} | headers]
    ) |> IO.inspect
  end

  defp create_installation(body) do
    HTTPoison.post(
      "#{api_url()}/installation",
      body,
      [
        {"Cache-Control", "no-cache"},
        {"User-Agent", "bunq.ex/#{Application.spec(:bunq, :vsn)}"},
        {"X-Bunq-Language", "nl_NL"},
        {"X-Bunq-Region", "nl_NL"},
        {"X-Bunq-Client-Request-Id", UUID.uuid4()},
        {"X-Bunq-Geolocation", "0 0 0 0 000"}
      ]
    )
  end

  defp decode_installation(body) do
    Poison.decode(
      body,
      as: %Bunq.Response{
        Response: [
          %{"Id" => %Bunq.Response.Id{}},
          %{"Token" => %Bunq.Response.Token{}},
          %{"ServerPublicKey" => %Bunq.Response.ServerPublicKey{}}
        ]
      }
    )
  end

  defp api_url do
    "#{Application.get_env(:bunq, :base_url)}/v#{Application.get_env(:bunq, :version)}"
  end

  defp sign(method, path, headers, body, rsa_private_key) do
    sorted_headers =
      headers
      |> IO.inspect(label: "Headers")
      |> Enum.sort_by(fn(k) ->
        elem(k, 0)
      end)
      |> IO.inspect(label: "Sorted")
      |> Enum.map(fn(x) ->
        "#{elem(x, 0)}: #{elem(x, 1)}"
      end)
      |> IO.inspect(label: "Stringified")
      |> Enum.join("\n")

    {:ok, signature} =
      "#{method} #{path}\n#{sorted_headers}\n\n#{body}"
      |> IO.inspect(label: "ToSign (has a better name)")
      |> RsaEx.sign(rsa_private_key, :sha256)

    Base.encode64(signature)
  end
end
