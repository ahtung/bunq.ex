# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.Schedule do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"time_start",
    :"time_end",
    :"recurrence_unit",
    :"recurrence_size",
    :"status",
    :"object"
  ]

  @type t :: %__MODULE__{
    :"time_start" => String.t | nil,
    :"time_end" => String.t | nil,
    :"recurrence_unit" => String.t | nil,
    :"recurrence_size" => integer() | nil,
    :"status" => String.t | nil,
    :"object" => ScheduleAnchorObject | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.Schedule do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"object", :struct, Bunq.Model.ScheduleAnchorObject, options)
  end
end
