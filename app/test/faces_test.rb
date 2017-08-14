require 'test_base'

class FacesTest < TestBase

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

end
