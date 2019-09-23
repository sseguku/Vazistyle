Rails.application.routes.draw do
 namespace :api do 
    namespace :v1 do 
        resources :products, :customers, :addresses, :product_category, :ratings, :cities, :club_events, :clubs, :club_products, :comments, :countries, :customers, :events, :orders, :product_attributes, :the_attributes
        
    end
 end
end
