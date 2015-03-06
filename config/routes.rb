SparkPlugs::Engine.routes.draw do
  match '/:page' => 'static_pages#show', via: [:get]
  resources :static_pages
end
