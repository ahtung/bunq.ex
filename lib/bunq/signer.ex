defmodule Bunq.Signer do
  def sign(method, path, headers, body, rsa_private_key) do
    sorted_headers = sorted(headers)
    digest = "#{method} #{path}\n#{sorted_headers}\n\n#{body}"
    sign(digest, rsa_private_key)
  end

  def sign(method, path, headers, rsa_private_key) do
    sorted_headers = sorted(headers)
    digest = "#{method} #{path}\n#{sorted_headers}\n\n"
    sign(digest, rsa_private_key)
  end

  defp sorted(headers) do
    headers
    |> Enum.sort_by(fn(k) ->
      elem(k, 0)
    end)
    |> Enum.map(fn(x) ->
      "#{elem(x, 0)}: #{elem(x, 1)}"
    end)
    |> Enum.join("\n")
  end

  defp sign(digest, rsa_private_key) do
    with {:ok, signature} = RsaEx.sign(digest, rsa_private_key, :sha256) do
      Base.encode64(signature)
    end
  end
end
