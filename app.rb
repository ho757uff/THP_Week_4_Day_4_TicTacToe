require "bundler"
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require "app/application"
require "app/board"
require "app/boardcase"
require "app/showboard"
require "app/players"
require "app/gameflow"
# require 'views/my_other_file'

Application.new.perform
