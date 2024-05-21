# frozen_string_literal: true

# String Calculator File
class StringCalculator
  def self.add(string_input)
    if string_input.chars.count <= 1
      string_input.empty? ? 0 : string_input.to_i
    else
      return 'Not Allowed' if string_input.include?(",\n")

      numbers = string_input.delete(', ').chars.map(&:to_i)
      numbers.sum
    end
  end
end
