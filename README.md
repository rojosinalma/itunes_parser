# ItunesParser

_Parse iTunes XML made easy._

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itunes_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itunes_parser

## Usage

First, create a new instance:

    ip = ItunesParser.new("/route/to/the/file.xml")

Then you can:

* Check all the playlists:

    ```
      ip.playlists
    ```

* Or get them with just the ID and Name:

    ```
      ip.playlists(pretty: true)
    ```

* And then show its tracks based on the ID:

    ```
      a.playlist_tracks(id: <playlist_id>)
    ```

* Or check all the tracks:

    ```
      a.tracks
    ```

* Of course you can also get just the ID and Name:

    ```
      a.tracks(pretty: true)
    ```

* And check just one track based on the ID:

    ```
      a.track(id: <track_id>)
    ```


## Development

You can use the example XML in the ```examples``` folder and check it in the console running ```bin/console```.

**THIS GEM IS STILL UNDER DEVELOPMENT**

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/elfenars/itunes_parser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

