module ItunesParser
  module Playlist

    # Shows all playlists in the doc.
    # Returns Array of Hashes, each Hash is a playlist.
    # Optional param `pretty` returns Array of Hashes with only IDs and Names.
    def playlists(pretty: false)
      _playlists = doc["Playlists"]

      unless pretty
        _playlists
      else
        _playlists.collect{|pl| {id: pl["Playlist ID"], name: pl["Name"] }}
      end
    end

    # Shows one playlist.
    # Returns Hash with playlist info.
    def playlist(id)
      playlists.select{|pl| pl["Playlist ID"] == id}.first
    end

    # Shows all tracks of a playlist.
    # Returns Array of Hashes, each Hash is a track.
    def playlist_tracks(id)
      tracks = []

      playlist(id)["Playlist Items"].each do |playlist_item|
        tracks << self.track(id: playlist_item["Track ID"])
      end

      tracks
    end
  end
end
