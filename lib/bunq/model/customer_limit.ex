# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.CustomerLimit do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"limit_monetary_account",
    :"limit_monetary_account_remaining",
    :"limit_card_debit_maestro",
    :"limit_card_debit_mastercard",
    :"limit_card_debit_wildcard",
    :"limit_card_wildcard",
    :"limit_card_debit_replacement",
    :"limit_card_replacement",
    :"limit_amount_monthly",
    :"spent_amount_monthly"
  ]

  @type t :: %__MODULE__{
    :"limit_monetary_account" => integer() | nil,
    :"limit_monetary_account_remaining" => integer() | nil,
    :"limit_card_debit_maestro" => integer() | nil,
    :"limit_card_debit_mastercard" => integer() | nil,
    :"limit_card_debit_wildcard" => integer() | nil,
    :"limit_card_wildcard" => integer() | nil,
    :"limit_card_debit_replacement" => integer() | nil,
    :"limit_card_replacement" => integer() | nil,
    :"limit_amount_monthly" => Amount | nil,
    :"spent_amount_monthly" => Amount | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.CustomerLimit do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"limit_amount_monthly", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"spent_amount_monthly", :struct, Bunq.Model.Amount, options)
  end
end

