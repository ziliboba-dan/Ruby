require 'rspec'
require_relative 'Degrees.rb'

  RSpec.describe Degree do
  subject(:degree) { Degree.new }
  context 'transform C' do
    it 'should be 1°C = 274.15 K' do
      degree.value = 1
      degree.scale = 'C'
      degree.scale_transform = 'K'
      expect(degree.transform_C_to_K.round(2)).to be 274.15
    end
    it 'should be 1°C = 33,8 F' do
      degree.value = 1
      degree.scale = 'C'
      degree.scale_transform = 'F'
      expect(degree.transform_C_to_F.round(2)).to be 33.8
    end
  end
  context 'transform K' do
    it 'should be 1 K = -272,15°C' do
      degree.value = 1
      degree.scale = 'K'
      degree.scale_transform = 'C'
      expect(degree.transform_K_to_C.round(2)).to be -272.15
    end
    it 'should be 1 K = -457,87 F' do
      degree.value = 1
      degree.scale = 'K'
      degree.scale_transform = 'F'
      expect(degree.transform_K_to_F.round(2)).to be -457.87
    end
  end
  context 'transform F' do
    it 'should be 1 F = -17,22°C' do
      degree.value = 1
      degree.scale = 'K'
      degree.scale_transform = 'F'
      expect(degree.transform_F_to_C.round(2)).to be -17.22
    end
    it 'should be 1 F = 255,93 K' do
      degree.value = 1
      degree.scale = 'K'
      degree.scale_transform = 'F'
      expect(degree.transform_F_to_K.round(2)).to be 255.93
    end
  end
  context 'error' do
    it 'should be 1 F = -17,22°C' do
      degree.value = 1
      degree.scale = 'asdfadf'
      degree.scale_transform = 'F'
      expect(degree.check).to eq false
    end
  end
end
