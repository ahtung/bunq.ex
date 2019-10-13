# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.DraftShareInviteApiKey do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"status",
    :"sub_status",
    :"expiration"
  ]

  @type t :: %__MODULE__{
    :"status" => String.t | nil,
    :"sub_status" => String.t | nil,
    :"expiration" => String.t
  }
end

defimpl Poison.Decoder, for: Bunq.Model.DraftShareInviteApiKey do
  def decode(value, _options) do
    value
  end
end

