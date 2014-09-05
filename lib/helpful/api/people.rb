module Helpful

  module Api

    # People who operate or interacted with the account
    class People

      def initialize(client)
        @client = client
      end

      # List all people in the account the user has access to
      #
      # '/accounts/:account_id/people' GET
      #
      # account_id - Identifier of the account
      def list(account_id, options = {})
        body = options.fetch(:query, {})

        @client.get("/accounts/#{account_id}/people", body, options)
      end

    end

  end

end
