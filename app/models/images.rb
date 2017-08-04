
class Images

  def self.all
    img_dir = File.expand_path('../public/img', File.dirname(__FILE__))
    Dir.glob("#{img_dir}/*.png").map { |img_file|
      File.basename(img_file, '.png')
    }
  end

end
