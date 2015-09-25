module ItunesParser
  class Track < ItunesPList

    # Returns hash with track info
    def find id
      @plist["Tracks"].select{|track| track["#{id}"]}.values.first
    end
  end
end
