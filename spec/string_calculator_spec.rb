# frozen_string_literal: true

require_relative '../string_calculator'

describe StringCalculator do
  it 'returns 0 if the string is blank' do
    string = ''
    result = StringCalculator.add(string)
    expect(result).to eq(0)
  end
end
