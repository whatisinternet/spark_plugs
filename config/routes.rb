SparkPlugs::Engine.routes.draw do
  resources :static_pages
  match '/:page' => 'static_pages#show', via: [:get]
end
