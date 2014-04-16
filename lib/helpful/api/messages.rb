module Helpful

  module Api

    # Messages in a conversation
    class Messages

      def initialize(client)
        @client = client
      end

      # Get a message the user has access to
      #
      # '/messages/:message_id' GET
      #
      # message_id - Identifier of the message
      def get(message_id, options = {})
        body = options.fetch(:query, {})
        body[:message_id] = message_id

        @client.get("/messages/#{message_id}", body, options)
      end

    end

  end

end
