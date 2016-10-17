require 'rails_helper'

describe PreservationEvent do
  it 'has a factory' do
    expect { FactoryGirl.build(:preservation_event) }.to_not raise_error
  end
end