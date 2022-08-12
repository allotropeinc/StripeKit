// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.WebhookEndpoints {
    public func webhookEndpoint(_ webhookEndpoint: String) -> WithWebhookEndpoint {
        WithWebhookEndpoint(path: "\(path)/\(webhookEndpoint)")
    }

    public struct WithWebhookEndpoint {
        /// Path: `/v1/webhook_endpoints/{webhook_endpoint}`
        public let path: String

        /// <p>Retrieves the webhook endpoint with the given ID.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.WebhookEndpoint> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetWebhookEndpointsWebhookEndpoint")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Updates the webhook endpoint. You may edit the <code>url</code>, the list of <code>enabled_events</code>, and the status of your endpoint.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.WebhookEndpoint> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostWebhookEndpointsWebhookEndpoint")
        }

        public struct PostRequest: Encodable {
            /// An optional description of what the webhook is used for.
            public var description: String?
            /// Disable the webhook endpoint if set to true.
            public var isDisabled: Bool?
            /// The list of events to enable for this endpoint. You may specify `['*']` to enable all events, except those that require explicit selection.
            public var enabledEvents: [EnabledEvent]?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?
            /// The URL of the webhook endpoint.
            public var url: String?

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

            public init(description: String? = nil, isDisabled: Bool? = nil, enabledEvents: [EnabledEvent]? = nil, expand: [String]? = nil, metadata: Metadata? = nil, url: String? = nil) {
                self.description = description
                self.isDisabled = isDisabled
                self.enabledEvents = enabledEvents
                self.expand = expand
                self.metadata = metadata
                self.url = url
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(description, forKey: "description")
                encoder.encode(isDisabled, forKey: "disabled")
                encoder.encode(enabledEvents, forKey: "enabled_events")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(url, forKey: "url")
                return encoder.items
            }
        }

        /// <p>You can also delete webhook endpoints via the <a href="https://dashboard.stripe.com/account/webhooks">webhook endpoint management</a> page of the Stripe dashboard.</p>
        public var delete: Request<StripeKit.DeletedWebhookEndpoint> {
            Request(method: "DELETE", url: path, id: "DeleteWebhookEndpointsWebhookEndpoint")
        }
    }
}