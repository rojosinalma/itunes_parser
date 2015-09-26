require 'itunes_parser/playlist'
require 'itunes_parser/track'
require 'nokogiri-plist'

module ItunesParser
  class PList
    include Playlist
    include Track

    # Parsed XML with nokogiri-plist
    attr_reader :doc

    # Parses the XML
    def initialize(file: nil)
      @doc = Nokogiri::PList(file)
    end
  end
end
