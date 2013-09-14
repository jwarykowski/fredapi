require 'helper'

describe FREDAPI do

  describe 'when called' do
    it 'should be an instance of Module' do
      FREDAPI.should be_an_instance_of Module
    end
  end

  describe '.new' do
    it 'is a FREDAPI::Client' do
      expect(FREDAPI.new).to be_a FREDAPI::Client
    end
  end

  describe '.respond_to?' do
    it 'returns true if new method exists' do
      expect(FREDAPI.respond_to?(:new, true)).to eq(true)
    end
  end

end