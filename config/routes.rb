Rails.application.routes.draw do
  resources :user_instruments, except: [:new, :edit]
  resources :instruments, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  patch '/users/:id/bio-edit' => 'users#update'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
