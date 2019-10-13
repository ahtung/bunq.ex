# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.UserPaymentServiceProvider do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"created",
    :"updated",
    :"certificate_distinguished_name",
    :"alias",
    :"avatar",
    :"status",
    :"sub_status",
    :"public_uuid",
    :"display_name",
    :"public_nick_name",
    :"language",
    :"region",
    :"session_timeout"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"certificate_distinguished_name" => String.t | nil,
    :"alias" => [Pointer] | nil,
    :"avatar" => Avatar | nil,
    :"status" => String.t | nil,
    :"sub_status" => String.t | nil,
    :"public_uuid" => String.t | nil,
    :"display_name" => String.t | nil,
    :"public_nick_name" => String.t | nil,
    :"language" => String.t | nil,
    :"region" => String.t | nil,
    :"session_timeout" => integer() | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.UserPaymentServiceProvider do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"alias", :list, Bunq.Model.Pointer, options)
    |> deserialize(:"avatar", :struct, Bunq.Model.Avatar, options)
  end
end
