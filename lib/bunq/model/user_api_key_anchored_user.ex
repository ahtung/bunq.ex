# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.UserApiKeyAnchoredUser do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"UserPerson",
    :"UserCompany",
    :"UserPaymentServiceProvider"
  ]

  @type t :: %__MODULE__{
    :"UserPerson" => UserPerson | nil,
    :"UserCompany" => UserCompany | nil,
    :"UserPaymentServiceProvider" => UserPaymentServiceProvider | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.UserApiKeyAnchoredUser do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"UserPerson", :struct, Bunq.Model.UserPerson, options)
    |> deserialize(:"UserCompany", :struct, Bunq.Model.UserCompany, options)
    |> deserialize(:"UserPaymentServiceProvider", :struct, Bunq.Model.UserPaymentServiceProvider, options)
  end
end
