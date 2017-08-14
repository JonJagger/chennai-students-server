require 'test_helper'

class FacesTest < AppTest

  def app
    FacesController
  end

  def test_get_root
    get '/'
    assert_response ok
  end

  def test_faces_index
    get '/faces/index'
    assert_response ok
    get '/faces/index?shuffled=false'
    assert_response ok
    get '/faces/index?shuffled=true'
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
