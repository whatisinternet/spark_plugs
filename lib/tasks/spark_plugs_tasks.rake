# desc "Explaining what the task does"
# task :spark_plugs do
#   # Task goes here
# end
namespace :spark_plugs do
  desc 'Install spark_plugs'
  task :install do
    system 'rails g spark_plugs:install'
  end

  desc 'Uninstall spark_plugs'
  task :uninstall do
    system 'rails g spark_plugs:uninstall'
  end

  desc 'Generate spark_plug views'
  task :views do
    system 'rails g spark_plugs:views'
  end
end
