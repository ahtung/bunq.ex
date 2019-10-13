# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.TabVisibility do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"cash_register_qr_code",
    :"tab_qr_code",
    :"location"
  ]

  @type t :: %__MODULE__{
    :"cash_register_qr_code" => boolean() | nil,
    :"tab_qr_code" => boolean() | nil,
    :"location" => Geolocation | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.TabVisibility do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"location", :struct, Bunq.Model.Geolocation, options)
  end
end
