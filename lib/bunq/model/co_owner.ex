# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.CoOwner do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"alias",
    :"status"
  ]

  @type t :: %__MODULE__{
    :"alias" => LabelUser | nil,
    :"status" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.CoOwner do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"alias", :struct, Bunq.Model.LabelUser, options)
  end
end

