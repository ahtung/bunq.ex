# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.WhitelistResult do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"monetary_account_paying_id",
    :"status",
    :"error_message",
    :"whitelist",
    :"object",
    :"request_reference_split_the_bill"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"monetary_account_paying_id" => integer() | nil,
    :"status" => String.t | nil,
    :"error_message" => [List] | nil,
    :"whitelist" => Map | nil,
    :"object" => WhitelistResultViewAnchoredObject | nil,
    :"request_reference_split_the_bill" => [RequestInquiryReference] | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.WhitelistResult do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"whitelist", :struct, Bunq.Model.Map, options)
    |> deserialize(:"object", :struct, Bunq.Model.WhitelistResultViewAnchoredObject, options)
    |> deserialize(:"request_reference_split_the_bill", :list, Bunq.Model.RequestInquiryReference, options)
  end
end

