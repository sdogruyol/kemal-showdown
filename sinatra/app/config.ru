require 'bundler'
Bundler.require

require 'tilt/erb'

require './app'
run Sinatra::Application