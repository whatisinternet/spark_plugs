[![build
Status](https://travis-ci.org/whatisinternet/spark_plugs.svg?branch=master)](https://travis-ci.org/whatisinternet/spark_plugs)
[![Gem
Version](https://badge.fury.io/rb/spark_plugs.svg)](http://badge.fury.io/rb/spark_plugs)
[![Code
Climate](https://codeclimate.com/github/whatisinternet/spark_plugs/badges/gpa.svg)](https://codeclimate.com/github/whatisinternet/spark_plugs)
[![Test
Coverage](https://codeclimate.com/github/whatisinternet/spark_plugs/badges/coverage.svg)](https://codeclimate.com/github/whatisinternet/spark_plugs)
# Spark Plugs

A Rails engine for semi-static pages. This project is still a work in progress.

## Installation

Add this line to your application's Gemfile:

```ruby
  gem 'spark_plugs'
```

And then execute:

```shell
  bundle install
```

Then install

```shell
  rails generate spark_plugs:install
```

If you would like to customize the view:

```shell
  rails generate spark_plugs:views
```

## Extending the controller
Just include the SparkPlugs SemiStatic concern. Big thanks to
[thoughtbot/high_voltage](https://githib.com/thoughtbot/high_voltage).

```ruby
  #app/controllers/static_pages_controller
  class StaticPagesController < ApplicationController
    include SparkPlugs::SemiStatic

    # Authenticate etc.
  end
````

## Notes:

The master branch does not provide controller actions or views for creating or
editing static pages. I have assumed that you've created an administration
interface or are using a gem like rails_admin to manage these pages.

If you wish to use the default views please use the legacy-full-controller branch or fork that branch.


## Contributing

1. Fork it ( https://github.com/whatisinternet/spark_plugs/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Make sure your tests pass.
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

