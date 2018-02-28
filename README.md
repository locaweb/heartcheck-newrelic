# Heartcheck::Newrelic

[![Build Status](https://travis-ci.org/locaweb/heartcheck-newrelic.svg)](https://travis-ci.org/locaweb/heartcheck-newrelic)

A [Heartcheck](https://github.com/locaweb/heartcheck) plugin for the
[NewRelic](https://newrelic.com/) monitoring service.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'heartcheck-newrelic'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heartcheck-newrelic

## Usage

Add the following code to your `Heartcheck` initializer:

```ruby
Heartcheck.setup do |config|
  config.add(:newrelic)
end
```

## License
* [MIT License](https://github.com/locaweb/heartcheck-newrelic/blob/master/LICENSE)

## Contributing

1. Fork it (https://github.com/locaweb/heartcheck-newrelic)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
