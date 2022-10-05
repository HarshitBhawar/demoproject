Rails.application.routes.draw do
  devise_for :users  
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  
  root to: "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  resources :jobs do
    resources :applies
    post :showuser 
    
  end
  post "jobs/:id/edit"    => "jobs#edit"
  post "jobs/:id"  => "jobs#destroy"
  post "/jobs/:job_id/applies/:id" => "applies#destroy"
  get "/applies" => "applies#index"
  # get "/jobs/allpost" => "jobs#allpost"
  # resources :jobs
end
