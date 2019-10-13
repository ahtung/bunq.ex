# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.NoteAttachmentBunqMeFundraiserResultListing do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"created",
    :"updated",
    :"label_user_creator",
    :"description",
    :"attachment"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"label_user_creator" => LabelUser | nil,
    :"description" => String.t | nil,
    :"attachment" => [AttachmentMonetaryAccountPayment] | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.NoteAttachmentBunqMeFundraiserResultListing do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"label_user_creator", :struct, Bunq.Model.LabelUser, options)
    |> deserialize(:"attachment", :list, Bunq.Model.AttachmentMonetaryAccountPayment, options)
  end
end

