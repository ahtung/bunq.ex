# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.AttachmentPublicRead do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"uuid",
    :"created",
    :"updated",
    :"attachment"
  ]

  @type t :: %__MODULE__{
    :"uuid" => String.t | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"attachment" => Attachment | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.AttachmentPublicRead do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"attachment", :struct, Bunq.Model.Attachment, options)
  end
end
