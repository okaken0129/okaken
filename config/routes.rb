Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'jobs/job' => 'jobs#job'
  get 'jobs/steve' => 'jobs#steve'
resources :topics
resources :topic2s
resources :topic3s
resources :topic4s
  root 'jobs#index'
end
