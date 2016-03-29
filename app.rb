require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'json'

get '/' do
  # content_type("application/json")
  return {name: "I AM GROOT"}.to_json
end
