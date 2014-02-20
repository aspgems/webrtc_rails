WebrtcRails::Engine.routes.draw do
  resources :rooms, only: [:new, :create, :show]
end
