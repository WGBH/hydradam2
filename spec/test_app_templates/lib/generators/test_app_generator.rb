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

          def solr_wrapper_config
            copy_file '.solr_wrapper.yml', '.solr_wrapper.yml'
            # Remove .solr_wrapper if it exists, because it can conflict with
            # our .solr_wrapper.yml.
            `rm .solr_wrapper` if File.exists? '.solr_wrapper'
          end

          def fcrepo_wrapper_config
            copy_file '.fcrepo_wrapper.yml', '.fcrepo_wrapper.yml'
            # Remove .fcrepo_wrapper if it exists, because it can conflict with
            # our .fcrepo_wrapper.yml.
            `rm .fcrepo_wrapper` if File.exists? '.fcrepo_wrapper'
          end

          def database_config
            copy_file 'config/database.yml', 'config/database.yml'
          end
        end
