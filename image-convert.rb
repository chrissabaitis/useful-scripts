# Installation instructions
# 1. brew install imagemagick
# 2. brew install ghostscript
# 3. gem install mini_magick
# this is also useful: https://www.rubyguides.com/2018/12/minimagick-gem/

require 'rubygems'
require 'mini_magick'

images = Dir["/Users/christophersabaitis/Desktop/images/*"]

images.each do |image_path|
  image_name = image_path.split('/')[5]
  puts "Resizing #{image_name}"
  image = MiniMagick::Image.open(image_path)

  # image_strip = image 
  # image_strip.strip
  # image_strip.write("/Users/christophersabaitis/Desktop/resized_images/#{image_name}")

  image_resize = image
  image_resize = image.resize "5%"
  image_resize.write("/Users/christophersabaitis/Desktop/resized_images/#{image_name}")
end
