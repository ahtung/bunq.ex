# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.NoteTextBankSwitchServiceNetherlandsIncomingPaymentListing do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"created",
    :"updated",
    :"label_user_creator",
    :"content"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"label_user_creator" => LabelUser | nil,
    :"content" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.NoteTextBankSwitchServiceNetherlandsIncomingPaymentListing do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"label_user_creator", :struct, Bunq.Model.LabelUser, options)
  end
end

