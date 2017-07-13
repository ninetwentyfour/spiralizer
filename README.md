# Spiralizer

Take a matrix and return a string or array that follows a spiral pattern around it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spiralizer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spiralizer

## Usage

```
>> t = [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']]
=> [["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]]
>> Spiralizer.get_spiral_string(t)
=> "a b c f i h g d e"
```

```
>> t = [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']]
=> [["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]]
>> Spiralizer.get_spiral_array(t)
=> ["a", "b", "c", "f", "i", "h", "g", "d", "e"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/spiralizer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
