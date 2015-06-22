[![Build Status](https://travis-ci.org/xurde/randomuserme.svg?branch=master)](https://travis-ci.org/xurde/randomuserme)
[![Gem Version](https://badge.fury.io/rb/randomuserme.svg)](http://badge.fury.io/rb/randomuserme)

# Randomuserme

Ruby client for [randomuser.me](http://randomuser.me) API

## Installation

Add this line to your application's Gemfile:

    gem 'randomuserme'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install randomuserme

## Usage

`RandomUserMe::Client.get_random_user`

`RandomUserMe::Client.get_seeded_user`

Both class methods return a `RandomUser` class

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
