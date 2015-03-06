Rails.application.routes.draw do
  mount SparkPlugs::Engine => "/", :as => "spark_plugs"
  resources :static_pages
end
