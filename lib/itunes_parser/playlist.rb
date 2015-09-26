module ItunesParser
  class Playlist

    def initialize plist_playlist = {}
      @id         = plist_playlist["Playlist ID"]      || nil
      @name       = plist_playlist["Name"]             || ""
      @master     = plist_playlist["Master"]           || false
      @visible    = plist_playlist["Visible"]          || false
      @all_items  = plist_playlist["All Items"]        || false
      @items      = construct_playlist(plist_playlist) || []
    end

    private

    def construct_playlist items
      items.each do |_, item_id|
        # Convert to track

      end
    end
  end
end
