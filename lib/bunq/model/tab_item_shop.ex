# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.TabItemShop do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"description",
    :"ean_code",
    :"avatar_attachment_uuid",
    :"tab_attachment",
    :"quantity",
    :"amount",
    :"id",
    :"avatar_attachment"
  ]

  @type t :: %__MODULE__{
    :"description" => String.t | nil,
    :"ean_code" => String.t | nil,
    :"avatar_attachment_uuid" => String.t | nil,
    :"tab_attachment" => [Map] | nil,
    :"quantity" => integer() | nil,
    :"amount" => Amount | nil,
    :"id" => integer() | nil,
    :"avatar_attachment" => Map | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.TabItemShop do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"amount", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"avatar_attachment", :struct, Bunq.Model.Map, options)
  end
end

