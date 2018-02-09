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


#  get 'my_blog/index'
#  get 'my_blog/contact'
#  get 'my_blog/about'

#  get 'articles/new'
#  get 'articles/index'
#  get 'comments/index'

#  post 'comments/update'

  post 'guylaine_masso/thank_you'

  root 'guylaine_masso#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
