# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.AvatarCreate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"uuid"
  ]

  @type t :: %__MODULE__{
    :"uuid" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.AvatarCreate do
  def decode(value, _options) do
    value
  end
end

