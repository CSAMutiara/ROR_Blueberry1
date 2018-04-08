Rails.application.routes.draw do
    resources :tactivities
    root 'tactivities#index'
end
