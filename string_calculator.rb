# frozen_string_literal: true

# String Calculator File
class StringCalculator
  def self.add(string_input)
    string_input.empty? ? 0 : string_input.to_i
  end
end
