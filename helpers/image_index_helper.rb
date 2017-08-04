
module ImageIndexHelper

  def image_index
    img_dir = File.expand_path('../public/img', File.dirname(__FILE__))
    files = []
    Dir.glob("#{img_dir}/*.png") do |img_file|
      files << File.basename(img_file, '.png')
    end
    files
  end

end
