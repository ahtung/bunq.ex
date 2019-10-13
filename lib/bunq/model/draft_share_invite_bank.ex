# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.DraftShareInviteBank do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"status",
    :"expiration",
    :"draft_share_settings"
  ]

  @type t :: %__MODULE__{
    :"status" => String.t | nil,
    :"expiration" => String.t,
    :"draft_share_settings" => DraftShareInviteEntry
  }
end

defimpl Poison.Decoder, for: Bunq.Model.DraftShareInviteBank do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"draft_share_settings", :struct, Bunq.Model.DraftShareInviteEntry, options)
  end
end
