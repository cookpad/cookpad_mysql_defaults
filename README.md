# CookpadMysqlDefaults

This gem forces better MySQL table defaults on creation.

- Set engine to InnoDB.
- Use 4-byte UTF-8 charset and collate to support Emojis.
- Use `ROW_FORMAT=DYNAMIC` for indexes on big columns.

## Usage

Just add the gem to your project!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cookpad_mysql_defaults', github: 'cookpad/cookpad_mysql_defaults'
```

And then execute:
```bash
$ bundle
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
