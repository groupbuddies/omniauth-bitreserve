require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bitreserve < ::OmniAuth::Strategies::OAuth2
      include ::OmniAuth::Strategy

      URL      = ENV['BITRESERVE_API_URL'] || 'https://api.bitreserve.org'
      PATH     = '/oauth/authorize'

      option :name, :bitreserve
      option :client_options, site: URL, authorize_url: PATH

      uid do
        raw_info['id']
      end

      info do
        {
          email: raw_info['email']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me').parsed
      end
    end
  end
end
