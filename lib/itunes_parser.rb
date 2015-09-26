require 'itunes_parser/plist'

module ItunesParser
  class << self

    def new(args)
      library_file = open(args[:library_dir])
      plist        = PList.new(file: library_file)
      library_file.close

      plist
    end
  end
end
