require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Uphold < ::OmniAuth::Strategies::OAuth2
      include ::OmniAuth::Strategy

      UPHOLD_URL = ENV['UPHOLD_URL'] || 'https://uphold.com'
      UPHOLD_API_URL = ENV['UPHOLD_API_URL'] || 'https://api.uphold.com'

      option :name, :uphold
      option :client_options, {
        site: UPHOLD_API_URL,
        token_url: 'oauth2/token'
      }

      def initialize(app, *args, &block)
        super
        options[:client_options][:authorize_url] = "#{UPHOLD_URL}/authorize/#{args[0]}"
      end
    end
  end
end
