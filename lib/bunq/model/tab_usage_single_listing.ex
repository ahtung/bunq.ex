# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.TabUsageSingleListing do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"uuid",
    :"created",
    :"updated",
    :"merchant_reference",
    :"description",
    :"status",
    :"amount_total",
    :"amount_paid",
    :"qr_code_token",
    :"tab_url",
    :"visibility",
    :"minimum_age",
    :"require_address",
    :"redirect_url",
    :"expiration",
    :"alias",
    :"cash_register_location",
    :"tab_item",
    :"tab_attachment"
  ]

  @type t :: %__MODULE__{
    :"uuid" => String.t | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"merchant_reference" => String.t | nil,
    :"description" => String.t | nil,
    :"status" => String.t | nil,
    :"amount_total" => Amount | nil,
    :"amount_paid" => Amount | nil,
    :"qr_code_token" => String.t | nil,
    :"tab_url" => String.t | nil,
    :"visibility" => TabVisibility | nil,
    :"minimum_age" => boolean() | nil,
    :"require_address" => String.t | nil,
    :"redirect_url" => String.t | nil,
    :"expiration" => String.t | nil,
    :"alias" => LabelMonetaryAccount | nil,
    :"cash_register_location" => Geolocation | nil,
    :"tab_item" => [TabItem] | nil,
    :"tab_attachment" => [BunqId] | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.TabUsageSingleListing do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"amount_total", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"amount_paid", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"visibility", :struct, Bunq.Model.TabVisibility, options)
    |> deserialize(:"alias", :struct, Bunq.Model.LabelMonetaryAccount, options)
    |> deserialize(:"cash_register_location", :struct, Bunq.Model.Geolocation, options)
    |> deserialize(:"tab_item", :list, Bunq.Model.TabItem, options)
    |> deserialize(:"tab_attachment", :list, Bunq.Model.BunqId, options)
  end
end

