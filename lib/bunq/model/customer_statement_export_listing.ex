# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.CustomerStatementExportListing do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"created",
    :"updated",
    :"date_start",
    :"date_end",
    :"status",
    :"statement_number",
    :"statement_format",
    :"regional_format",
    :"alias_monetary_account"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"date_start" => String.t | nil,
    :"date_end" => String.t | nil,
    :"status" => String.t | nil,
    :"statement_number" => integer() | nil,
    :"statement_format" => String.t | nil,
    :"regional_format" => String.t | nil,
    :"alias_monetary_account" => LabelMonetaryAccount | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.CustomerStatementExportListing do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"alias_monetary_account", :struct, Bunq.Model.LabelMonetaryAccount, options)
  end
end

