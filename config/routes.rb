Rails.application.routes.draw do
  get 'guylaine_masso/services'

  get 'guylaine_masso/tarifs'

  get 'guylaine_masso/articles'

  get 'guylaine_masso/promotion'

  get 'guylaine_masso/apropos'

  get 'guylaine_masso/contact'

  get 'guylaine_masso/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #  Customized devise controller (not using it, was not workng, to be removed)
  #devise_for :users, :controllers => { registrations: 'registrations' }

  post 'guylaine_masso/thank_you'

  #root 'guylaine_masso#index'

scope "(:locale)", locale: /en|fr/ do
    get '/apropos', to: 'guylaine_masso#apropos', as: :apropos
    get '/contact', to: 'guylaine_masso#contact', as: :contact
    get '/services', to: 'guylaine_masso#services', as: :services
    get '/tarifs', to: 'guylaine_masso#tarifs', as: :tarifs
    get '/articles', to: 'guylaine_masso#articles', as: :articles
    get '/promotion', to: 'guylaine_masso#promotion', as: :promotion
  end

#  scope "(/:locale)", locale: /en|fr/ do
#  resources :products  do
#    resources :comments
#  end
#  resources :orders
#end

scope "(:locale)", locale: /en|fr/ do
  get '/:locale' => 'guylaine_masso#index'
  root 'guylaine_masso#index'
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
