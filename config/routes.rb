Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "homes#top"
  get "lists/index" => "lists#index"
  get "lists/:id" => "lists#show"
  get "lists/:id/edit" => "lists#edit"
  get "lists/new" => "lists#new"
  post "lists" => "lists#create"
end
