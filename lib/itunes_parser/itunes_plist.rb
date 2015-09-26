require 'nokogiri-plist'

module ItunesParser
  class ItunesPList
    attr_reader :plist

    def initialize(file = nil)
      @plist = Nokogiri::PList(file)
    end

    def playlists
      plist["Playlists"]
    end

    def pretty_playlists
      playlists.collect{|pl| {id: pl["Playlist ID"], name: pl["Name"]} }
    end

    def playlist(playlist_id = nil)
      playlists.select{|pl| pl["Playlist ID"] == playlist_id}.first
    end

    def find_playlist_id(playlist_name = "")
      playlists.select{|pl| pl["Name"] == playlist_name}.first["Playlist ID"]
    end

    def tracks
      @plist["Tracks"]
    end

    def track(track_id = nil)
      tracks.select{|pl| pl["#{track_id}"]}.first[1]
    end

    def playlist_tracks(playlist_id = nil)
      playlist = playlist playlist_id

      tracks = []
      playlist["Playlist Items"].each do |_, track_id|
        tracks << track(track_id)
      end

      return tracks
    end
  end
end
