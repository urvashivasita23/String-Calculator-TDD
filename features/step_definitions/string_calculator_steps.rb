class StringCalculator
  def add(string_input)
    num_array = string_input.split(',').map(&:to_i)
    num_array.sum
  end
end

Given('I have a string calculator') do
  @calculator = StringCalculator.new
end

When('I add {string}') do |string_input|
    @result = @calculator.add(string_input)
end

Then('the result should be {int}') do |expected_result|
  expect(@result).to eq(expected_result)
end
