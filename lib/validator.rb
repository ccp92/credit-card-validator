# frozen_string_literal: true

class Validator
  def validate(number)
    digits = number.to_s.split('').map!(&:to_i)
    return false if digits.length > 16 || digits.length <= 1
    sum = sum_digits(digits)
    return false unless (sum % 10).zero?
    true
  end

  private

  def sum_digits(digits)
    sum = 0
    count = digits.length.even? ? 0 : 1
    digits.each do |digit|
      sum += (digit * 2) < 10 ? (digit * 2) : (digit * 2) - 9 if count.even?
      sum += digit if count.odd?
      count += 1
    end
    sum
  end
end
