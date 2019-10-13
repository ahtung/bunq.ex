# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Bunq.Model.EventObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"BunqMeTab",
    :"BunqMeTabResultResponse",
    :"BunqMeFundraiserResult",
    :"Card",
    :"CardDebit",
    :"DraftPayment",
    :"FeatureAnnouncement",
    :"IdealMerchantTransaction",
    :"Invoice",
    :"ScheduledPayment",
    :"ScheduledPaymentBatch",
    :"ScheduledInstance",
    :"MasterCardAction",
    :"BankSwitchServiceNetherlandsIncomingPayment",
    :"Payment",
    :"PaymentBatch",
    :"RequestInquiryBatch",
    :"RequestInquiry",
    :"RequestResponse",
    :"RewardRecipient",
    :"RewardSender",
    :"ShareInviteBankInquiryBatch",
    :"ShareInviteBankInquiry",
    :"ShareInviteBankResponse",
    :"SofortMerchantTransaction",
    :"TabResultInquiry",
    :"TabResultResponse",
    :"TransferwiseTransfer"
  ]

  @type t :: %__MODULE__{
    :"BunqMeTab" => BunqMeTab | nil,
    :"BunqMeTabResultResponse" => BunqMeTabResultResponse | nil,
    :"BunqMeFundraiserResult" => BunqMeFundraiserResult | nil,
    :"Card" => Card | nil,
    :"CardDebit" => CardDebit | nil,
    :"DraftPayment" => DraftPayment | nil,
    :"FeatureAnnouncement" => FeatureAnnouncement | nil,
    :"IdealMerchantTransaction" => IdealMerchantTransaction | nil,
    :"Invoice" => Invoice | nil,
    :"ScheduledPayment" => SchedulePayment | nil,
    :"ScheduledPaymentBatch" => SchedulePaymentBatch | nil,
    :"ScheduledInstance" => ScheduleInstance | nil,
    :"MasterCardAction" => MasterCardAction | nil,
    :"BankSwitchServiceNetherlandsIncomingPayment" => BankSwitchServiceNetherlandsIncomingPayment | nil,
    :"Payment" => Payment | nil,
    :"PaymentBatch" => PaymentBatch | nil,
    :"RequestInquiryBatch" => RequestInquiryBatch | nil,
    :"RequestInquiry" => RequestInquiry | nil,
    :"RequestResponse" => RequestResponse | nil,
    :"RewardRecipient" => RewardRecipient | nil,
    :"RewardSender" => RewardSender | nil,
    :"ShareInviteBankInquiryBatch" => ShareInviteBankInquiryBatch | nil,
    :"ShareInviteBankInquiry" => ShareInviteBankInquiry | nil,
    :"ShareInviteBankResponse" => ShareInviteBankResponse | nil,
    :"SofortMerchantTransaction" => SofortMerchantTransaction | nil,
    :"TabResultInquiry" => TabResultInquiry | nil,
    :"TabResultResponse" => TabResultResponse | nil,
    :"TransferwiseTransfer" => TransferwiseTransfer | nil
  }
end

defimpl Poison.Decoder, for: Bunq.Model.EventObject do
  import Bunq.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"BunqMeTab", :struct, Bunq.Model.BunqMeTab, options)
    |> deserialize(:"BunqMeTabResultResponse", :struct, Bunq.Model.BunqMeTabResultResponse, options)
    |> deserialize(:"BunqMeFundraiserResult", :struct, Bunq.Model.BunqMeFundraiserResult, options)
    |> deserialize(:"Card", :struct, Bunq.Model.Card, options)
    |> deserialize(:"CardDebit", :struct, Bunq.Model.CardDebit, options)
    |> deserialize(:"DraftPayment", :struct, Bunq.Model.DraftPayment, options)
    |> deserialize(:"FeatureAnnouncement", :struct, Bunq.Model.FeatureAnnouncement, options)
    |> deserialize(:"IdealMerchantTransaction", :struct, Bunq.Model.IdealMerchantTransaction, options)
    |> deserialize(:"Invoice", :struct, Bunq.Model.Invoice, options)
    |> deserialize(:"ScheduledPayment", :struct, Bunq.Model.SchedulePayment, options)
    |> deserialize(:"ScheduledPaymentBatch", :struct, Bunq.Model.SchedulePaymentBatch, options)
    |> deserialize(:"ScheduledInstance", :struct, Bunq.Model.ScheduleInstance, options)
    |> deserialize(:"MasterCardAction", :struct, Bunq.Model.MasterCardAction, options)
    |> deserialize(:"BankSwitchServiceNetherlandsIncomingPayment", :struct, Bunq.Model.BankSwitchServiceNetherlandsIncomingPayment, options)
    |> deserialize(:"Payment", :struct, Bunq.Model.Payment, options)
    |> deserialize(:"PaymentBatch", :struct, Bunq.Model.PaymentBatch, options)
    |> deserialize(:"RequestInquiryBatch", :struct, Bunq.Model.RequestInquiryBatch, options)
    |> deserialize(:"RequestInquiry", :struct, Bunq.Model.RequestInquiry, options)
    |> deserialize(:"RequestResponse", :struct, Bunq.Model.RequestResponse, options)
    |> deserialize(:"RewardRecipient", :struct, Bunq.Model.RewardRecipient, options)
    |> deserialize(:"RewardSender", :struct, Bunq.Model.RewardSender, options)
    |> deserialize(:"ShareInviteBankInquiryBatch", :struct, Bunq.Model.ShareInviteBankInquiryBatch, options)
    |> deserialize(:"ShareInviteBankInquiry", :struct, Bunq.Model.ShareInviteBankInquiry, options)
    |> deserialize(:"ShareInviteBankResponse", :struct, Bunq.Model.ShareInviteBankResponse, options)
    |> deserialize(:"SofortMerchantTransaction", :struct, Bunq.Model.SofortMerchantTransaction, options)
    |> deserialize(:"TabResultInquiry", :struct, Bunq.Model.TabResultInquiry, options)
    |> deserialize(:"TabResultResponse", :struct, Bunq.Model.TabResultResponse, options)
    |> deserialize(:"TransferwiseTransfer", :struct, Bunq.Model.TransferwiseTransfer, options)
  end
end
