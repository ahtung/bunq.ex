defmodule Bunq.RequestSigner do
  @behaviour Tesla.Middleware

  def call(env, next, opts) do
    path = String.replace(env.url, "https://public-api.sandbox.bunq.com", "")
    signature = sign(env.method, path, env.headers, env.body, opts)

    env
    |> Tesla.put_headers([{"X-Bunq-Client-Signature", signature}])
    |> Tesla.run(next)
  end

  def sign(method, path, headers, body, rsa_private_key) do
    headers_string = headers |> filter |> sort
    digest = "#{method |> Atom.to_string |> String.upcase} #{path}\n#{headers_string}\n\n#{body}"
    |> IO.inspect(label: "✅")
    sign(digest, rsa_private_key)
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

  defp sign(digest, rsa_private_key) do
    {:ok, signature} = RsaEx.sign(digest, rsa_private_key, :sha256)
    Base.encode64(signature)
  end
end
