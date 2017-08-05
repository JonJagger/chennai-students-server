require 'test_helper'

class MemoryTest < AppTest

  def app
    MemoryController
  end

  def test_get_root
    get '/'
    assert_response 200
  end

  def test_images_index
    get '/images/index'
    assert_response 200
    get '/images/index?shuffled=false'
    assert_response 200
    get '/images/index?shuffled=true'
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
