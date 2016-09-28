require 'rails_helper'

describe User do
  it 'has a factory' do
    expect(FactoryGirl.create(:user)).to be_a User
  end
end
