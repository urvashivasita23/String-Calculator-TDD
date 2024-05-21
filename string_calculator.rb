# frozen_string_literal: true

# String Calculator File
class StringCalculator
  def self.add(string_input)
    if string_input.chars.count <= 1
      string_input.empty? ? 0 : string_input.to_i
    else
      arr = []
      string_input.delete(', ').chars.each do |char|
        arr.push(char.to_i)
      end

      arr.sum
    end
  end
end
