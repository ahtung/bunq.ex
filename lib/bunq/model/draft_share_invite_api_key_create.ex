# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.DraftShareInviteApiKeyCreate do
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

defimpl Poison.Decoder, for: Bunq.Model.DraftShareInviteApiKeyCreate do
  def decode(value, _options) do
    value
  end
end
