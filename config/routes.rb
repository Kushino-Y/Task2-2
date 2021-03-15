Rails.application.routes.draw do
 root to: 'books#index'
 get 'books/new' =>'books#new',as:'home_books'
 get 'books/:id' =>'books#show',as:'show_books'
 get 'books/:id/edit' =>'books#edit',as:'edit_books'
 delete 'books/:id' =>'books#destroy',as:'destroy_books'
 resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
end
