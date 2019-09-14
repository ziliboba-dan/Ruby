require 'rspec'
require_relative 'Degrees.rb'

RSpec.describe Degree do

    it 'should be 1°C = 274.15 K' do
        deg = Degree.new()
        deg.value = 1
        deg.scale = 'C'
        deg.scale_transform = 'K'
        expect(deg.transform_C_to_K.round(2)).to be 274.15
    end

    it 'should be 1°C = 33,8 F' do
        deg = Degree.new()
        deg.value = 1
        deg.scale = 'C'
        deg.scale_transform = 'F'
        expect(deg.transform_C_to_F.round(2)).to be 33.8
    end

    it 'should be 1 K = -272,15°C' do
        deg = Degree.new()
        deg.value = 1
        deg.scale = 'K'
        deg.scale_transform = 'C'
        expect(deg.transform_K_to_C.round(2)).to be -272.15
    end

    it 'should be 1 K = -457,87 F' do
        deg = Degree.new()
        deg.value = 1
        deg.scale = 'K'
        deg.scale_transform = 'F'
        expect(deg.transform_K_to_F.round(2)).to be -457.87
    end

    it 'should be 1 F = -17,22°C' do
        deg = Degree.new()
        deg.value = 1
        deg.scale = 'K'
        deg.scale_transform = 'F'
        expect(deg.transform_F_to_C.round(2)).to be -17.22
    end
    it 'should be 1 F = 255,93 K' do
        deg = Degree.new()
        deg.value = 1
        deg.scale = 'K'
        deg.scale_transform = 'F'
        expect(deg.transform_F_to_K.round(2)).to be 255.93
    end
end
