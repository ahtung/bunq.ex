# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.SchedulePaymentRead do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"payment",
    :"schedule"
  ]

  @type t :: %__MODULE__{
    :"payment" => SchedulePaymentEntry | nil,
    :"schedule" => Schedule | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.SchedulePaymentRead do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"payment", :struct, Bunq.Model.SchedulePaymentEntry, options)
    |> deserialize(:"schedule", :struct, Bunq.Model.Schedule, options)
  end
end

