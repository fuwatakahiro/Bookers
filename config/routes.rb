Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "homes#top"
  get "books/index" => "books#index"
   # asのお使い方がわからない
  get "books/:id" => "books#show", as: 'list'
  get "books/:id/edit" => "books#edit"
  post "books" => "books#create"
  patch 'books/:id' => 'lists#update'
# , as: 'update_list'
end
