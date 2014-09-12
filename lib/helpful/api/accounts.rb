module Helpful

  module Api

    # These are like organizations which use Helpful.
    class Accounts

      def initialize(client)
        @client = client
      end

      # All the accounts the user has access to
      #
      # '/accounts' GET
      def all(options = {})
        body = options.fetch(:query, {})

        @client.get("/accounts", body, options)
      end

      # Get an account the user has access to
      #
      # '/accounts/:account_id' GET
      #
      # account_id - Identifier of the account
      def get(account_id, options = {})
        body = options.fetch(:query, {})

        @client.get("/accounts/#{account_id}", body, options)
      end

      # Update an account the user has access to
      #
      # '/accounts/:account_id' PATCH
      #
      # account_id - Identifier of the account
      def update(account_id, options = {})
        body = options.fetch(:body, {})

        @client.patch("/accounts/#{account_id}", body, options)
      end

    end

  end

end
