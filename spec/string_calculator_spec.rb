# frozen_string_literal: true

require_relative '../string_calculator'

describe StringCalculator do
  it 'returns 0 if the string is blank' do
    string = ''
    result = StringCalculator.add(string)
    expect(result).to eq(0)
  end

  it 'returns the number itself if a single value is provided' do
    string = '2'
    result = StringCalculator.add(string)
    expect(result).to eq(string.to_i)
  end

  it 'returns the sum of two numbers if they are comma-separated' do
    string = '2,3'
    result = StringCalculator.add(string)
    expect(result).to eq(5)
  end

  it 'returns the sum of comma-separatedn n numbers ' do
    string = '2,3,4'
    result = StringCalculator.add(string)
    expect(result).to eq(9)
  end
end
