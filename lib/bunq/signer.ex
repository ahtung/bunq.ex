defmodule Bunq.Signer do
  def sign(method, path, headers, body, rsa_private_key) do
    sorted_headers =
      headers
      |> Enum.sort_by(fn(k) ->
        elem(k, 0)
      end)
      |> Enum.map(fn(x) ->
        "#{elem(x, 0)}: #{elem(x, 1)}"
      end)
      |> Enum.join("\n")

    digest = "#{method} #{path}\n#{sorted_headers}\n\n#{body}"
    {:ok, signature} = RsaEx.sign(digest, rsa_private_key, :sha256)
    Base.encode64(signature)
  end
end
