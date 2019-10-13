# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.ShareInviteMonetaryAccountInquiry do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"counter_user_alias",
    :"draft_share_invite_bank_id",
    :"share_detail",
    :"status",
    :"share_type",
    :"start_date",
    :"end_date"
  ]

  @type t :: %__MODULE__{
    :"counter_user_alias" => Pointer,
    :"draft_share_invite_bank_id" => integer() | nil,
    :"share_detail" => ShareDetail,
    :"status" => String.t,
    :"share_type" => String.t | nil,
    :"start_date" => String.t | nil,
    :"end_date" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.ShareInviteMonetaryAccountInquiry do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"counter_user_alias", :struct, Bunq.Model.Pointer, options)
    |> deserialize(:"share_detail", :struct, Bunq.Model.ShareDetail, options)
  end
end
