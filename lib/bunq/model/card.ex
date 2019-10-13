# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.Card do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"pin_code",
    :"activation_code",
    :"status",
    :"card_limit",
    :"card_limit_atm",
    :"mag_stripe_permission",
    :"country_permission",
    :"pin_code_assignment",
    :"primary_account_numbers_virtual",
    :"primary_account_numbers",
    :"monetary_account_id_fallback"
  ]

  @type t :: %__MODULE__{
    :"pin_code" => String.t | nil,
    :"activation_code" => String.t | nil,
    :"status" => String.t | nil,
    :"card_limit" => Amount | nil,
    :"card_limit_atm" => Amount | nil,
    :"mag_stripe_permission" => CardMagStripePermission | nil,
    :"country_permission" => [CardCountryPermission] | nil,
    :"pin_code_assignment" => [CardPinAssignment] | nil,
    :"primary_account_numbers_virtual" => [CardVirtualPrimaryAccountNumber] | nil,
    :"primary_account_numbers" => [CardPrimaryAccountNumber] | nil,
    :"monetary_account_id_fallback" => integer() | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.Card do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"card_limit", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"card_limit_atm", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"mag_stripe_permission", :struct, Bunq.Model.CardMagStripePermission, options)
    |> deserialize(:"country_permission", :list, Bunq.Model.CardCountryPermission, options)
    |> deserialize(:"pin_code_assignment", :list, Bunq.Model.CardPinAssignment, options)
    |> deserialize(:"primary_account_numbers_virtual", :list, Bunq.Model.CardVirtualPrimaryAccountNumber, options)
    |> deserialize(:"primary_account_numbers", :list, Bunq.Model.CardPrimaryAccountNumber, options)
  end
end
