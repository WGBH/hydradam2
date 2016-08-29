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

Dir.glob('lib/tasks/*.rake').each { |r| load r}
load 'rails/tasks/statistics.rake'

Bundler::GemHelper.install_tasks

require 'engine_cart/rake_task'

task default: :ci
