# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.ScheduleInstanceListing do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"state",
    :"time_start",
    :"time_end",
    :"error_message",
    :"scheduled_object",
    :"result_object",
    :"request_reference_split_the_bill"
  ]

  @type t :: %__MODULE__{
    :"state" => String.t | nil,
    :"time_start" => String.t | nil,
    :"time_end" => String.t | nil,
    :"error_message" => [List] | nil,
    :"scheduled_object" => ScheduleAnchorObject | nil,
    :"result_object" => ScheduleInstanceAnchorObject | nil,
    :"request_reference_split_the_bill" => [RequestInquiryReference] | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.ScheduleInstanceListing do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"scheduled_object", :struct, Bunq.Model.ScheduleAnchorObject, options)
    |> deserialize(:"result_object", :struct, Bunq.Model.ScheduleInstanceAnchorObject, options)
    |> deserialize(:"request_reference_split_the_bill", :list, Bunq.Model.RequestInquiryReference, options)
  end
end
