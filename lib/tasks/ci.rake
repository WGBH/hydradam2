begin
  require 'solr_wrapper'
  require 'fcrepo_wrapper'
  require 'active_fedora/rake_support'
  task ci: ['engine_cart:generate'] do
    with_server('test') do
      Rake::Task['spec'].invoke
    end
  end
rescue LoadError => e
  puts e.message
end