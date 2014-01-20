Portfolio::Application.routes.draw do
  root to: 'pages#index'

  resource :contacts, only: [ :create ]
end
