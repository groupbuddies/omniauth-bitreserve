require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bitreserve < ::OmniAuth::Strategies::OAuth2
      include ::OmniAuth::Strategy

      BITRESERVE_URL = ENV['BITRESERVE_URL'] || 'https://bitreserve.org'
      BITRESERVE_API_URL = ENV['BITRESERVE_API_URL'] || 'https://api.bitreserve.org'

      option :name, :bitreserve
      option :client_options, {
        site: BITRESERVE_API_URL,
        token_url: 'oauth2/token'
      }

      def initialize(app, *args, &block)
        super
        options[:client_options][:authorize_url] = "#{BITRESERVE_URL}/authorize/#{args[0]}"
      end
    end
  end
end
