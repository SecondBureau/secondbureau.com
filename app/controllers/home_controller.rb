class HomeController < ApplicationController
  
  def index
    images = Dir["#{Rails.root.join('public', 'images', 'wordle')}/*"].select { |file| /(png)$/ =~ file }
    image = File.basename(images[rand(images.count)])
    @bodycolor = "color#{image.split('-')[0]}"
    @wordle= File.join('wordle', image)
    
  end
  
end