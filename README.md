# Hotbits

Use this gem to connect to the Hotbits web service
(http://www.fourmilab.ch/hotbits/).  Though I'm a fan and a user of Hotbits,
this gem isn't "official" in any sense of the word.  If Hotbits changes their
API in the future, this gem will break. If you're a user of this gem and that
happens to you, please either fork this and fix it yourself or submit an issue.

## Installation

Add this line to your application's Gemfile:

    gem 'hotbits'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hotbits

## Usage

The easiest way to get a series of random bytes through Hotbits is to use the
`bytes` method:

    irb(main):002:0> Hotbits.bytes
    => [104, 61, 58, 158]

...or if you want more than four bytes, just say so:

    irb(main):002:0> Hotbits.bytes(7)
    => [104, 61, 58, 158, 17, 191, 4]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
