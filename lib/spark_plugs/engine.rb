module SparkPlugs
  class Engine < ::Rails::Engine
    isolate_namespace SparkPlugs
    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end
    # Thanks to Pivotal labs
    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
    # Another big thanks to thoughtbot for this code
    initializer "Require concerns path" do |app|
      concerns_path = "app/controllers/concerns"
      unless app.paths.keys.include?(concerns_path)
        app.paths.add(concerns_path)
      end
    end
  end
end
