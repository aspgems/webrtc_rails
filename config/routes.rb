WebrtcRails::Engine.routes.draw do
  resources :videoconfs, only: [:show]
end
