# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.SchedulePaymentBatchCreate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Id"
  ]

  @type t :: %__MODULE__{
    :"Id" => BunqId | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.SchedulePaymentBatchCreate do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Id", :struct, Bunq.Model.BunqId, options)
  end
end

