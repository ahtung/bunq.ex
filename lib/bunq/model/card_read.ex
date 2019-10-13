# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.CardRead do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"created",
    :"updated",
    :"public_uuid",
    :"type",
    :"sub_type",
    :"second_line",
    :"status",
    :"sub_status",
    :"order_status",
    :"expiry_date",
    :"name_on_card",
    :"primary_account_number_four_digit",
    :"primary_account_numbers_virtual",
    :"primary_account_numbers",
    :"card_limit",
    :"card_limit_atm",
    :"country_permission",
    :"label_monetary_account_ordered",
    :"label_monetary_account_current",
    :"pin_code_assignment",
    :"monetary_account_id_fallback",
    :"country"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"public_uuid" => String.t | nil,
    :"type" => String.t | nil,
    :"sub_type" => String.t | nil,
    :"second_line" => String.t | nil,
    :"status" => String.t | nil,
    :"sub_status" => String.t | nil,
    :"order_status" => String.t | nil,
    :"expiry_date" => String.t | nil,
    :"name_on_card" => String.t | nil,
    :"primary_account_number_four_digit" => String.t | nil,
    :"primary_account_numbers_virtual" => [CardVirtualPrimaryAccountNumber] | nil,
    :"primary_account_numbers" => [CardPrimaryAccountNumber] | nil,
    :"card_limit" => Amount | nil,
    :"card_limit_atm" => Amount | nil,
    :"country_permission" => [CardCountryPermission] | nil,
    :"label_monetary_account_ordered" => LabelMonetaryAccount | nil,
    :"label_monetary_account_current" => LabelMonetaryAccount | nil,
    :"pin_code_assignment" => [CardPinAssignment] | nil,
    :"monetary_account_id_fallback" => integer() | nil,
    :"country" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.CardRead do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"primary_account_numbers_virtual", :list, Bunq.Model.CardVirtualPrimaryAccountNumber, options)
    |> deserialize(:"primary_account_numbers", :list, Bunq.Model.CardPrimaryAccountNumber, options)
    |> deserialize(:"card_limit", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"card_limit_atm", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"country_permission", :list, Bunq.Model.CardCountryPermission, options)
    |> deserialize(:"label_monetary_account_ordered", :struct, Bunq.Model.LabelMonetaryAccount, options)
    |> deserialize(:"label_monetary_account_current", :struct, Bunq.Model.LabelMonetaryAccount, options)
    |> deserialize(:"pin_code_assignment", :list, Bunq.Model.CardPinAssignment, options)
  end
end
