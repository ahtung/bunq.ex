# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.SchedulePaymentBatch do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"payments",
    :"schedule"
  ]

  @type t :: %__MODULE__{
    :"payments" => [SchedulePaymentEntry] | nil,
    :"schedule" => Schedule | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.SchedulePaymentBatch do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"payments", :list, Bunq.Model.SchedulePaymentEntry, options)
    |> deserialize(:"schedule", :struct, Bunq.Model.Schedule, options)
  end
end
