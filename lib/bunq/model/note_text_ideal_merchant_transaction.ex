# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.NoteTextIdealMerchantTransaction do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"content"
  ]

  @type t :: %__MODULE__{
    :"content" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.NoteTextIdealMerchantTransaction do
  def decode(value, _options) do
    value
  end
end
