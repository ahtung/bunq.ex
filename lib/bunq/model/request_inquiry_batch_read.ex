# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.RequestInquiryBatchRead do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"request_inquiries",
    :"total_amount_inquired",
    :"reference_split_the_bill"
  ]

  @type t :: %__MODULE__{
    :"request_inquiries" => [RequestInquiry] | nil,
    :"total_amount_inquired" => Amount | nil,
    :"reference_split_the_bill" => RequestReferenceSplitTheBillAnchorObject | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.RequestInquiryBatchRead do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"request_inquiries", :list, Bunq.Model.RequestInquiry, options)
    |> deserialize(:"total_amount_inquired", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"reference_split_the_bill", :struct, Bunq.Model.RequestReferenceSplitTheBillAnchorObject, options)
  end
end
