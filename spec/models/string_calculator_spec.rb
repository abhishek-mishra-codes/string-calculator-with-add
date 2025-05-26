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
  end
end

# temp comment : 2 of 4 failures
# Failure/Error: expect(calculator.add('5,2')).to eq(7)
# Failure/Error: expect(calculator.add('5,5')).to eq(10)