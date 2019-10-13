# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.TabItemShopRead do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"description",
    :"ean_code",
    :"avatar_attachment",
    :"tab_attachment",
    :"quantity",
    :"amount"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"description" => String.t | nil,
    :"ean_code" => String.t | nil,
    :"avatar_attachment" => Map | nil,
    :"tab_attachment" => [Map] | nil,
    :"quantity" => integer() | nil,
    :"amount" => Amount | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.TabItemShopRead do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"avatar_attachment", :struct, Bunq.Model.Map, options)
    |> deserialize(:"amount", :struct, Bunq.Model.Amount, options)
  end
end

