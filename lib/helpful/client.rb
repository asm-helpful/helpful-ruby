require "faraday"
require "json"

require "helpful/api/accounts"
require "helpful/api/people"
require "helpful/api/conversations"
require "helpful/api/messages"

module Helpful

  class Client

    def initialize(auth = {}, options = {})
      @http_client = Helpful::HttpClient::HttpClient.new(auth, options)
    end

    # These are like organizations which use Helpful.
    def accounts()
      Helpful::Api::Accounts.new(@http_client)
    end

    # People who operate or interacted with the account
    def people()
      Helpful::Api::People.new(@http_client)
    end

    # Conversations in an account
    def conversations()
      Helpful::Api::Conversations.new(@http_client)
    end

    # Messages in a conversation
    def messages()
      Helpful::Api::Messages.new(@http_client)
    end

  end

end
