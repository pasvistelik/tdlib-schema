module TD::Types
  # The message failed to be sent.
  #
  # @attr error_code [Integer] An error code; 0 if unknown.
  # @attr error_message [TD::Types::String] Error message.
  # @attr can_retry [Boolean] True, if the message can be re-sent.
  # @attr need_another_sender [Boolean] True, if the message can be re-sent only on behalf of a different sender.
  # @attr retry_after [Float] Time left before the message can be re-sent, in seconds.
  #   No update is sent when this field changes.
  class MessageSendingState::Failed < MessageSendingState
    attribute :error_code, TD::Types::Coercible::Integer
    attribute :error_message, TD::Types::String
    attribute :can_retry, TD::Types::Bool
    attribute :need_another_sender, TD::Types::Bool
    attribute :retry_after, TD::Types::Coercible::Float
  end
end
