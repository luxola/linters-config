# Rubocop

## Installation as a Gem

Add this line to your application's Gemfile:

```ruby
gem 'linters-config', '~> 0.1', require: false
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

## Installation as a file

Copy the file into your repository

## Default Configuration

1. It requires `rubocop-rails`, `rubocop-performance` rails gem. If using `minitest`, to include `rubocop-minitest` in your gemfile.
1. `inherit_from` `.rubocop_todo.yml` which is auto-generated via `rubocop --auto-gen-config` for list of issues currently exists in the codebase
1. `inherit_from` `.rubocopignore.yml` which contains list of files/rules that will not be fixed

## Useful commands
1. To view problems:         `rubocop`
1. To autofix:               `rubocop -a`
1. To autofix certain rule:  `rubocop -a --only Module/Rule`
