require 'minitest/autorun'
require_relative '../src/images'

class ImagesBase < Minitest::Test

  def test_all_image_filenames_are_collected
    filenames = Images.filenames
    assert_equal 34, filenames.size
    assert_equal 'Akhil.jpg', filenames[0]
    assert_equal 'Vinay.jpg', filenames[-1]
    assert filenames.include? 'Surya.png'
  end

end
