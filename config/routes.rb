Rails.application.routes.draw do
  get 'top' => "homes#top"
  get 'new' => "books#new"
  get 'index' => "books#index"
  get 'show' => "books#show"
  get 'edit' => "books#edit"
  get '/' => "homes#top"
  get 'books' => "books#index"
  post 'books' => 'books#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
