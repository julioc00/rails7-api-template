Rails.application.routes.draw do
  defaults format: :json do
    namespace :api do
      namespace :v1 do
        devise_for :users, controllers: { 
          sessions: 'api/v1/users/sessions',
          registrations: 'api/v1/users/registrations'
        }
      end
    end
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
