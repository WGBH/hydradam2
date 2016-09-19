require 'rails_helper'

describe SearchBuilder do
  subject { SearchBuilder.new([]) }

  describe '#models' do
    it 'includes FileSets' do
      # Need to use .send because #models is protected
      expect(subject.send(:models)).to eq ['Collection', 'FileSet']
    end
  end
end
