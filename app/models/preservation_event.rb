require 'rdf/vocab'

class PreservationEvent < ActiveFedora::Base
  type [::RDF::Vocab::PREMIS.Event]
end