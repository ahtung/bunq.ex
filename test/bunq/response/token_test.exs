defmodule TokenTest do
  use ExUnit.Case
  doctest Bunq.Response.Token

  # test "decode" do
  #   token = %{
  #     "created" => "2019-09-20 07:14:01.398585",
  #     "id" => 2979392,
  #     "token" => "d171a2e030448aa4e21a38c16f77c6330cd6843dc5cbe47d4fec423bbaa7f04a",
  #     "updated" => "2019-09-20 07:14:01.398585"
  #   }
  #
  #   assert Poison.decode!(Poison.encode!(token), as: %Bunq.Response.Token{}) == %Bunq.Response.Token{created: "2019-09-20 07:14:01.398585", id: 2979392, token: "d171a2e030448aa4e21a38c16f77c6330cd6843dc5cbe47d4fec423bbaa7f04a", updated: "2019-09-20 07:14:01.398585"}
  # end
end
