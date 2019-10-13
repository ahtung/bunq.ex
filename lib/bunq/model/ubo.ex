# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.Ubo do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"date_of_birth",
    :"nationality"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t | nil,
    :"date_of_birth" => String.t | nil,
    :"nationality" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.Ubo do
  def decode(value, _options) do
    value
  end
end

