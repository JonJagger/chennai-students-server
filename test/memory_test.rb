require 'test_helper'

class MemoryTest < AppTest

  def app
    MemoryController
  end

  def test_get_root
    get '/'
    assert_response 200
  end

  def test_image_index
    get '/image_index'
    assert_response 200
  end

  def test_image_index_shuffled
    get '/image_index_shuffled'
    assert_response 200
  end

  def test_get_not_found
    get '/not_found'
    assert_response 404
  end

  private

  def assert_response(n)
    assert_equal n, last_response.status
  end

end
