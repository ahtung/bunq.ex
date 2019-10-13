# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.Geolocation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"latitude",
    :"longitude",
    :"altitude",
    :"radius"
  ]

  @type t :: %__MODULE__{
    :"latitude" => integer() | nil,
    :"longitude" => integer() | nil,
    :"altitude" => integer() | nil,
    :"radius" => integer() | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.Geolocation do
  def decode(value, _options) do
    value
  end
end

