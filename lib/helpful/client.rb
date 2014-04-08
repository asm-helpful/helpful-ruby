require "faraday"
require "json"

require "helpful/api/conversations"

module Helpful

  class Client

    def initialize(auth = {}, options = {})
      @http_client = Helpful::HttpClient::HttpClient.new auth, options
    end

    # API to work with conversations
    def conversations()
      Helpful::Api::Conversations.new @http_client
    end

  end

end
