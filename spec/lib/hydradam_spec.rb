require 'spec_helper'

describe Hydradam do
  describe '.root' do
    it 'is the root directory of the engine' do
      expect(File).to exist File.join(Hydradam.root, 'lib', 'hydradam.rb')
    end
  end
end
