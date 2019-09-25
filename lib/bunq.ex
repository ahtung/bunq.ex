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

    with  {:ok, body} <- Poison.encode(%{"client_public_key" => pub}),
          {:ok, response} <- create_installation(body),
          {:ok, response_body} <- decode_installation(response.body),
          token <- parse_token(response_body),
          _server_public_key <- parse_server_public_key(response_body),
          {:ok, dsbody} <- Poison.encode(%{"description" => "bunq.ex", "secret" => "sandbox_900b3fc9cc77c7b282aacba44c9d73b7acedff9a756041e14e228c8c", "permitted_ips" => ["*"]}),
          {:ok, _dsresponse} <- create_device_server(dsbody, token, priv),
          {:ok, sbody} <- Poison.encode(%{"secret" => "sandbox_900b3fc9cc77c7b282aacba44c9d73b7acedff9a756041e14e228c8c"}),
          {:ok, sresponse} <- create_session(sbody, token, priv),
          user_id <- parse_session(sresponse),
          {:ok, mabody} <- Poison.encode(%{}),
          {:ok, sresponse} <- get_monetary_accounts(user_id, mabody, token, priv) do

        IO.inspect sresponse

    else
      {:error, error} ->
        IO.inspect error
    end

    :world
  end

  defp parse_session(response) do
    response.body
    |> Poison.decode!
    |> Map.fetch!("Response")
    |> Enum.at(2)
    |> Map.fetch!("UserPerson")
    |> Map.fetch!("id")
  end

  defp parse_server_public_key(response) do
    response."Response"
    |> Enum.at(2)
    |> Map.fetch!("ServerPublicKey")
    |> Map.fetch!("server_public_key")
  end

  defp parse_token(response) do
    response."Response"
    |> Enum.at(1)
    |> Map.fetch!("Token")
    |> Map.fetch!("token")
  end

  defp create_device_server(body, token, rsa_private_key) do
    headers = [{"X-Bunq-Client-Authentication", token} | default_headers()]
    signature = Bunq.Signer.sign("POST", "/v1/device-server", headers, body, rsa_private_key)
    HTTPoison.post(
      "#{api_url()}/device-server",
      body,
      [{"X-Bunq-Client-Signature", signature} | headers]
    )
  end

  defp create_session(body, token, rsa_private_key) do
    headers = [{"X-Bunq-Client-Authentication", token} | default_headers()]
    signature = Bunq.Signer.sign("POST", "/v1/session-server", headers, body, rsa_private_key)
    HTTPoison.post(
      "#{api_url()}/session-server",
      body,
      [{"X-Bunq-Client-Signature", signature} | headers]
    )
  end

  defp create_installation(body) do
    HTTPoison.post(
      "#{api_url()}/installation",
      body,
      default_headers()
    )
  end

  defp get_monetary_accounts(user_id, body, token, rsa_private_key) do
    headers = [{"X-Bunq-Client-Authentication", token} | default_headers()]
    signature = Bunq.Signer.sign("GET", "/user/#{user_id}/monetary-account", headers, body, rsa_private_key)
    HTTPoison.get(
      "#{api_url()}/user/#{user_id}/monetary-account",
      [{"X-Bunq-Client-Signature", signature} | headers],
      []
    )
  end

  defp default_headers do
    [
      {"Cache-Control", "no-cache"},
      {"User-Agent", "bunq.ex/#{Application.spec(:bunq, :vsn)}"},
      {"X-Bunq-Language", "nl_NL"},
      {"X-Bunq-Region", "nl_NL"},
      {"X-Bunq-Client-Request-Id", UUID.uuid4()},
      {"X-Bunq-Geolocation", "0 0 0 0 000"}
    ]
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
end
