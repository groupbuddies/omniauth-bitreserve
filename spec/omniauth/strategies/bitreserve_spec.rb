require 'spec_helper'
require 'omniauth/strategies/uphold'

module OmniAuth
  module Strategies
    describe Uphold do
      let(:request) { double('Request', params: {}, cookies: {}, env: {}) }

      subject do
        args = ['appid', 'secret', @options || {}].compact
        OmniAuth::Strategies::Uphold.new(*args).tap do |strategy|
          allow(strategy).to receive(:request) {
            request
          }
        end
      end

      describe 'client options' do
        it 'should have correct name' do
          expect(subject.options.name).to eq(:uphold)
        end

        it 'should have correct site' do
          expect(subject.options.client_options.site).to eq('https://api.uphold.com')
        end
      end
    end
  end
end
