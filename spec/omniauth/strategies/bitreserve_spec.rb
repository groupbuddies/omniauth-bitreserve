require 'spec_helper'
require 'omniauth/strategies/bitreserve'

module OmniAuth
  module Strategies
    describe Bitreserve do
      let(:request) { double('Request', params: {}, cookies: {}, env: {}) }

      subject do
        args = ['appid', 'secret', @options || {}].compact
        OmniAuth::Strategies::Bitreserve.new(*args).tap do |strategy|
          allow(strategy).to receive(:request) {
            request
          }
        end
      end

      describe 'client options' do
        it 'should have correct name' do
          expect(subject.options.name).to eq(:bitreserve)
        end

        it 'should have correct site' do
          expect(subject.options.client_options.site).to eq('https://api.bitreserve.org')
        end
      end
    end
  end
end
