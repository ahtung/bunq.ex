# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.MonetaryAccountProfile do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"profile_fill",
    :"profile_drain"
  ]

  @type t :: %__MODULE__{
    :"profile_fill" => MonetaryAccountProfileFill | nil,
    :"profile_drain" => MonetaryAccountProfileDrain | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.MonetaryAccountProfile do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"profile_fill", :struct, Bunq.Model.MonetaryAccountProfileFill, options)
    |> deserialize(:"profile_drain", :struct, Bunq.Model.MonetaryAccountProfileDrain, options)
  end
end
