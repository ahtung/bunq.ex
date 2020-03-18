defmodule Bunq.RequestSigner do
  @behaviour Tesla.Middleware

  def call(env, next, opts) do
    path = String.replace(env.url, "https://public-api.sandbox.bunq.com", "")
    signature = sign(env.method, path, env.headers, env.body, opts)

    env
    |> Tesla.put_headers([{"X-Bunq-Client-Signature", signature}])
    |> Tesla.run(next)
  end

  defp sign(method, path, headers, body, rsa_private_key) do
    headers_string = headers |> Bunq.Headers.filter |> Bunq.Headers.sort
    "#{method |> Atom.to_string |> String.upcase} #{path}\n#{headers_string}\n\n#{body}"
    |> IO.inspect(label: "🔏")
    |> sign(rsa_private_key)
  end

  defp sign(digest, rsa_private_key) do
    {:ok, signature} = RsaEx.sign(digest, rsa_private_key, :sha256)
    Base.encode64(signature)
  end
end
