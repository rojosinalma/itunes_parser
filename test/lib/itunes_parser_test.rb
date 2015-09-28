require 'test_helper'

describe ItunesParser do

  describe "when no Library XML is given" do
    it "must raise an ArgumentError" do
      proc{ ItunesParser.new(file: "") }.must_raise ArgumentError
    end
  end

  describe "when a Library XML is given" do
    let(:plist){ ItunesParser.new(file: "examples/Library.xml") }
    let(:playlists){ plist.playlists }
    let(:pretty_playlists){ plist.playlists(pretty: true) }
    let(:playlist){ plist.playlist(playlists.first["Playlist ID"]) }

    it "must return parsed PList file" do
      plist.must_be_instance_of ItunesParser::PList
    end

    describe "and playlists are requested" do

      it "does not fail if there are no playlists" do
        skip("Implement")
      end

      it "shows all playlists by default" do
        skip("Thinking what's the best way")
      end

      it "shows just ID and Name with pretty option" do
        pretty_playlists_keys = pretty_playlists.first.keys
        skip("Must include only ID and Name")
      end
    end

    describe "and one playlist is requested" do
      it "shows the playlist info" do
        skip("Thinking what's the best way")
      end
    end
  end
end
