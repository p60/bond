# Bond #

Bond is a Railtie that conveniently wires up
[Rack::Transaction](https://github.com/p60/rack-transaction). It will handle
configuring `Rack::Transaction` to work with `ActiveRecord` if available.

## Installation

Add this line to your Gemfile:

```ruby
gem 'bond-railtie'
```

and bundle up.

## Usage

Bond *should* just work as soon as you install it using the defaults provided
by `Rack::Transaction`. If you need to do additional configuration, you can add
a Rails initializer and call `Bond.setup`. The method takes in a block and
provides a `Rack::Transaction::Configuration`. For example:

```ruby
Bond.setup do |config|
  config.exclude { |request| request.path =~ %r{/search}i }
end
```

Please refer to `Rack::Transaction` documentation to see additional
configuration options.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
