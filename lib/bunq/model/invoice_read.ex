# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.InvoiceRead do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"created",
    :"updated",
    :"invoice_date",
    :"invoice_number",
    :"status",
    :"group",
    :"total_vat_inclusive",
    :"total_vat_exclusive",
    :"total_vat",
    :"alias",
    :"address",
    :"counterparty_alias",
    :"counterparty_address",
    :"chamber_of_commerce_number",
    :"vat_number",
    :"request_reference_split_the_bill"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"invoice_date" => String.t | nil,
    :"invoice_number" => String.t | nil,
    :"status" => String.t | nil,
    :"group" => [InvoiceItemGroup] | nil,
    :"total_vat_inclusive" => Amount | nil,
    :"total_vat_exclusive" => Amount | nil,
    :"total_vat" => Amount | nil,
    :"alias" => LabelMonetaryAccount | nil,
    :"address" => Address | nil,
    :"counterparty_alias" => LabelMonetaryAccount | nil,
    :"counterparty_address" => Address | nil,
    :"chamber_of_commerce_number" => String.t | nil,
    :"vat_number" => String.t | nil,
    :"request_reference_split_the_bill" => [RequestInquiryReference] | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.InvoiceRead do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"group", :list, Bunq.Model.InvoiceItemGroup, options)
    |> deserialize(:"total_vat_inclusive", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"total_vat_exclusive", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"total_vat", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"alias", :struct, Bunq.Model.LabelMonetaryAccount, options)
    |> deserialize(:"address", :struct, Bunq.Model.Address, options)
    |> deserialize(:"counterparty_alias", :struct, Bunq.Model.LabelMonetaryAccount, options)
    |> deserialize(:"counterparty_address", :struct, Bunq.Model.Address, options)
    |> deserialize(:"request_reference_split_the_bill", :list, Bunq.Model.RequestInquiryReference, options)
  end
end

