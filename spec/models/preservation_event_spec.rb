require 'rails_helper'

describe PreservationEvent do
  let(:preservation_event) { FactoryGirl.build(:preservation_event) }
  it 'has a factory' do
    expect { preservation_event }.to_not raise_error
  end

  it 'has rdf type premis:Event' do
    expect(preservation_event.type).to include  RDF::Vocab::PREMIS.Event
  end
end