WebrtcRails::Engine.routes.draw do
  resources :rooms, only: [:new, :show]
end
