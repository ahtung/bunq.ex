# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.SessionServerToken do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"token"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"token" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.SessionServerToken do
  def decode(value, _options) do
    value
  end
end

