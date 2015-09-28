module ItunesParser
  module Track

    # Shows all tracks in the doc.
    # Returns Hash { track_id => { <track_information> } }
    # Optional param `pretty` returns Array of Hashes with only IDs and Names.
    def tracks pretty: false
      _tracks = self.doc["Tracks"]

      unless pretty
        _tracks
      else
        _tracks.collect{|track| { id: track[1]["Track ID"], name: track[1]["Name"] }}
      end
    end

    # Shows one track.
    # Returns Hash with track info.
    def track(id)
      tracks["#{id}"]
    end
  end
end
