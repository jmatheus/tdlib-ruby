module TD::Types
  class MessageSender < Base
    %w[
      chat
      user
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_sender/#{type}"
    end
  end
end
