defmodule Bunq.ResponseVerifier do
  @behaviour Tesla.Middleware

  def call(env, next, opts) do
    {:ok, res} = Tesla.run(env, next)
    headers_string = res.headers |> Bunq.Headers.filter |> Bunq.Headers.sort
    digest = "#{res.status}\n#{headers_string}\n\n#{res.body}"
    case RsaEx.verify(digest, "", opts) do
      {:ok, res} -> IO.inspect(digest, label: "✅")
      {:error, err} -> raise err
    end
    {:ok, res}
  end
end
