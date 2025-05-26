# frozen_string_literal: true

# a simple class to implement 'addition' - check README.md for details
class StringCalculator
  # @return [Integer] the sum of the numbers, or 0 if the string is empty
  def add(numbers)
    return 0 if numbers.empty?

    # input excluding ',' means single digit only
    return numbers.to_i if numbers.exclude? ','

    int_numbers = numbers.split(',').map(&:to_i)
    return int_numbers[0] + int_numbers[1] if int_numbers.size == 2

    return int_numbers[0] + int_numbers[1] + int_numbers[2] if int_numbers.size == 3

    int_numbers.sum
  end
end
