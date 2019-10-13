# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.TabUsageMultiple do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"description",
    :"status",
    :"amount_total",
    :"allow_amount_higher",
    :"allow_amount_lower",
    :"want_tip",
    :"minimum_age",
    :"require_address",
    :"redirect_url",
    :"visibility",
    :"expiration",
    :"tab_attachment",
    :"uuid",
    :"created",
    :"updated",
    :"qr_code_token",
    :"tab_url",
    :"alias",
    :"cash_register_location",
    :"tab_item"
  ]

  @type t :: %__MODULE__{
    :"description" => String.t | nil,
    :"status" => String.t | nil,
    :"amount_total" => Amount | nil,
    :"allow_amount_higher" => boolean() | nil,
    :"allow_amount_lower" => boolean() | nil,
    :"want_tip" => boolean() | nil,
    :"minimum_age" => boolean() | nil,
    :"require_address" => String.t | nil,
    :"redirect_url" => String.t | nil,
    :"visibility" => TabVisibility | nil,
    :"expiration" => String.t | nil,
    :"tab_attachment" => [BunqId] | nil,
    :"uuid" => String.t | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"qr_code_token" => String.t | nil,
    :"tab_url" => String.t | nil,
    :"alias" => LabelMonetaryAccount | nil,
    :"cash_register_location" => Geolocation | nil,
    :"tab_item" => [TabItem] | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.TabUsageMultiple do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"amount_total", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"visibility", :struct, Bunq.Model.TabVisibility, options)
    |> deserialize(:"tab_attachment", :list, Bunq.Model.BunqId, options)
    |> deserialize(:"alias", :struct, Bunq.Model.LabelMonetaryAccount, options)
    |> deserialize(:"cash_register_location", :struct, Bunq.Model.Geolocation, options)
    |> deserialize(:"tab_item", :list, Bunq.Model.TabItem, options)
  end
end
