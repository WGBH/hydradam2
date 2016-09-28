module Hydradam
  class InstallGenerator < Rails::Generators::Base

    def inject_search_builder_behavior
      inject_into_file 'app/models/search_builder.rb', after: "include CurationConcerns::SearchFilters\n" do
        "\tinclude Hydradam::SearchBuilderBehavior\n"
      end
    end
  end
end