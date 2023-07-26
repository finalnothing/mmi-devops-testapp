# frozen_string_literal: true

require 'minitest/spec'
require 'rack/test'

require 'server'

describe Server do
  include Rack::Test::Methods

  let(:app) { Server }

  describe '/' do
    before { get '/' }

    it 'responds with a welcome message' do
      _(last_response).must_be :ok?
      _(last_response.body).must_equal "Hello, I am a simple web server\n"
    end
  end
end
