# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.InstallationCreate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Id",
    :"Token",
    :"ServerPublicKey"
  ]

  @type t :: %__MODULE__{
    :"Id" => BunqId | nil,
    :"Token" => InstallationToken | nil,
    :"ServerPublicKey" => InstallationServerPublicKey | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.InstallationCreate do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Id", :struct, Bunq.Model.BunqId, options)
    |> deserialize(:"Token", :struct, Bunq.Model.InstallationToken, options)
    |> deserialize(:"ServerPublicKey", :struct, Bunq.Model.InstallationServerPublicKey, options)
  end
end

