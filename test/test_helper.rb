require 'minitest/spec'
require 'minitest/autorun'
# require 'pry-rescue/minitest'
require 'pry'
require 'minitest/pride'
require "minitest/reporters"
require 'itunes_parser'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new(color: true)
