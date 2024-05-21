# frozen_string_literal: true

# String Calculator File
class StringCalculator
  def self.add(string_input)
    return 0 if string_input.empty?

    delimiter = string_input.start_with?('//') ? string_input[2] : ','
    string_input = string_input.split("\n", 2).last if string_input.start_with?('//')

    return 'Not Allowed' if string_input.include?(",\n")

    numbers = string_input.split(delimiter).map(&:to_i)

    handle_negatives(numbers)
    numbers.sum
  end

  def self.handle_negatives(numbers)
    negatives = numbers.select(&:negative?)
    raise "negatives not allowed #{negatives.join(' ')}" unless negatives.empty?
  end
end
