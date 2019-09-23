defmodule Bunq.Response.Token do
  @derive [Poison.Encoder]
  defstruct [:created, :id, :token, :updated]
end
