#Thanks to devise and rapidfire

require 'rails/generators'

module SparkPlugs
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../../app/views/spark_plugs", __FILE__)
      desc "Copies the default SparkPlug views into your application."

      def copy_views
        view_directory :static_pages
      end

      protected
      def view_directory(name)
        directory name.to_s, "app/views/spark_plugs/#{name}"
      end

    end
  end
end
