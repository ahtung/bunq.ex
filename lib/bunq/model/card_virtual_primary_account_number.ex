# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.CardVirtualPrimaryAccountNumber do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"description",
    :"status",
    :"monetary_account_id",
    :"uuid",
    :"four_digit"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"description" => String.t | nil,
    :"status" => String.t | nil,
    :"monetary_account_id" => integer() | nil,
    :"uuid" => String.t | nil,
    :"four_digit" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.CardVirtualPrimaryAccountNumber do
  def decode(value, _options) do
    value
  end
end
