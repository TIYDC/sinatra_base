ENV["RACK_ENV"] = "test"

require "rubygems"
require "bundler/setup"
require "minitest/autorun"
require "rack/test"
require "pry"

require "./app"
