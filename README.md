# ItunesParser
[![Dependency Status](https://gemnasium.com/elfenars/itunes_parser.svg)](https://gemnasium.com/elfenars/itunes_parser)
[![Code Climate](https://codeclimate.com/github/elfenars/itunes_parser/badges/gpa.svg)](https://codeclimate.com/github/elfenars/itunes_parser)

A simple and fast iTunes Library XML parser based on nokogiri-plist.

## Description

The iTunes Library XML is a PList file, so logically,
the best way to parse this is with a PList parser.

The main concept is to keep things simple, using Arrays and Hashes,
so you can later use the items within the XML file as you please.


## Dependencies:

* Ruby >= 2.0.0
* Nokogiri-plist ~> 0.5

## Installation

Add this line to your application's Gemfile:

    gem 'itunes_parser'


And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itunes_parser

## Usage

First, create a new instance:

    ip = ItunesParser.new(file: "/route/to/the/file.xml")

Then you can:

* Check all the playlists:

        ip.playlists

* Or get them with just the ID and Name:

        ip.playlists(pretty: true)

* And then show a playlist tracks based on the ID:

        a.playlist_tracks(id: <playlist_id>)

* Or check all the tracks:

        a.tracks

* Of course you can also get just the ID and Name:

        a.tracks(pretty: true)

* And check just one track based on the ID:

        a.track(id: <track_id>)

## Author

Copyright (c)
* [Feña Agar](http://rojo.dev) (rojo@rojo.dev)

## Development

You can use the example XML in the ```examples``` folder and check it in the console running ```bin/console```.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rojosinalma/itunes_parser.
This project is intended to be a safe, welcoming space for collaboration,
and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

This library is distributed under the UNLICENSE license.
Please see the [LICENSE](https://github.com/rojosinalma/itunes_parser/blob/master/LICENSE) file.

