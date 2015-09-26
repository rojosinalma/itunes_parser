module ItunesParser
  class Track

    # Returns hash with track info
    def find id
      @plist["Tracks"].select{|track| track["#{id}"]}.values.first
    end
  end
end
