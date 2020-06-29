#!/bin/env ruby
#
require 'sinatra'

class App < Sinatra::Base
  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end

  get '/' do
    "HELLO"
  end

  post '/' do
    "HELLO"
  end


  options "*" do
    response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    200
  end
end


