module Helpful

  module Api

    # API to work with conversations
    class Conversations

      def initialize(client)
        @client = client
      end

      # List all conversations
      #
      # '/conversations' GET
      def list(options = {})
        body = options.has_key?(:query) ? options[:query] : {}

        response = @client.get("/conversations", body, options)

        return response
      end

      # Retrieve a conversation
      #
      # '/conversations/:id' GET
      #
      # id - ID of the conversation
      def get(id, options = {})
        body = options.has_key?(:query) ? options[:query] : {}
        body[:id] = id

        response = @client.get("/conversations/#{id}", body, options)

        return response
      end

      # Update a conversation
      #
      # '/conversations/:id' PATCH
      #
      # id - ID of the conversation
      def update(id, options = {})
        body = options.has_key?(:body) ? options[:body] : {}
        body[:id] = id

        response = @client.patch("/conversations/#{id}", body, options)

        return response
      end

    end

  end

end
