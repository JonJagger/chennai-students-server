require 'minitest/autorun'
require_relative '../src/images'

class ImagesBase < Minitest::Test

  def test_image_filenames_are_collected
    filenames = Images.filenames
    assert filenames.size > 0, filenames
  end

end
