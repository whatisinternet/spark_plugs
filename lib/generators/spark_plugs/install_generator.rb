require 'rails/generators'

module SparkPlugs
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates',__FILE__)

    argument :_namespace, type: :string, required: false, desc: 'SparkPlug namespace'

    def install
      namespace = defined?(::HighVoltage) ? "pages" : "static_pages"
      namespace = ask("Where would you like to mount spark_plugs? [#{namespace}] is default")
      route("mount SparkPlugs::Engine => '/#{namespace}', as: 'spark_plugs'")
      rake("db:migrate")
      #template 'initializer.erb', 'config/initializers/spark_plugs.rb'
    end

  end
end
