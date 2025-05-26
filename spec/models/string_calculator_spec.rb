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
  end
end

# temp comment - 1 out of 2 failure
# Failure/Error: expect(calculator.add('2')).to eq(2)
#        expected: 2
#             got: 0
