# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.DraftShareInviteApiKeyRead do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"user_alias_created",
    :"status",
    :"sub_status",
    :"expiration",
    :"draft_share_url",
    :"api_key",
    :"id"
  ]

  @type t :: %__MODULE__{
    :"user_alias_created" => LabelUser | nil,
    :"status" => String.t | nil,
    :"sub_status" => String.t | nil,
    :"expiration" => String.t | nil,
    :"draft_share_url" => String.t | nil,
    :"api_key" => String.t | nil,
    :"id" => integer() | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.DraftShareInviteApiKeyRead do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"user_alias_created", :struct, Bunq.Model.LabelUser, options)
  end
end

