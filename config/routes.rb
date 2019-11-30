Rails.application.routes.draw do
  resources :acts
  resources :entities
  resources :vencimientos
  resources :expirations do
    member do
      get 'copy'
    end
  end
  resources :localidad_partidos
  resources :studies
  get 'backoffice/index'
  mount Blazer::Engine, at: 'blazer'

  resources :ordenes
  resources :statuses
  resources :visit_comments
  resources :legislacions
  resources :ambitos
  resources :autoridads
  resources :solicitadors
  get '/visits/soon' => 'visits#soon'
  resources :documents
  resources :companies
  resources :visits
  resources :comments
  resources :visit_types
  resources :frecuencies
  resources :industry_types
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
