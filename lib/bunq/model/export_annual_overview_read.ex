# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.ExportAnnualOverviewRead do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"created",
    :"updated",
    :"year",
    :"alias_user"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"year" => integer() | nil,
    :"alias_user" => LabelUser | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.ExportAnnualOverviewRead do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"alias_user", :struct, Bunq.Model.LabelUser, options)
  end
end

