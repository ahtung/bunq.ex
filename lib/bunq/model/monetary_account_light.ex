# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.MonetaryAccountLight do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"currency",
    :"description",
    :"daily_limit",
    :"avatar_uuid",
    :"status",
    :"sub_status",
    :"reason",
    :"reason_description",
    :"notification_filters",
    :"setting",
    :"id",
    :"created",
    :"updated",
    :"avatar",
    :"daily_spent",
    :"balance",
    :"balance_real",
    :"alias",
    :"public_uuid",
    :"user_id",
    :"balance_maximum",
    :"budget_month_used",
    :"budget_month_maximum",
    :"budget_year_used",
    :"budget_year_maximum",
    :"budget_withdrawal_year_used",
    :"budget_withdrawal_year_maximum"
  ]

  @type t :: %__MODULE__{
    :"currency" => String.t | nil,
    :"description" => String.t | nil,
    :"daily_limit" => Amount | nil,
    :"avatar_uuid" => String.t | nil,
    :"status" => String.t | nil,
    :"sub_status" => String.t | nil,
    :"reason" => String.t | nil,
    :"reason_description" => String.t | nil,
    :"notification_filters" => [NotificationFilter] | nil,
    :"setting" => MonetaryAccountSetting | nil,
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"avatar" => Avatar | nil,
    :"daily_spent" => Amount | nil,
    :"balance" => Amount | nil,
    :"balance_real" => Amount | nil,
    :"alias" => [Pointer] | nil,
    :"public_uuid" => String.t | nil,
    :"user_id" => integer() | nil,
    :"balance_maximum" => Amount | nil,
    :"budget_month_used" => Amount | nil,
    :"budget_month_maximum" => Amount | nil,
    :"budget_year_used" => Amount | nil,
    :"budget_year_maximum" => Amount | nil,
    :"budget_withdrawal_year_used" => Amount | nil,
    :"budget_withdrawal_year_maximum" => Amount | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.MonetaryAccountLight do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"daily_limit", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"notification_filters", :list, Bunq.Model.NotificationFilter, options)
    |> deserialize(:"setting", :struct, Bunq.Model.MonetaryAccountSetting, options)
    |> deserialize(:"avatar", :struct, Bunq.Model.Avatar, options)
    |> deserialize(:"daily_spent", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"balance", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"balance_real", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"alias", :list, Bunq.Model.Pointer, options)
    |> deserialize(:"balance_maximum", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"budget_month_used", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"budget_month_maximum", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"budget_year_used", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"budget_year_maximum", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"budget_withdrawal_year_used", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"budget_withdrawal_year_maximum", :struct, Bunq.Model.Amount, options)
  end
end
