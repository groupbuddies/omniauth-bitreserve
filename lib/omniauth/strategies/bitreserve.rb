require 'omniauth-oauth2'

class BitreserveClient < OAuth2::Client
  def initialize(client_id, client_secret, options = {}, &block)
    super
    @authorize_site = options.delete(:authorize_site)
    @token_site = options.delete(:token_site)
    options[:authorize_url] = [options.delete(:authorize_site), options[:authorize_url]].join('/')
    options[:token_url]     = [options.delete(:token_site),     options[:token_url]    ].join('/')
  end
end

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
        options[:client_options][:token_url] = '/oauth2/token'
      end

      def client
        options[:authorize_site] = 'https://sandbox.bitreserve.org'
        options[:token_site] = 'https://api-sandbox.bitreserve.org'
        BitreserveClient.new(options.client_id, options.client_secret, deep_symbolize(options.client_options))
      end

      # uid do
      #   raw_info['id']
      # end

      # info do
      #   {
      #     email: raw_info['email']
      #   }
      # end

      # def raw_info
      #   @raw_info ||= access_token.get('/me').parsed
      # end
    end
  end
end
