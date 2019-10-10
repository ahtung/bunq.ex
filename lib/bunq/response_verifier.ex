defmodule Bunq.ResponseVerifier do
  @behaviour Tesla.Middleware

  def call(env, next, opts) do
    {:ok, res} = Tesla.run(env, next)
    headers_string = res.headers |> filter |> sort
    digest = "#{res.status}\n#{headers_string}\n\n#{res.body}"
    case RsaEx.verify(digest, "", opts) do
      {:ok, res} -> IO.inspect(digest, label: "✅")
      {:error, err} -> raise err
    end
    {:ok, res}
  end

  defp filter(headers) do
    headers
    |> Enum.filter(fn header ->
      header_name = elem(header, 0)
      "Cache-Control" == header_name || "User-Agent" == header_name || header_name |> String.starts_with?("X-Bunq-")
    end)
  end

  defp sort(headers) do
    headers
    |> Enum.sort_by(fn header -> elem(header, 0) end)
    |> Enum.map(fn header -> "#{elem(header, 0)}: #{elem(header, 1)}" end)
    |> Enum.join("\n")
  end
end
