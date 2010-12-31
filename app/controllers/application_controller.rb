class ApplicationController < ActionController::Base
  
  require 'meta_tags'
  require 'daryl'
  
  protect_from_forgery
  
  before_filter :meta_defaults
  
private  
   
   def meta_defaults
     @page_title = 'Retail, Web & Innovation'
     @page_keywords = %w[multicanal web retail technologie acquisition conversion rétention parcours_client offre prix promotion logistique organisation labs référencement stratégie marketing].shuffle
     @page_description = 'SecondBureau, spécialiste des problématiques du commerce en ligne, allie expertise web et savoir-faire dans la distribution pour révolutionner le développement de vos activités sur Internet.'
   end
end
