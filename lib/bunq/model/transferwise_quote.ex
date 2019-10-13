# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.TransferwiseQuote do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"currency_source",
    :"currency_target",
    :"amount_source",
    :"amount_target",
    :"id",
    :"created",
    :"updated",
    :"time_expiry",
    :"quote_id",
    :"amount_fee",
    :"rate",
    :"time_delivery_estimate"
  ]

  @type t :: %__MODULE__{
    :"currency_source" => String.t,
    :"currency_target" => String.t,
    :"amount_source" => Amount | nil,
    :"amount_target" => Amount | nil,
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"time_expiry" => String.t | nil,
    :"quote_id" => String.t | nil,
    :"amount_fee" => Amount | nil,
    :"rate" => String.t | nil,
    :"time_delivery_estimate" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.TransferwiseQuote do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"amount_source", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"amount_target", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"amount_fee", :struct, Bunq.Model.Amount, options)
  end
end
