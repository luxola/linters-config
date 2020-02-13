# LintersConfig

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'linters-config', require: false
```

Add this lint to your application's Gemfile if you are using minitest
```ruby
gem 'rubocop-minitest', '~> 0.5', require: false
```

And then execute:

    $ bundle

Generate the default .rubocop.yml file

```shell
rails generate linters-config
```
