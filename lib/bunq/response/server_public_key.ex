defmodule Bunq.Response.ServerPublicKey do
  @derive [Poison.Encoder]
  defstruct [:server_public_key]
end
