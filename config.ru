require 'sinatra'
require 'rubygems'
require 'bundler'
require "./app"

Bundler.require

run ShuffleDecider
