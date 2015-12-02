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

Uphold supports a sandbox environment for testing purposes. To use it you will need a different strategy:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :uphold_sandbox, 'API_KEY', 'API_SECRET', name: :uphold
end
```

You can add `name: :uphold` to make sure it uses the same route names as if you were using the main strategy.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-uphold/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
