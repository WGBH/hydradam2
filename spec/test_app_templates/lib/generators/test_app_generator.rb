        require 'rails/generators'

        class TestAppGenerator < Rails::Generators::Base
          source_root "#{Hydradam.root}/spec/test_app_templates"

          # if you need to generate any additional configuration
          # into the test app, this generator will be run immediately
          # after setting up the application


          def install_curation_concerns
            generate 'curation_concerns:install -f'
          end

          def install_engine
            generate 'hydradam:install'
          end

          def development_env_config
            if(ENV['RAILS_ENV'] == 'development')
              copy_file '.solr_wrapper.yml', '.solr_wrapper.yml', force: true
              `rm .solr_wrapper` if File.exists? '.solr_wrapper'
              copy_file '.fcrepo_wrapper.yml', '.fcrepo_wrapper.yml', force: true
              `rm .fcrepo_wrapper` if File.exists? '.fcrepo_wrapper'
              copy_file 'config/database.yml', 'config/database.yml'
            end
          end
        end
