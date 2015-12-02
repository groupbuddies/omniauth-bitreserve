require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class UpholdSandbox < ::OmniAuth::Strategies::Uphold
      @uphold_url = 'https://sandbox.uphold.com'
      @uphold_api_url = 'https://api-sandbox.uphold.com'

      option :client_options, {
        site: @uphold_api_url,
        token_url: 'oauth2/token'
      }
    end
  end
end
