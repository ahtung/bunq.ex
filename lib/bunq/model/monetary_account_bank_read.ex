# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.MonetaryAccountBankRead do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"created",
    :"updated",
    :"avatar",
    :"currency",
    :"description",
    :"daily_limit",
    :"daily_spent",
    :"overdraft_limit",
    :"balance",
    :"alias",
    :"public_uuid",
    :"status",
    :"sub_status",
    :"reason",
    :"reason_description",
    :"user_id",
    :"monetary_account_profile",
    :"notification_filters",
    :"setting"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"avatar" => Avatar | nil,
    :"currency" => String.t | nil,
    :"description" => String.t | nil,
    :"daily_limit" => Amount | nil,
    :"daily_spent" => Amount | nil,
    :"overdraft_limit" => Amount | nil,
    :"balance" => Amount | nil,
    :"alias" => [Pointer] | nil,
    :"public_uuid" => String.t | nil,
    :"status" => String.t | nil,
    :"sub_status" => String.t | nil,
    :"reason" => String.t | nil,
    :"reason_description" => String.t | nil,
    :"user_id" => integer() | nil,
    :"monetary_account_profile" => MonetaryAccountProfile | nil,
    :"notification_filters" => [NotificationFilter] | nil,
    :"setting" => MonetaryAccountSetting | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.MonetaryAccountBankRead do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"avatar", :struct, Bunq.Model.Avatar, options)
    |> deserialize(:"daily_limit", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"daily_spent", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"overdraft_limit", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"balance", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"alias", :list, Bunq.Model.Pointer, options)
    |> deserialize(:"monetary_account_profile", :struct, Bunq.Model.MonetaryAccountProfile, options)
    |> deserialize(:"notification_filters", :list, Bunq.Model.NotificationFilter, options)
    |> deserialize(:"setting", :struct, Bunq.Model.MonetaryAccountSetting, options)
  end
end

