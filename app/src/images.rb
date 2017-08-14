
class Images

  def self.filenames
    filenames = []
    extensions.each do |extension|
      Dir.glob("#{img_dir}/*#{extension}").each { |img_file|
        filenames << File.basename(img_file)
      }
    end
    filenames.sort
  end

  private

  def self.img_dir
    File.expand_path('../public/img', File.dirname(__FILE__))
  end

  def self.extensions
    [ '.png', '.jpg' ]
  end

end
