# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.SofortMerchantTransactionRead do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"monetary_account_id",
    :"alias",
    :"counterparty_alias",
    :"amount_guaranteed",
    :"amount_requested",
    :"issuer",
    :"issuer_authentication_url",
    :"status",
    :"error_message",
    :"transaction_identifier"
  ]

  @type t :: %__MODULE__{
    :"monetary_account_id" => integer() | nil,
    :"alias" => LabelMonetaryAccount | nil,
    :"counterparty_alias" => LabelMonetaryAccount | nil,
    :"amount_guaranteed" => Amount | nil,
    :"amount_requested" => Amount | nil,
    :"issuer" => String.t | nil,
    :"issuer_authentication_url" => String.t | nil,
    :"status" => String.t | nil,
    :"error_message" => [List] | nil,
    :"transaction_identifier" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.SofortMerchantTransactionRead do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"alias", :struct, Bunq.Model.LabelMonetaryAccount, options)
    |> deserialize(:"counterparty_alias", :struct, Bunq.Model.LabelMonetaryAccount, options)
    |> deserialize(:"amount_guaranteed", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"amount_requested", :struct, Bunq.Model.Amount, options)
  end
end

