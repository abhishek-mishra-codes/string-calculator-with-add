# frozen_string_literal: true

# a simple class to implement 'addition' - check README.md for details
class StringCalculator
  # @return [Integer] the sum of the numbers, or 0 if the string is empty
  def add(numbers)
    numbers.to_i if numbers.exclude?(',') # as ''.to_i returns 0 only

    string_to_numbers_array(numbers).sum
  end

  def string_to_numbers_array(numbers)
    numbers.split(',').map(&:to_i)
  end
end
