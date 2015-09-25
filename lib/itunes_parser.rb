require 'rubygems'

require 'itunes_parser/itunes_plist'
require 'itunes_parser/track'
require 'itunes_parser/playlist'
require 'itunes_parser/artist'

module ItunesParser
  class << self

    def new(args)
      library_file = open(args[:library_dir])
      plist = ItunesPList.new(library_file)
      library_file.close

      return plist
    end
  end
end
