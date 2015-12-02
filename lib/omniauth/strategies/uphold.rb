require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Uphold < ::OmniAuth::Strategies::OAuth2
      include ::OmniAuth::Strategy

      @uphold_url = 'https://uphold.com'
      @uphold_api_url = 'https://api.uphold.com'

      class << self
        attr_reader :uphold_url, :uphold_api_url
      end

      option :name, :uphold
      option :client_options, {
        site: @uphold_api_url,
        token_url: 'oauth2/token'
      }

      def initialize(app, *args, &block)
        super
        options[:client_options][:authorize_url] = "#{self.class.uphold_url}/authorize/#{args[0]}"
      end
    end
  end
end
