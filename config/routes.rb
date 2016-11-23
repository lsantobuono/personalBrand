Rails.application.routes.draw do


  root 'static_pages#home'
  get  '/home', to: 'static_pages#home'
  get  '/contact', to: 'static_pages#contact'
  get  '/freelance', to: 'static_pages#freelance'

	resources :messages, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
