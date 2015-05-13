require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bitreserve < ::OmniAuth::Strategies::OAuth2
      include ::OmniAuth::Strategy

      URL      = ENV['BITRESERVE_CONNECT_URL'] || 'https://bitreserve.org'
      option :name, :bitreserve
      option :client_options, site: URL

      def initialize(app, *args, &block)
        super
        options[:client_options][:authorize_url] = "/authorize/#{args[0]}"
      end

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
