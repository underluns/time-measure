# Time::Measure
Measure runtime.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'time-measure'
```

And then execute:

    bundle install

Or install it yourself as:

    gem install time-measure

## Usage

To measure block execution time:
```ruby
measure = Time::Measure.new { 'some_code' }
measure.result   # Block execution result.
measure.duration # Duration of block execution in seconds.
```
or
```ruby
result, duration = Time.measure { 'some_code' }
result   # Block execution result.
duration # Duration of block execution in seconds.
```

## Development and Testing

To start the interactive development console, use the command:

    make console

To test the proper performance of the code, use [rspec](https://rubygems.org/gems/rspec).

    make rspec

To check the coding style, use [rubocop](https://rubygems.org/gems/rubocop).

    make rubocop

To check the security of the code, use [bundle-audit](https://rubygems.org/gems/bundle-audit).
    
    make audit

To check code coverage by tests, use [simplecov](https://rubygems.org/gems/simplecov). The result of her work can be viewed in `coverage/index.html`.

All checks are run with the following command:

    make check

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/underluns/time-measure).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
