require_dependency "spark_plugs/application_controller"

module SparkPlugs
  class StaticPagesController < ApplicationController
    include SparkPlugs::SemiStatic
  end
end
