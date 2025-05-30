# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number for a single number input' do
      expect(calculator.add('2')).to eq(2)
    end

    context 'returns sum of 2 input digits' do
      it 'returns 7 for 5,2 inputs' do
        expect(calculator.add('5,2')).to eq(7)
      end

      it 'returns 10 for 5,5 inputs' do
        expect(calculator.add('5,5')).to eq(10)
      end
    end

    context 'returns sum of 3 input digits' do
      it 'returns 10 for 5,2,3 inputs' do
        expect(calculator.add('5,2,3')).to eq(10)
      end

      it 'returns 15 for 5,5,5 inputs' do
        expect(calculator.add('5,5,5')).to eq(15)
      end
    end

    context 'returns sum of any number of input digits passed' do
      it 'returns 120 for 10,100,2,8 inputs' do
        expect(calculator.add('10,100,2,8')).to eq(120)
      end

      it 'returns 15 for 5,5,5,5,5,5,50 inputs' do
        expect(calculator.add('5,5,5,5,5,5,50')).to eq(80)
      end
    end

    context 'supports different delimiters' do
      it 'allows \n as delimiter' do
        expect(calculator.add('5\n6')).to eq(11)
      end

      it 'allows mix of \n and , as delimiter' do
        expect(calculator.add('5\n6,1')).to eq(12)
      end

      it 'allows custom delimiter' do
        expect(calculator.add('//;\n1;2')).to eq(3)
      end
    end

    context 'returns sum of any number of input digits passed' do
      it 'returns 120 for 10,100,2,8 inputs' do
        expect(calculator.add('10,100,2,8')).to eq(120)
      end

      it 'returns 15 for 5,5,5,5,5,5,50 inputs' do
        expect(calculator.add('5,5,5,5,5,5,50')).to eq(80)
      end
    end

    context 'Negative inputs not allowed' do
      it 'throws exceptions if negative values are included' do
        expect { calculator.add('-1,-42') }.to raise_error(ArgumentError, 'Negative numbers not allowed: -1, -42')
      end
    end

    context 'Do product when * as separator' do
      it 'should return 10 for 5*2' do
        expect(calculator.add('//*\n5*2')).to eq(10)
      end

      it 'should return 0 for 5*2*0' do
        expect(calculator.add('//*\n5*2*0')).to eq(0)
      end
    end
  end
end
