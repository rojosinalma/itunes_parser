require 'itunes_parser/plist'

module ItunesParser
  class << self

    def new(args)
      raise ArgumentError, 'No Library file specified' if args[:file].nil? || args[:file].empty?

      xml_file = open(args[:file])
      plist        = PList.new(file: xml_file)
      xml_file.close

      plist
    end
  end
end
