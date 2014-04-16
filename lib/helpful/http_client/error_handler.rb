module Helpful

  module HttpClient

    # ErrorHanlder takes care of selecting the error message from response body
    class ErrorHandler < Faraday::Middleware

      def initialize(app)
        super(app)
      end

      def call(env)
        @app.call(env).on_complete do |env|
          code = env[:response].status
          type = env[:response].headers["content-type"]

          case code
          when 500...599
            raise Helpful::Error::ClientError.new("Error #{code}", code)
          when 400...499
            body = Helpful::HttpClient::ResponseHandler.get_body(env[:response])
            message = ""

            # If HTML, whole body is taken
            if body.is_a?(String)
              message = body
            end

            # If JSON, a particular field is taken and used
            if type.include?("json") and body.is_a?(Hash)
              if body.has_key?("error")
                message = body["error"]
              else
                message = "Unable to select error message from json returned by request responsible for error"
              end
            end

            if message == ""
              message = "Unable to understand the content type of response returned by request responsible for error"
            end

            raise Helpful::Error::ClientError.new message, code
          end
        end
      end

    end

  end

end
