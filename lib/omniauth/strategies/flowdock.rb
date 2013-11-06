require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Flowdock < OmniAuth::Strategies::OAuth2
      option :name, "flowdock"
      option :client_options, {
        site: "https://api.flowdock.com",
        authorize_url: "/oauth/authorize"
      }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid{ raw_info['id'] }

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= begin
          users = access_token.get('/users')
          user_id = users.headers['flowdock-user']
          users.parsed.find do |u|
            u["id"].to_s == user_id.to_s
          end
        end
      end
    end
  end
end