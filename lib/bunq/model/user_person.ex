# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.UserPerson do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"first_name",
    :"middle_name",
    :"last_name",
    :"public_nick_name",
    :"address_main",
    :"address_postal",
    :"avatar_uuid",
    :"tax_resident",
    :"document_type",
    :"document_number",
    :"document_country_of_issuance",
    :"document_front_attachment_id",
    :"document_back_attachment_id",
    :"date_of_birth",
    :"place_of_birth",
    :"country_of_birth",
    :"nationality",
    :"language",
    :"region",
    :"gender",
    :"status",
    :"sub_status",
    :"legal_guardian_alias",
    :"session_timeout",
    :"daily_limit_without_confirmation_login",
    :"notification_filters",
    :"display_name",
    :"id",
    :"created",
    :"updated",
    :"public_uuid",
    :"legal_name",
    :"alias",
    :"avatar",
    :"version_terms_of_service"
  ]

  @type t :: %__MODULE__{
    :"first_name" => String.t | nil,
    :"middle_name" => String.t | nil,
    :"last_name" => String.t | nil,
    :"public_nick_name" => String.t | nil,
    :"address_main" => Address | nil,
    :"address_postal" => Address | nil,
    :"avatar_uuid" => String.t,
    :"tax_resident" => [TaxResident] | nil,
    :"document_type" => String.t | nil,
    :"document_number" => String.t | nil,
    :"document_country_of_issuance" => String.t | nil,
    :"document_front_attachment_id" => integer(),
    :"document_back_attachment_id" => integer() | nil,
    :"date_of_birth" => String.t | nil,
    :"place_of_birth" => String.t | nil,
    :"country_of_birth" => String.t | nil,
    :"nationality" => String.t | nil,
    :"language" => String.t | nil,
    :"region" => String.t | nil,
    :"gender" => String.t | nil,
    :"status" => String.t | nil,
    :"sub_status" => String.t | nil,
    :"legal_guardian_alias" => Pointer,
    :"session_timeout" => integer() | nil,
    :"daily_limit_without_confirmation_login" => Amount | nil,
    :"notification_filters" => [NotificationFilter] | nil,
    :"display_name" => String.t | nil,
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"public_uuid" => String.t | nil,
    :"legal_name" => String.t | nil,
    :"alias" => [Pointer] | nil,
    :"avatar" => Avatar | nil,
    :"version_terms_of_service" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.UserPerson do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"address_main", :struct, Bunq.Model.Address, options)
    |> deserialize(:"address_postal", :struct, Bunq.Model.Address, options)
    |> deserialize(:"tax_resident", :list, Bunq.Model.TaxResident, options)
    |> deserialize(:"legal_guardian_alias", :struct, Bunq.Model.Pointer, options)
    |> deserialize(:"daily_limit_without_confirmation_login", :struct, Bunq.Model.Amount, options)
    |> deserialize(:"notification_filters", :list, Bunq.Model.NotificationFilter, options)
    |> deserialize(:"alias", :list, Bunq.Model.Pointer, options)
    |> deserialize(:"avatar", :struct, Bunq.Model.Avatar, options)
  end
end

