defmodule BunqTest do
  use ExUnit.Case
  doctest Bunq

  test "just do it" do
    # Generate Keys
    {:ok, priv} = RsaEx.generate_private_key
    {:ok, pub} = RsaEx.generate_public_key(priv)

    # Create installation
    {:ok, response} = Bunq.create_installation(pub)
    token = Enum.at(response.body["Response"], 1)["Token"]["token"]

    {:ok, response} = Bunq.create_device_server(token, priv)
    # |> IO.inspect

    {:ok, response} = Bunq.create_session(token, priv)
    token = Enum.at(response.body["Response"], 1)["Token"]["token"]
    user_id = Enum.at(response.body["Response"], 2)["UserPerson"]["id"]

    {:ok, response} = Bunq.get_monetary_accounts(user_id, token, priv)

    IO.inspect(response)
  end
end
