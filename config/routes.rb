SecondbureauCom::Application.routes.draw do
 
 scope "(/:locale)" do
   root :to => "home#index"
 end
   
   root :to => "home#index"
   match '*path'  => "home#index"
   
end
