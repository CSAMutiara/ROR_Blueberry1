Rails.application.routes.draw do
    resources :teaching_activities
    root 'teaching_activities#index'
end
