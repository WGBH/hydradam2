require 'rails_helper'

describe FileSet do
  it 'has a factory' do
    expect(FactoryGirl.create(:file_set)).to be_a FileSet
  end
end
