Rails.application.routes.draw do


  root 'static_pages#home'
  get  '/home', to: 'static_pages#home'
  get  '/freelance', to: 'static_pages#freelance'


  get  '/contact', to: 'static_pages#contact'
  get  '/blog', to: 'static_pages#blog'

	resources :messages, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
