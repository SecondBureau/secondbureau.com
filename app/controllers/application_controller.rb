class ApplicationController < ActionController::Base
  
  require 'meta_tags'
  require 'daryl'
  
  protect_from_forgery
  
  before_filter :meta_defaults
  
private  
   
   def meta_defaults
     @page_title = 'SecondBureau'
     @page_keywords = %w[multicanal web retail technologie acquisition conversion rétention parcours_client offre prix promotion logistique organisation labs référencement stratégie marketing].shuffle
     @page_description = 'Secondbureau'
   end
end
