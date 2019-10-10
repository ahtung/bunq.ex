defmodule BunqTest do
  use ExUnit.Case
  doctest Bunq

  test "just do it" do
    # Generate Keys
    {:ok, priv} = RsaEx.generate_private_key
    {:ok, pub} = RsaEx.generate_public_key(priv)

    # Client
    client = Bunq.client()

    # Create installation
    {:ok, response} = Bunq.create_installation(client, pub)
    token = Enum.at(response.body["Response"], 1)["Token"]["token"]
    server_public_key = Enum.at(response.body["Response"], 2)["ServerPublicKey"]["server_public_key"]

    # Client
    client = Bunq.client(token, priv, server_public_key)

    {:ok, response} = Bunq.create_device_server(client)
    # |> IO.inspect

    {:ok, response} = Bunq.create_session(client)
    token = Enum.at(response.body["Response"], 1)["Token"]["token"]
    user_id = Enum.at(response.body["Response"], 2)["UserPerson"]["id"]

    # Client
    client = Bunq.client(token, priv, server_public_key)

    {:ok, response} = Bunq.get_monetary_accounts(client, user_id)

    IO.inspect(response)
  end
end
