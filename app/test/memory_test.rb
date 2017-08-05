require 'test_helper'

class MemoryTest < AppTest

  def app
    MemoryController
  end

  def test_get_root
    get '/'
    assert_response ok
  end

  def test_images_index
    get '/images/index'
    assert_response ok
    get '/images/index?shuffled=false'
    assert_response ok
    get '/images/index?shuffled=true'
    assert_response ok
  end

  def test_get_not_found
    get '/not_found'
    assert_response not_found
  end

  private

  def assert_response(n)
    assert_equal n, last_response.status
  end

  def ok; 200; end
  def not_found; 404; end

end
