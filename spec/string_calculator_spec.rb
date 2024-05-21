# frozen_string_literal: true

require_relative '../string_calculator'

# RSpec tests for the StringCalculator class
describe 'StringCalculator: Test Case 1' do
  # Test case for when the input string is empty
  it 'returns 0 if the string is blank' do
    string = ''
    result = StringCalculator.add(string)
    # Expect the result to be 0
    expect(result).to eq(0)
  end

  # Test case for when the input string contains a single number
  it 'returns the number itself if a single value is provided' do
    string = '2'
    result = StringCalculator.add(string)
    # Expect the result to be the integer value of the string
    expect(result).to eq(string.to_i)
  end

  # Test case for when the input string contains two numbers separated by a comma
  it 'returns the sum of two numbers if they are comma-separated' do
    # Define a string with two numbers separated by a comma
    string = '2,3'
    result = StringCalculator.add(string)
    # Expect the result to be the sum of the two numbers
    expect(result).to eq(5)
  end
end

describe 'StringCalculator: Test Case 2' do
  # Test case for when the input string contains n numbers separated by a comma
  it 'returns the sum of comma-separated n numbers ' do
    # Define a string with n numbers separated by a comma
    string = '2,3,4'
    result = StringCalculator.add(string)
    # Expect the result to be the sum of the all numbers
    expect(result).to eq(9)
  end
end

describe 'StringCalculator: Test Case 3' do
  it 'Valid Input: \n allowed between number : return the sum ' do
    string = '1\n,3,4'
    result = StringCalculator.add(string)
    # Expect the result to be the sum of the all numbers and allow \n between number
    expect(result).to eq(8)
  end

  it 'Invalid Input: \n allowed between number : return Not allowd' do
    string = "1,\n"
    result = StringCalculator.add(string)
    # Expect the result to be the sum of the all numbers and not allow \n between number
    expect(result).to eq('Not Allowed')
  end
end

describe 'StringCalculator: Test Case 4' do
  it 'Support different delimiters : return the sum ' do
    string = "//;\n1;2"
    result = StringCalculator.add(string)
    # Expect the result to be the sum of the all numbers and allow ; between number
    expect(result).to eq(3)
  end

  it 'Support different delimiters : return the sum ' do
    string = "//#\n1#2#3"
    result = StringCalculator.add(string)
    # Expect the result to be the sum of the all numbers and allow # between number
    expect(result).to eq(6)
  end
end

describe 'StringCalculator: Test Case 5' do
  it 'Negative Number not allowed : return error message : single value' do
    string = '1, -2, 4'
    result = StringCalculator.add(string)
    # Expect the result to be the sum of the all numbers and allow \n between number
    expect(result).to eq('negatives not allowed -2')
  end
end
