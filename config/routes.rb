Rails.application.routes.draw do
  get '/', to: 'tops#index'
  resources :tops do
  end

  get '/tweets', to: 'tweets#index'
  
  resources :tweets do
    collection do
      post :confirm
    end
  end
end
