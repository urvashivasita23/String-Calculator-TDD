# frozen_string_literal: true

require_relative '../string_calculator'

describe 'StringCalculator: Test Case 1' do
  context 'with empty input' do
    it 'returns 0' do
      expect_calculator_to_return('', 0)
    end
  end

  context 'with single number input' do
    it 'returns the number itself' do
      expect_calculator_to_return('2', 2)
    end
  end

  context 'with two numbers separated by a comma' do
    it 'returns the sum of the two numbers' do
      expect_calculator_to_return('2,3', 5)
    end
  end
end

describe 'StringCalculator: Test Case 2' do
  context 'with multiple numbers separated by a comma' do
    it 'returns the sum of all numbers' do
      expect_calculator_to_return('2,3,4', 9)
    end
  end
end

describe 'StringCalculator: Test Case 3' do
  context 'with \'\n\' allowed between numbers' do
    it 'returns the sum of all numbers' do
      expect_calculator_to_return('1\n,3,4', 8)
    end
  end

  context 'with invalid input' do
    it 'returns Not Allowed if \',\\n\' sequence is present' do
      expect_calculator_to_return("1,\n", 'Not Allowed')
    end
  end
end

describe 'StringCalculator: Test Case 4' do
  context 'with different delimiters' do
    it 'supports different delimiters and returns the sum' do
      expect_calculator_to_return("//;\n1;2", 3)
      expect_calculator_to_return("//#\n1#2#3", 6)
    end
  end
end

describe 'StringCalculator: Test Case 5' do
  context 'with negavtive input' do
    it 'raises an error if a negative number is provided' do
      expect { StringCalculator.add('1, -2, 4') }.to raise_error(RuntimeError, 'negatives not allowed -2')
    end
  end
end

def expect_calculator_to_return(input, expected_result)
  result = StringCalculator.add(input)
  expect(result).to eq(expected_result)
end
