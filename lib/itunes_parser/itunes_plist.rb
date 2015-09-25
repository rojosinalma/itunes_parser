require 'nokogiri-plist'

module ItunesParser
  class ItunesPList
    attr_reader :plist

    def initialize file = nil
      @plist = Nokogiri::PList(file)
    end

    def tracks
      @plist["Tracks"]
    end

    def playlists
      @plist["Playlists"].collect{|pl| {id: pl["Playlist ID"], name: pl["Name"]} }
    end

    def find_playlist name
      name = name.gsub(/\b(?<!['â`])[a-z]/) { $&.capitalize }
      pl = playlists.select{|pl| pl["Name"] == name}.first

      res_playlist = []
      pl.each do |_, track_id|
        res_playlist << Track.find(track_id)
      end

      res_playlist
    end
  end
end
