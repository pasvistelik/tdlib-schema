module TD::Types
  # Describes a sponsored message.
  #
  # @attr message_id [Integer] Message identifier; unique for the chat to which the sponsored message belongs among
  #   both ordinary and sponsored messages.
  # @attr sponsor_chat_id [Integer] Chat identifier.
  # @attr link [TD::Types::InternalLinkType, nil] An internal link to be opened when the sponsored message is clicked;
  #   may be null.
  #   If null, the sponsor chat needs to be opened instead.
  # @attr content [TD::Types::MessageContent] Content of the message.
  #   Currently, can be only of the type messageText.
  class SponsoredMessage < Base
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :sponsor_chat_id, TD::Types::Coercible::Integer
    attribute :link, TD::Types::InternalLinkType.optional.default(nil)
    attribute :content, TD::Types::MessageContent
  end
end
