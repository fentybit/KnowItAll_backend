Rails.application.routes.draw do

  namespace :api do 
		resources :users, only: [:index, :create, :show, :update]
	end 

  namespace :api do 
    namespace :v1 do
      resources :categories, only: [:index] do 
        resources :questions, only: [:index]
      end 
    end 
  end 
  
end