unless defined?(Motion::Project::Config)
  raise "Can't execute rake task. Add \"require 'guard/motion-frank/task'\" to your RubyMotion project Rakefile."
end

require 'cucumber/rake/task'

namespace :frank do
  namespace :run do
    desc 'Build app for simulator, launch simulator and run specific features'
    task :specific do |features|
      Rake::Task["build:simulator"].invoke
      Cucumber::Rake::Task.new(:features, "") do |t|
        app_bundle_path = File.expand_path(App.config.app_bundle('iPhoneSimulator'), Rake.application.original_dir)
        features ||= (ENV["FEATURES"] || "features")
        t.cucumber_opts = "APP_BUNDLE_PATH='#{app_bundle_path}' --format pretty #{features} "
      end.runner.run
    end
  end
end