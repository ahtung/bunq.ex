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
    %{"Response" =>
      [
        %{"Id" => %{"id" => _id}},
        %{"Token" => %{"token" => token}},
        %{"ServerPublicKey" => %{"server_public_key" => server_public_key}}
      ]
    } = response.body
    ############################################################################

    # Client
    client = Bunq.client(token, priv, server_public_key)

    {:ok, _response} = Bunq.create_device_server(client)
      # |> IO.inspect

    ############################################################################

    {:ok, response} = Bunq.create_session(client)
    %{"Response" =>
      [
        %{"Id" => %{"id" => _id}},
        %{"Token" => %{"token" => token}},
        %{"UserPerson" => %{"id" => user_id}}
      ]
    } = response.body

    ############################################################################

    # Client
    client = Bunq.client(token, priv, server_public_key)

    {:ok, response} = Bunq.get_monetary_accounts(client, user_id)
    %{"Response" =>
      [
        %{
          "MonetaryAccountBank" => %{
            "id" => monetary_account_bank_id
          }
        }
      ]
    } = response.body

    # IO.inspect(monetary_account_bank_id)
    ############################################################################

    {:ok, response} = Bunq.get_payments(client, user_id, monetary_account_bank_id)
    |> IO.inspect
  end
end
