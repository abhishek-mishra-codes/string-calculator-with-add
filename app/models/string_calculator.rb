# frozen_string_literal: true

# a simple class to implement 'addition' - check README.md for details
class StringCalculator
  # @return [Integer] the sum of the numbers, or 0 if the string is empty
  def add(numbers)
    check_and_raise_for_negative(numbers)

    numbers.to_i if numbers.exclude?(',') # as ''.to_i returns 0 only

    string_to_numbers_array(numbers).sum
  end

  def check_and_raise_for_negative(numbers)
    int_nums = string_to_numbers_array(numbers)
    negatives = int_nums.select { |num| num < 0 }
    raise ArgumentError, "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  end

  def string_to_numbers_array(numbers)
    delimiter = separator(numbers)
    # to_i makes rest of the chars 0, so we don't have to bother about it
    numbers.gsub('\n', delimiter).split(delimiter).map(&:to_i)
  end

  # if input starts with //, consider 3rd value as separator
  def separator(numbers)
    @separator ||= numbers[0...2] == '//' ? numbers[2, 1] : ','
  end
end
