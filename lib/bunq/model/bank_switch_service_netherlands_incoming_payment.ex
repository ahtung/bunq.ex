# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.BankSwitchServiceNetherlandsIncomingPayment do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bank_switch_service",
    :"payment"
  ]

  @type t :: %__MODULE__{
    :"bank_switch_service" => BankSwitchServiceNetherlandsIncoming | nil,
    :"payment" => Payment | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.BankSwitchServiceNetherlandsIncomingPayment do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bank_switch_service", :struct, Bunq.Model.BankSwitchServiceNetherlandsIncoming, options)
    |> deserialize(:"payment", :struct, Bunq.Model.Payment, options)
  end
end

