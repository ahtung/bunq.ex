# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.UserPersonUpdate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.UserPersonUpdate do
  def decode(value, _options) do
    value
  end
end
