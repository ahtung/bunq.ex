defmodule IdTest do
  use ExUnit.Case
  doctest Bunq.Response.Id

  # test "decode" do
  #   id = %{"Id" => %{"id" => 214631}}
  #
  #   assert Poison.decode!(Poison.encode!(id), as: %Bunq.Response.Id{}) == %Bunq.Response.Id{id: 214615}
  # end
end
