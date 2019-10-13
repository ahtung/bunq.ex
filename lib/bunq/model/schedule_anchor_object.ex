# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.ScheduleAnchorObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Payment",
    :"PaymentBatch"
  ]

  @type t :: %__MODULE__{
    :"Payment" => Payment | nil,
    :"PaymentBatch" => PaymentBatch | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.ScheduleAnchorObject do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Payment", :struct, Bunq.Model.Payment, options)
    |> deserialize(:"PaymentBatch", :struct, Bunq.Model.PaymentBatch, options)
  end
end

