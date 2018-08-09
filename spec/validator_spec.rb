# frozen_string_literal: true

require 'validator'

describe Validator do
  it 'will return false for a number longer than 16 digits' do
    expect(Validator.new.validate(12345678901234567)).to eq(false)
  end

  it 'will return false for an invalid number of 891' do
    expect(Validator.new.validate(891)).to eq(false)
  end

  it 'will return false for a single digit' do
    expect(Validator.new.validate(1)).to eq(false)
  end

  it 'will return true for 26' do
    expect(Validator.new.validate(26)).to eq(true)
  end

  it 'will return true for 28' do
    expect(Validator.new.validate(28)).to eq(false)
  end
end
