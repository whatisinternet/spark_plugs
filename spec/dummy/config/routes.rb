Rails.application.routes.draw do
  mount SparkPlugs::Engine => "/", :as => "spark_plugs"
end
