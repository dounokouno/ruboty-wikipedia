# Ruboty::Wikipedia

A Ruboty plugin that returns Wikipedia URL.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-wikipedia'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install ruboty-wikipedia
```

## Usage

```
> ruboty wikipedia [keyword]
> ruboty wiki [keyword]
```

## ENV

```
WIKIPEDIA_DOMAIN                            - Wikipedia domain (default: en.wikipedia.org)
WIKIPEDIA_MESSAGE_WHEN_NO_ARTICLE_WAS_FOUND - Message when no article was found (default: No articles found.)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dounokouno/ruboty-wikipedia.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
