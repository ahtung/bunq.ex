# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.BillingContractSubscription do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"subscription_type",
    :"id",
    :"created",
    :"updated",
    :"contract_date_start",
    :"contract_date_end",
    :"contract_version",
    :"subscription_type_downgrade",
    :"status",
    :"sub_status"
  ]

  @type t :: %__MODULE__{
    :"subscription_type" => String.t | nil,
    :"id" => integer() | nil,
    :"created" => String.t | nil,
    :"updated" => String.t | nil,
    :"contract_date_start" => String.t | nil,
    :"contract_date_end" => String.t | nil,
    :"contract_version" => integer() | nil,
    :"subscription_type_downgrade" => String.t | nil,
    :"status" => String.t | nil,
    :"sub_status" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.BillingContractSubscription do
  def decode(value, _options) do
    value
  end
end
