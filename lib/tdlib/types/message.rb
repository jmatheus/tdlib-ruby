module TD::Types
  # Describes a message.
  #
  # @attr id [Integer] Message identifier, unique for the chat to which the message belongs.
  # @attr sender_user_id [Integer] Identifier of the user who sent the message; 0 if unknown.
  #   Currently, it is unknown for channel posts and for channel posts automatically forwarded to discussion group.
  # @attr chat_id [Integer] Chat identifier.
  # @attr sending_state [TD::Types::MessageSendingState, nil] Information about the sending state of the message; may
  #   be null.
  # @attr scheduling_state [TD::Types::MessageSchedulingState, nil] Information about the scheduling state of the
  #   message; may be null.
  # @attr is_outgoing [Boolean] True, if the message is outgoing.
  # @attr can_be_edited [Boolean] True, if the message can be edited.
  #   For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used
  #   with this message by the client.
  # @attr can_be_forwarded [Boolean] True, if the message can be forwarded.
  # @attr can_be_deleted_only_for_self [Boolean] True, if the message can be deleted only for the current user while
  #   other users will continue to see it.
  # @attr can_be_deleted_for_all_users [Boolean] True, if the message can be deleted for all users.
  # @attr is_channel_post [Boolean] True, if the message is a channel post.
  #   All messages to channels are channel posts, all other messages are not channel posts.
  # @attr contains_unread_mention [Boolean] True, if the message contains an unread mention for the current user.
  # @attr date [Integer] Point in time (Unix timestamp) when the message was sent.
  # @attr edit_date [Integer] Point in time (Unix timestamp) when the message was last edited.
  # @attr forward_info [TD::Types::MessageForwardInfo, nil] Information about the initial message sender; may be null.
  # @attr reply_to_message_id [Integer] If non-zero, the identifier of the message this message is replying to; can be
  #   the identifier of a deleted message.
  # @attr ttl [Integer] For self-destructing messages, the message's TTL (Time To Live), in seconds; 0 if none.
  #   TDLib will send {TD::Types::Update::DeleteMessages} or {TD::Types::Update::MessageContent} once the TTL expires.
  # @attr ttl_expires_in [Float] Time left before the message expires, in seconds.
  # @attr via_bot_user_id [Integer] If non-zero, the user identifier of the bot through which this message was sent.
  # @attr author_signature [String, nil] For channel posts, optional author signature.
  # @attr views [Integer] Number of times this message was viewed.
  # @attr media_album_id [Integer] Unique identifier of an album this message belongs to.
  #   Only photos and videos can be grouped together in albums.
  # @attr restriction_reason [String] If non-empty, contains a human-readable description of the reason why access to
  #   this message must be restricted.
  # @attr content [TD::Types::MessageContent] Content of the message.
  # @attr reply_markup [TD::Types::ReplyMarkup, nil] Reply markup for the message; may be null.
  class Message < Base
    attribute :id, TD::Types::Integer
    attribute :sender, TD::Types::MessageSender
    attribute :chat_id, TD::Types::Integer
    attribute :sending_state, TD::Types::MessageSendingState.optional.default(nil)
    attribute :scheduling_state, TD::Types::MessageSchedulingState.optional.default(nil)
    attribute :is_outgoing, TD::Types::Bool
    attribute :can_be_edited, TD::Types::Bool
    attribute :can_be_forwarded, TD::Types::Bool
    attribute :can_be_deleted_only_for_self, TD::Types::Bool
    attribute :can_be_deleted_for_all_users, TD::Types::Bool
    attribute :is_channel_post, TD::Types::Bool
    attribute :contains_unread_mention, TD::Types::Bool
    attribute :date, TD::Types::Integer
    attribute :edit_date, TD::Types::Integer
    attribute :forward_info, TD::Types::MessageForwardInfo.optional.default(nil)
    attribute :reply_to_message_id, TD::Types::Integer
    attribute :ttl, TD::Types::Integer
    attribute :ttl_expires_in, TD::Types::Float
    attribute :via_bot_user_id, TD::Types::Integer
    attribute :author_signature, TD::Types::String.optional.default(nil)
    attribute :media_album_id, TD::Types::Integer
    attribute :restriction_reason, TD::Types::String
    attribute :content, TD::Types::MessageContent
    attribute :reply_markup, TD::Types::ReplyMarkup.optional.default(nil)
  end
end
