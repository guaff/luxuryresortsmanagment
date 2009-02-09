module ResortsHelper
  
  def generate_tags(directory)
    my_dir = Dir["/images/*"]

    my_dir.each do |filename|
      "hello" + filename
    end  
  end

end
