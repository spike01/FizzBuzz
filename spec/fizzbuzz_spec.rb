require 'fizzbuzz'

describe 'fizzbuzz' do
  context 'it knows that the number is divisible by' do
    it '3' do
      expect(is_divisible_by_3?(3)).to be true
    end
    it '5' do
      expect(is_divisible_by_5?(5)).to be true
    end
    it '15' do
      expect(is_divisible_by_15?(15)).to be true
    end
  end

  context 'it knows when to' do
    it 'Fizz' do
      expect(fizzbuzz(3)).to eq "Fizz"
    end
    it 'Buzz' do
      expect(fizzbuzz(5)).to eq "Buzz"
    end
    it 'FizzBuzz' do
      expect(fizzbuzz(15)).to eq "FizzBuzz"
    end
    it 'pass the number' do
      expect(fizzbuzz(4)).to eq 4
      expect(fizzbuzz(7)).to eq 7
      expect(fizzbuzz(16)). to eq 16
    end
  end
end

