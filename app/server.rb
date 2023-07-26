# frozen_string_literal: true

require 'sinatra/base'

# A very small web-app for this tutorial.
class Server < Sinatra::Base
  get '/' do
    body "Hello, I am a simple web server\n"
  end
end
