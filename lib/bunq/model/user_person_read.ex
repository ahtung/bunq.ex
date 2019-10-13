# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.UserPersonRead do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"created",
    :"updated",
    :"public_uuid",
    :"first_name",
    :"middle_name",
    :"last_name",
    :"legal_name",
    :"display_name",
    :"public_nick_name",
    :"alias",
    :"tax_resident",
    :"document_type",
    :"document_number",
    :"document_country_of_issuance",
    :"address_main",
    :"address_postal",
    :"date_of_birth",
    :"place_of_birth",
    :"country_of_birth",
    :"nationality",
    :"language",
    :"region",
    :"gender",
    :"avatar",
    :"version_terms_of_service",
    :"status",
    :"sub_status",
    :"session_timeout",
    :"daily_limit_without_confirmation_login",
    :"notification_filters"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"public_uuid" => String.t | nil,
    :"first_name" => String.t | nil,
    :"middle_name" => String.t | nil,
    :"last_name" => String.t | nil,
    :"legal_name" => String.t | nil,
    :"display_name" => String.t | nil,
    :"public_nick_name" => String.t | nil,
    :"alias" => [Pointer] | nil,
    :"tax_resident" => [TaxResident] | nil,
    :"document_type" => String.t | nil,
    :"document_number" => String.t | nil,
    :"document_country_of_issuance" => String.t | nil,
    :"address_main" => Address | nil,
    :"address_postal" => Address | nil,
    :"date_of_birth" => String.t | nil,
    :"place_of_birth" => String.t | nil,
    :"country_of_birth" => String.t | nil,
    :"nationality" => String.t | nil,
    :"language" => String.t | nil,
    :"region" => String.t | nil,
    :"gender" => String.t | nil,
    :"avatar" => Avatar | nil,
    :"version_terms_of_service" => String.t | nil,
    :"status" => String.t | nil,
    :"sub_status" => String.t | nil,
    :"session_timeout" => integer() | nil,
    :"daily_limit_without_confirmation_login" => Amount | nil,
    :"notification_filters" => [NotificationFilter] | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.UserPersonRead do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"alias", :list, Bunq.Model.Pointer, options)
    |> deserialize(:"tax_resident", :list, Bunq.Model.TaxResident, options)
    |> deserialize(:"address_main", :struct, Bunq.Model.Address, options)
    |> deserialize(:"address_postal", :struct, Bunq.Model.Address, options)
    |> deserialize(:"avatar", :struct, Bunq.Model.Avatar, options)
    |> deserialize(:"daily_limit_without_confirmation_login", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"notification_filters", :list, Bunq.Model.NotificationFilter, options)
  end
end

