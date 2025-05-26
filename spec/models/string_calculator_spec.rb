# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StringCalculator do
  context '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new
      expect(calculator.add('')).to eq(0)
    end
  end
end

# temp comment - Exception after this step
## NameError: uninitialized constant StringCalculator
