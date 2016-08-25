begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end

load 'rails/tasks/statistics.rake'

Bundler::GemHelper.install_tasks

require 'engine_cart/rake_task'

task default: :ci
task :ci => ['engine_cart:generate'] do
  Rake::Task[:spec].invoke
end