module Hydradam
  module SearchBuilderBehavior
    extend ActiveSupport::Concern

    include CurationConcerns::FilterByType

    def models
      # Append FileSet to the list of models that should be returned in a
      # basic search.
      super + [::FileSet]
    end
  end
end
