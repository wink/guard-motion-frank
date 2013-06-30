require 'cucumber/rake/task'

namespace :frank do
  namespace :run do
    desc 'Build app for simulator, launch simulator and run specific features'
    task :specific, [:features] do |task, args|
      Rake::Task["build:simulator"].invoke
      Cucumber::Rake::Task.new(:features, "") do |t|
        app_bundle_path = File.expand_path(App.config.app_bundle('iPhoneSimulator'), Rake.application.original_dir)
        features = args.features || ENV["FEATURES"] || "features"
        t.cucumber_opts = "APP_BUNDLE_PATH='#{app_bundle_path}' --format pretty #{features} "
      end.runner.run
    end
  end
end