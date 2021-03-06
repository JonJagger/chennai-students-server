ENV['RACK_ENV'] = 'test'

require 'rack/test'
require 'minitest/autorun'
require_relative '../src/faces_book'

class TestBase < Minitest::Test
  include Rack::Test::Methods

  def app
    FacesBook
  end

  def assert_response(n)
    assert_equal n, last_response.status
  end

  def ok
    200
  end

  def not_found
    404
  end

end
