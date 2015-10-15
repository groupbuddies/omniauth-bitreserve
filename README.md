# Omniauth Uphold

This gem contains the [Uphold](https://uphold.com/) strategy for OmniAuth

## Using this strategy

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-uphold'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-uphold

Now you must tell OmniAuth about this provider, For a Rails app, your `config/initializers/omniauth.rb` file should look like this:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :uphold, 'API_KEY', 'API_SECRET'
end
```

## Sandbox API

Uphold supports a sandbox environment for testing purposes. To use it with this strategy, you'll need to use the following environment variables:

```
uphold_URL="https://sandbox.uphold.com"
uphold_API_URL="https://api-sandbox.uphold.com"
```

We recommend [dotenv](https://github.com/bkeepers/dotenv) for this.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-uphold/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
