# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.NoteTextRequestInquiryUpdate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Id"
  ]

  @type t :: %__MODULE__{
    :"Id" => BunqId | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.NoteTextRequestInquiryUpdate do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Id", :struct, Bunq.Model.BunqId, options)
  end
end

