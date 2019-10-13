# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.MasterCardAction do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"monetary_account_id",
    :"card_id",
    :"amount_local",
    :"amount_converted",
    :"amount_billing",
    :"amount_original_local",
    :"amount_original_billing",
    :"amount_fee",
    :"card_authorisation_id_response",
    :"decision",
    :"decision_description",
    :"decision_description_translated",
    :"description",
    :"authorisation_status",
    :"authorisation_type",
    :"pan_entry_mode_user",
    :"settlement_status",
    :"maturity_date",
    :"city",
    :"alias",
    :"counterparty_alias",
    :"label_card",
    :"token_status",
    :"reservation_expiry_time",
    :"applied_limit",
    :"allow_chat",
    :"secure_code_id",
    :"wallet_provider_id",
    :"request_reference_split_the_bill"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"monetary_account_id" => integer() | nil,
    :"card_id" => integer() | nil,
    :"amount_local" => Amount | nil,
    :"amount_converted" => Amount | nil,
    :"amount_billing" => Amount | nil,
    :"amount_original_local" => Amount | nil,
    :"amount_original_billing" => Amount | nil,
    :"amount_fee" => Amount | nil,
    :"card_authorisation_id_response" => String.t | nil,
    :"decision" => String.t | nil,
    :"decision_description" => String.t | nil,
    :"decision_description_translated" => String.t | nil,
    :"description" => String.t | nil,
    :"authorisation_status" => String.t | nil,
    :"authorisation_type" => String.t | nil,
    :"pan_entry_mode_user" => String.t | nil,
    :"settlement_status" => String.t | nil,
    :"maturity_date" => String.t | nil,
    :"city" => String.t | nil,
    :"alias" => LabelMonetaryAccount | nil,
    :"counterparty_alias" => LabelMonetaryAccount | nil,
    :"label_card" => LabelCard | nil,
    :"token_status" => String.t | nil,
    :"reservation_expiry_time" => String.t | nil,
    :"applied_limit" => String.t | nil,
    :"allow_chat" => boolean() | nil,
    :"secure_code_id" => integer() | nil,
    :"wallet_provider_id" => String.t | nil,
    :"request_reference_split_the_bill" => [RequestInquiryReference] | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.MasterCardAction do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"amount_local", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"amount_converted", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"amount_billing", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"amount_original_local", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"amount_original_billing", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"amount_fee", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"alias", :struct, Bunq.Model.LabelMonetaryAccount, options)
    |> deserialize(:"counterparty_alias", :struct, Bunq.Model.LabelMonetaryAccount, options)
    |> deserialize(:"label_card", :struct, Bunq.Model.LabelCard, options)
    |> deserialize(:"request_reference_split_the_bill", :list, Bunq.Model.RequestInquiryReference, options)
  end
end

