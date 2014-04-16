module Helpful

  module Api

    # Conversations in an account
    class Conversations

      def initialize(client)
        @client = client
      end

      # List all conversations in an account the user has access to
      #
      # '/accounts/:account_id/conversations' GET
      #
      # account_id - Identifier of the account
      def list(account_id, options = {})
        body = options.fetch(:query, {})
        body[:account_id] = account_id

        @client.get("/accounts/#{account_id}/conversations", body, options)
      end

      # Create an empty conversation in account the user has access to
      #
      # '/accounts/:account_id/conversations' POST
      #
      # account_id - Identifier of the account
      def create(account_id, options = {})
        body = options.fetch(:body, {})
        body[:account_id] = account_id

        @client.post("/accounts/#{account_id}/conversations", body, options)
      end

      # Get a conversation the user has access to
      #
      # '/conversations/:conversation_id' GET
      #
      # conversation_id - Identifier of the conversation
      def get(conversation_id, options = {})
        body = options.fetch(:query, {})
        body[:conversation_id] = conversation_id

        @client.get("/conversations/#{conversation_id}", body, options)
      end

    end

  end

end
