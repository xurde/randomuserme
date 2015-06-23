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

`RandomUserMe::Client.get_seeded_user(seed)`

Both class methods return a `RandomUser` object like this:
```
#<RandomUser
    email: "sam.allen48@example.com",
    name: {"title"=>"ms", "first"=>"sam", "last"=>"allen"}, 
    username: "tinykoala240",
    password: "rovers",
    salt: "SFYSCm7m",
    md5: "bfa66b84466acda8fbca0c39d33a2adf",
    sha1: "0d4093b1852e0ff3e18868f5e9e5a661047545ee",
    sha256[64]: "14627852489fb1fc5e6504c0e860c9a068338ac3e8d9029d9b1...",
    gender: "male",
    registered: #<DateTime: 2002-10-01T15:35:12+02:00 ((2452549j,48912s,0n),+7200s,2299161j)>,
    dob: #<Date: 1987-11-09 ((2447109j,0s,0n),+0s,2299161j)>,
    phone: "016977 3421",
    cell: "0727-996-865",
    nationality: "GB",
    location: {"street"=>"3714 park avenue", "city"=>"newry", "state"=>"powys", "postcode"=>"O82 3AH"},
    picture: {"large"=>"http://api.randomuser.me/portraits/women/45.jpg", 
              "medium"=>"http://api.randomuser.me/portraits/med/women/45.jpg", 
              "thumbnail"=>"http://api.randomuser.me/portraits/thumb/women/45.jpg"
              }>
```

`RandomUser` instances include formatted attributes methods like:

* first_name
* last_name
* full_name
* formal_name
* full_formal_name
* full_location

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
