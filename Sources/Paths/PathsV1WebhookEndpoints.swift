// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var webhookEndpoints: WebhookEndpoints {
        WebhookEndpoints(path: "/v1/webhook_endpoints")
    }

    public struct WebhookEndpoints {
        /// Path: `/v1/webhook_endpoints`
        public let path: String

        /// <p>Returns a list of your webhook endpoints.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetWebhookEndpoints")
        }

        /// NotificationWebhookEndpointList
        public struct GetResponse: Decodable {
            public var data: [StripeKit.WebhookEndpoint]
            /// True if this list has another page of items after this one that can be fetched.
            public var hasMore: Bool
            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public var object: Object
            /// The URL where this list can be accessed.
            public var url: String

            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public enum Object: String, Codable, CaseIterable {
                case list
            }

            public init(data: [StripeKit.WebhookEndpoint], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.WebhookEndpoint].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var endingBefore: String?
            public var expand: [String]?
            public var limit: Int?
            public var startingAfter: String?

            public init(endingBefore: String? = nil, expand: [String]? = nil, limit: Int? = nil, startingAfter: String? = nil) {
                self.endingBefore = endingBefore
                self.expand = expand
                self.limit = limit
                self.startingAfter = startingAfter
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(limit, forKey: "limit")
                encoder.encode(startingAfter, forKey: "starting_after")
                return encoder.items
            }
        }

        /// <p>A webhook endpoint must have a <code>url</code> and a list of <code>enabled_events</code>. You may optionally specify the Boolean <code>connect</code> parameter. If set to true, then a Connect webhook endpoint that notifies the specified <code>url</code> about events from all connected accounts is created; otherwise an account webhook endpoint that notifies the specified <code>url</code> only about events from your account is created. You can also create webhook endpoints in the <a href="https://dashboard.stripe.com/account/webhooks">webhooks settings</a> section of the Dashboard.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.WebhookEndpoint> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostWebhookEndpoints")
        }

        public struct PostRequest: Encodable {
            /// Events sent to this endpoint will be generated with this Stripe Version instead of your account's default Stripe Version.
            public var apiVersion: APIVersion?
            /// Whether this endpoint should receive events from connected accounts (`true`), or from your account (`false`). Defaults to `false`.
            public var isConnect: Bool?
            /// An optional description of what the webhook is used for.
            public var description: String?
            /// The list of events to enable for this endpoint. You may specify `['*']` to enable all events, except those that require explicit selection.
            public var enabledEvents: [EnabledEvent]
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?
            /// The URL of the webhook endpoint.
            public var url: String

            /// Events sent to this endpoint will be generated with this Stripe Version instead of your account's default Stripe Version.
            public enum APIVersion: String, Codable, CaseIterable {
                case _20110101 = "2011-01-01"
                case _20110621 = "2011-06-21"
                case _20110628 = "2011-06-28"
                case _20110801 = "2011-08-01"
                case _20110915 = "2011-09-15"
                case _20111117 = "2011-11-17"
                case _20120223 = "2012-02-23"
                case _20120325 = "2012-03-25"
                case _20120618 = "2012-06-18"
                case _20120628 = "2012-06-28"
                case _20120709 = "2012-07-09"
                case _20120924 = "2012-09-24"
                case _20121026 = "2012-10-26"
                case _20121107 = "2012-11-07"
                case _20130211 = "2013-02-11"
                case _20130213 = "2013-02-13"
                case _20130705 = "2013-07-05"
                case _20130812 = "2013-08-12"
                case _20130813 = "2013-08-13"
                case _20131029 = "2013-10-29"
                case _20131203 = "2013-12-03"
                case _20140131 = "2014-01-31"
                case _20140313 = "2014-03-13"
                case _20140328 = "2014-03-28"
                case _20140519 = "2014-05-19"
                case _20140613 = "2014-06-13"
                case _20140617 = "2014-06-17"
                case _20140722 = "2014-07-22"
                case _20140726 = "2014-07-26"
                case _20140804 = "2014-08-04"
                case _20140820 = "2014-08-20"
                case _20140908 = "2014-09-08"
                case _20141007 = "2014-10-07"
                case _20141105 = "2014-11-05"
                case _20141120 = "2014-11-20"
                case _20141208 = "2014-12-08"
                case _20141217 = "2014-12-17"
                case _20141222 = "2014-12-22"
                case _20150111 = "2015-01-11"
                case _20150126 = "2015-01-26"
                case _20150210 = "2015-02-10"
                case _20150216 = "2015-02-16"
                case _20150218 = "2015-02-18"
                case _20150324 = "2015-03-24"
                case _20150407 = "2015-04-07"
                case _20150615 = "2015-06-15"
                case _20150707 = "2015-07-07"
                case _20150713 = "2015-07-13"
                case _20150728 = "2015-07-28"
                case _20150807 = "2015-08-07"
                case _20150819 = "2015-08-19"
                case _20150903 = "2015-09-03"
                case _20150908 = "2015-09-08"
                case _20150923 = "2015-09-23"
                case _20151001 = "2015-10-01"
                case _20151012 = "2015-10-12"
                case _20151016 = "2015-10-16"
                case _20160203 = "2016-02-03"
                case _20160219 = "2016-02-19"
                case _20160222 = "2016-02-22"
                case _20160223 = "2016-02-23"
                case _20160229 = "2016-02-29"
                case _20160307 = "2016-03-07"
                case _20160615 = "2016-06-15"
                case _20160706 = "2016-07-06"
                case _20161019 = "2016-10-19"
                case _20170127 = "2017-01-27"
                case _20170214 = "2017-02-14"
                case _20170406 = "2017-04-06"
                case _20170525 = "2017-05-25"
                case _20170605 = "2017-06-05"
                case _20170815 = "2017-08-15"
                case _20171214 = "2017-12-14"
                case _20180123 = "2018-01-23"
                case _20180205 = "2018-02-05"
                case _20180206 = "2018-02-06"
                case _20180228 = "2018-02-28"
                case _20180521 = "2018-05-21"
                case _20180727 = "2018-07-27"
                case _20180823 = "2018-08-23"
                case _20180906 = "2018-09-06"
                case _20180924 = "2018-09-24"
                case _20181031 = "2018-10-31"
                case _20181108 = "2018-11-08"
                case _20190211 = "2019-02-11"
                case _20190219 = "2019-02-19"
                case _20190314 = "2019-03-14"
                case _20190516 = "2019-05-16"
                case _20190814 = "2019-08-14"
                case _20190909 = "2019-09-09"
                case _20191008 = "2019-10-08"
                case _20191017 = "2019-10-17"
                case _20191105 = "2019-11-05"
                case _20191203 = "2019-12-03"
                case _20200302 = "2020-03-02"
                case _20200827 = "2020-08-27"
                case _20220801 = "2022-08-01"
            }

            public enum EnabledEvent: String, Codable, CaseIterable {
                case asterisk = "*"
                case accountApplicationAuthorized = "account.application.authorized"
                case accountApplicationDeauthorized = "account.application.deauthorized"
                case accountExternalAccountCreated = "account.external_account.created"
                case accountExternalAccountDeleted = "account.external_account.deleted"
                case accountExternalAccountUpdated = "account.external_account.updated"
                case accountUpdated = "account.updated"
                case applicationFeeCreated = "application_fee.created"
                case applicationFeeRefundUpdated = "application_fee.refund.updated"
                case applicationFeeRefunded = "application_fee.refunded"
                case balanceAvailable = "balance.available"
                case billingPortalConfigurationCreated = "billing_portal.configuration.created"
                case billingPortalConfigurationUpdated = "billing_portal.configuration.updated"
                case billingPortalSessionCreated = "billing_portal.session.created"
                case capabilityUpdated = "capability.updated"
                case cashBalanceFundsAvailable = "cash_balance.funds_available"
                case chargeCaptured = "charge.captured"
                case chargeDisputeClosed = "charge.dispute.closed"
                case chargeDisputeCreated = "charge.dispute.created"
                case chargeDisputeFundsReinstated = "charge.dispute.funds_reinstated"
                case chargeDisputeFundsWithdrawn = "charge.dispute.funds_withdrawn"
                case chargeDisputeUpdated = "charge.dispute.updated"
                case chargeExpired = "charge.expired"
                case chargeFailed = "charge.failed"
                case chargePending = "charge.pending"
                case chargeRefundUpdated = "charge.refund.updated"
                case chargeRefunded = "charge.refunded"
                case chargeSucceeded = "charge.succeeded"
                case chargeUpdated = "charge.updated"
                case checkoutSessionAsyncPaymentFailed = "checkout.session.async_payment_failed"
                case checkoutSessionAsyncPaymentSucceeded = "checkout.session.async_payment_succeeded"
                case checkoutSessionCompleted = "checkout.session.completed"
                case checkoutSessionExpired = "checkout.session.expired"
                case couponCreated = "coupon.created"
                case couponDeleted = "coupon.deleted"
                case couponUpdated = "coupon.updated"
                case creditNoteCreated = "credit_note.created"
                case creditNoteUpdated = "credit_note.updated"
                case creditNoteVoided = "credit_note.voided"
                case customerCreated = "customer.created"
                case customerDeleted = "customer.deleted"
                case customerDiscountCreated = "customer.discount.created"
                case customerDiscountDeleted = "customer.discount.deleted"
                case customerDiscountUpdated = "customer.discount.updated"
                case customerSourceCreated = "customer.source.created"
                case customerSourceDeleted = "customer.source.deleted"
                case customerSourceExpiring = "customer.source.expiring"
                case customerSourceUpdated = "customer.source.updated"
                case customerSubscriptionCreated = "customer.subscription.created"
                case customerSubscriptionDeleted = "customer.subscription.deleted"
                case customerSubscriptionPendingUpdateApplied = "customer.subscription.pending_update_applied"
                case customerSubscriptionPendingUpdateExpired = "customer.subscription.pending_update_expired"
                case customerSubscriptionTrialWillEnd = "customer.subscription.trial_will_end"
                case customerSubscriptionUpdated = "customer.subscription.updated"
                case customerTaxIDCreated = "customer.tax_id.created"
                case customerTaxIDDeleted = "customer.tax_id.deleted"
                case customerTaxIDUpdated = "customer.tax_id.updated"
                case customerUpdated = "customer.updated"
                case fileCreated = "file.created"
                case financialConnectionsAccountCreated = "financial_connections.account.created"
                case financialConnectionsAccountDeactivated = "financial_connections.account.deactivated"
                case financialConnectionsAccountDisconnected = "financial_connections.account.disconnected"
                case financialConnectionsAccountReactivated = "financial_connections.account.reactivated"
                case financialConnectionsAccountRefreshedBalance = "financial_connections.account.refreshed_balance"
                case identityVerificationSessionCanceled = "identity.verification_session.canceled"
                case identityVerificationSessionCreated = "identity.verification_session.created"
                case identityVerificationSessionProcessing = "identity.verification_session.processing"
                case identityVerificationSessionRedacted = "identity.verification_session.redacted"
                case identityVerificationSessionRequiresInput = "identity.verification_session.requires_input"
                case identityVerificationSessionVerified = "identity.verification_session.verified"
                case invoiceCreated = "invoice.created"
                case invoiceDeleted = "invoice.deleted"
                case invoiceFinalizationFailed = "invoice.finalization_failed"
                case invoiceFinalized = "invoice.finalized"
                case invoiceMarkedUncollectible = "invoice.marked_uncollectible"
                case invoicePaid = "invoice.paid"
                case invoicePaymentActionRequired = "invoice.payment_action_required"
                case invoicePaymentFailed = "invoice.payment_failed"
                case invoicePaymentSucceeded = "invoice.payment_succeeded"
                case invoiceSent = "invoice.sent"
                case invoiceUpcoming = "invoice.upcoming"
                case invoiceUpdated = "invoice.updated"
                case invoiceVoided = "invoice.voided"
                case invoiceitemCreated = "invoiceitem.created"
                case invoiceitemDeleted = "invoiceitem.deleted"
                case invoiceitemUpdated = "invoiceitem.updated"
                case issuingAuthorizationCreated = "issuing_authorization.created"
                case issuingAuthorizationRequest = "issuing_authorization.request"
                case issuingAuthorizationUpdated = "issuing_authorization.updated"
                case issuingCardCreated = "issuing_card.created"
                case issuingCardUpdated = "issuing_card.updated"
                case issuingCardholderCreated = "issuing_cardholder.created"
                case issuingCardholderUpdated = "issuing_cardholder.updated"
                case issuingDisputeClosed = "issuing_dispute.closed"
                case issuingDisputeCreated = "issuing_dispute.created"
                case issuingDisputeFundsReinstated = "issuing_dispute.funds_reinstated"
                case issuingDisputeSubmitted = "issuing_dispute.submitted"
                case issuingDisputeUpdated = "issuing_dispute.updated"
                case issuingTransactionCreated = "issuing_transaction.created"
                case issuingTransactionUpdated = "issuing_transaction.updated"
                case mandateUpdated = "mandate.updated"
                case orderCreated = "order.created"
                case paymentIntentAmountCapturableUpdated = "payment_intent.amount_capturable_updated"
                case paymentIntentCanceled = "payment_intent.canceled"
                case paymentIntentCreated = "payment_intent.created"
                case paymentIntentPartiallyFunded = "payment_intent.partially_funded"
                case paymentIntentPaymentFailed = "payment_intent.payment_failed"
                case paymentIntentProcessing = "payment_intent.processing"
                case paymentIntentRequiresAction = "payment_intent.requires_action"
                case paymentIntentSucceeded = "payment_intent.succeeded"
                case paymentLinkCreated = "payment_link.created"
                case paymentLinkUpdated = "payment_link.updated"
                case paymentMethodAttached = "payment_method.attached"
                case paymentMethodAutomaticallyUpdated = "payment_method.automatically_updated"
                case paymentMethodDetached = "payment_method.detached"
                case paymentMethodUpdated = "payment_method.updated"
                case payoutCanceled = "payout.canceled"
                case payoutCreated = "payout.created"
                case payoutFailed = "payout.failed"
                case payoutPaid = "payout.paid"
                case payoutUpdated = "payout.updated"
                case personCreated = "person.created"
                case personDeleted = "person.deleted"
                case personUpdated = "person.updated"
                case planCreated = "plan.created"
                case planDeleted = "plan.deleted"
                case planUpdated = "plan.updated"
                case priceCreated = "price.created"
                case priceDeleted = "price.deleted"
                case priceUpdated = "price.updated"
                case productCreated = "product.created"
                case productDeleted = "product.deleted"
                case productUpdated = "product.updated"
                case promotionCodeCreated = "promotion_code.created"
                case promotionCodeUpdated = "promotion_code.updated"
                case quoteAccepted = "quote.accepted"
                case quoteCanceled = "quote.canceled"
                case quoteCreated = "quote.created"
                case quoteFinalized = "quote.finalized"
                case radarEarlyFraudWarningCreated = "radar.early_fraud_warning.created"
                case radarEarlyFraudWarningUpdated = "radar.early_fraud_warning.updated"
                case recipientCreated = "recipient.created"
                case recipientDeleted = "recipient.deleted"
                case recipientUpdated = "recipient.updated"
                case reportingReportRunFailed = "reporting.report_run.failed"
                case reportingReportRunSucceeded = "reporting.report_run.succeeded"
                case reportingReportTypeUpdated = "reporting.report_type.updated"
                case reviewClosed = "review.closed"
                case reviewOpened = "review.opened"
                case setupIntentCanceled = "setup_intent.canceled"
                case setupIntentCreated = "setup_intent.created"
                case setupIntentRequiresAction = "setup_intent.requires_action"
                case setupIntentSetupFailed = "setup_intent.setup_failed"
                case setupIntentSucceeded = "setup_intent.succeeded"
                case sigmaScheduledQueryRunCreated = "sigma.scheduled_query_run.created"
                case skuCreated = "sku.created"
                case skuDeleted = "sku.deleted"
                case skuUpdated = "sku.updated"
                case sourceCanceled = "source.canceled"
                case sourceChargeable = "source.chargeable"
                case sourceFailed = "source.failed"
                case sourceMandateNotification = "source.mandate_notification"
                case sourceRefundAttributesRequired = "source.refund_attributes_required"
                case sourceTransactionCreated = "source.transaction.created"
                case sourceTransactionUpdated = "source.transaction.updated"
                case subscriptionScheduleAborted = "subscription_schedule.aborted"
                case subscriptionScheduleCanceled = "subscription_schedule.canceled"
                case subscriptionScheduleCompleted = "subscription_schedule.completed"
                case subscriptionScheduleCreated = "subscription_schedule.created"
                case subscriptionScheduleExpiring = "subscription_schedule.expiring"
                case subscriptionScheduleReleased = "subscription_schedule.released"
                case subscriptionScheduleUpdated = "subscription_schedule.updated"
                case taxRateCreated = "tax_rate.created"
                case taxRateUpdated = "tax_rate.updated"
                case terminalReaderActionFailed = "terminal.reader.action_failed"
                case terminalReaderActionSucceeded = "terminal.reader.action_succeeded"
                case testHelpersTestClockAdvancing = "test_helpers.test_clock.advancing"
                case testHelpersTestClockCreated = "test_helpers.test_clock.created"
                case testHelpersTestClockDeleted = "test_helpers.test_clock.deleted"
                case testHelpersTestClockInternalFailure = "test_helpers.test_clock.internal_failure"
                case testHelpersTestClockReady = "test_helpers.test_clock.ready"
                case topupCanceled = "topup.canceled"
                case topupCreated = "topup.created"
                case topupFailed = "topup.failed"
                case topupReversed = "topup.reversed"
                case topupSucceeded = "topup.succeeded"
                case transferCreated = "transfer.created"
                case transferReversed = "transfer.reversed"
                case transferUpdated = "transfer.updated"
                case treasuryCreditReversalCreated = "treasury.credit_reversal.created"
                case treasuryCreditReversalPosted = "treasury.credit_reversal.posted"
                case treasuryDebitReversalCompleted = "treasury.debit_reversal.completed"
                case treasuryDebitReversalCreated = "treasury.debit_reversal.created"
                case treasuryDebitReversalInitialCreditGranted = "treasury.debit_reversal.initial_credit_granted"
                case treasuryFinancialAccountClosed = "treasury.financial_account.closed"
                case treasuryFinancialAccountCreated = "treasury.financial_account.created"
                case treasuryFinancialAccountFeaturesStatusUpdated = "treasury.financial_account.features_status_updated"
                case treasuryInboundTransferCanceled = "treasury.inbound_transfer.canceled"
                case treasuryInboundTransferCreated = "treasury.inbound_transfer.created"
                case treasuryInboundTransferFailed = "treasury.inbound_transfer.failed"
                case treasuryInboundTransferSucceeded = "treasury.inbound_transfer.succeeded"
                case treasuryOutboundPaymentCanceled = "treasury.outbound_payment.canceled"
                case treasuryOutboundPaymentCreated = "treasury.outbound_payment.created"
                case treasuryOutboundPaymentExpectedArrivalDateUpdated = "treasury.outbound_payment.expected_arrival_date_updated"
                case treasuryOutboundPaymentFailed = "treasury.outbound_payment.failed"
                case treasuryOutboundPaymentPosted = "treasury.outbound_payment.posted"
                case treasuryOutboundPaymentReturned = "treasury.outbound_payment.returned"
                case treasuryOutboundTransferCanceled = "treasury.outbound_transfer.canceled"
                case treasuryOutboundTransferCreated = "treasury.outbound_transfer.created"
                case treasuryOutboundTransferExpectedArrivalDateUpdated = "treasury.outbound_transfer.expected_arrival_date_updated"
                case treasuryOutboundTransferFailed = "treasury.outbound_transfer.failed"
                case treasuryOutboundTransferPosted = "treasury.outbound_transfer.posted"
                case treasuryOutboundTransferReturned = "treasury.outbound_transfer.returned"
                case treasuryReceivedCreditCreated = "treasury.received_credit.created"
                case treasuryReceivedCreditFailed = "treasury.received_credit.failed"
                case treasuryReceivedCreditSucceeded = "treasury.received_credit.succeeded"
                case treasuryReceivedDebitCreated = "treasury.received_debit.created"
            }

            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public struct Metadata: Encodable {
                public var stringString: [String: String]?
                public var object: Object?

                public enum Object: String, Codable, CaseIterable {
                    case empty = ""
                }

                public init(stringString: [String: String]? = nil, object: Object? = nil) {
                    self.stringString = stringString
                    self.object = object
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(stringString, forKey: "stringString")
                    encoder.encode(object, forKey: "object")
                    return encoder.items
                }
            }

            public init(apiVersion: APIVersion? = nil, isConnect: Bool? = nil, description: String? = nil, enabledEvents: [EnabledEvent], expand: [String]? = nil, metadata: Metadata? = nil, url: String) {
                self.apiVersion = apiVersion
                self.isConnect = isConnect
                self.description = description
                self.enabledEvents = enabledEvents
                self.expand = expand
                self.metadata = metadata
                self.url = url
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(apiVersion, forKey: "api_version")
                encoder.encode(isConnect, forKey: "connect")
                encoder.encode(description, forKey: "description")
                encoder.encode(enabledEvents, forKey: "enabled_events")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(url, forKey: "url")
                return encoder.items
            }
        }
    }
}
