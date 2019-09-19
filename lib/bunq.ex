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
    base = "https://public-api.sandbox.bunq.com"
    version = 1
    {:ok, priv} = RsaEx.generate_private_key
    {:ok, pub} = RsaEx.generate_public_key(priv)

    HTTPoison.start
    result = HTTPoison.post "#{base}/v#{version}/installation",
      "{\"client_public_key\": \"#{String.slice(pub, 0..-2)}\"}",
      [
        {"Cache-Control", "no-cache"},
        {"User-Agent", "bunq-TestServer/1.00 sandbox/0.17b3"},
        {"X-Bunq-Language", "en_US"},
        {"X-Bunq-Region", "en_US"},
        {"X-Bunq-Client-Request-Id", "bunq.ex"},
        {"X-Bunq-Geolocation", "0 0 0 0 000"}

      ]
    IO.inspect result

    :world
  end
end
