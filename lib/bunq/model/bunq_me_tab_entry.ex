# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.BunqMeTabEntry do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"amount_inquired",
    :"description",
    :"redirect_url",
    :"uuid",
    :"alias",
    :"status",
    :"merchant_available"
  ]

  @type t :: %__MODULE__{
    :"amount_inquired" => Amount | nil,
    :"description" => String.t | nil,
    :"redirect_url" => String.t | nil,
    :"uuid" => String.t | nil,
    :"alias" => LabelMonetaryAccount | nil,
    :"status" => String.t | nil,
    :"merchant_available" => [BunqMeMerchantAvailable] | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.BunqMeTabEntry do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"amount_inquired", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"alias", :struct, Bunq.Model.LabelMonetaryAccount, options)
    |> deserialize(:"merchant_available", :list, Bunq.Model.BunqMeMerchantAvailable, options)
  end
end

