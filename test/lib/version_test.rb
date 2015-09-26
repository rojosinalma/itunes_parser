require 'test_helper'

describe ItunesParser do
  it "must have a version" do
    ItunesParser::VERSION.wont_be_nil
  end
end
