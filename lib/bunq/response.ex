defmodule Bunq.Response do
  @derive [Poison.Encoder]
  defstruct [:Response, :Error]
end
