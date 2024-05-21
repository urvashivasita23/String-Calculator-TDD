# frozen_string_literal: true

# String Calculator File
class StringCalculator
  def self.add(string_input)
    if string_input.chars.count <= 1
      string_input.empty? ? 0 : string_input.to_i
    else
      return 'Not Allowed' if string_input.include?(",\n")

      delimiter = ','
      if string_input.start_with?('//')
        delimiter = string_input[2]
        string_input = string_input.split("\n", 2).last
      end

      numbers = string_input.split(delimiter).map(&:to_i)
      negatives = numbers.select(&:negative?)
      return "negatives not allowed #{negatives.join(' ')}" if negatives.any?

      numbers.sum
    end
  end
end
