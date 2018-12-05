Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'spreadsheets#index'

  post 'create_links', to: 'spreadsheets#create_links'
end
