Rails.application.routes.draw do
  # get 'pictures' => 'pictures#index'

  # post 'pictures' => 'pictures#create'
  # get 'pictures/new' => 'pictures#new'

  # get 'pictures/:id' => 'pictures#show', as: "picture"

  # get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
  patch 'pictures/:id' => "pictures#update"

  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"

  resources :pictures
  root :to => "pictures#index"
end
