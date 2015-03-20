require 'fizzbuzz'

describe FizzBuzzControl do
  subject(:fizzbuzz) { described_class.new }
  context 'knows when to' do
    context 'Fizz' do
      it { expect(fizzbuzz.fizzbuzz 3).to eq "Fizz" }
      it { expect(fizzbuzz.fizzbuzz 6).to eq "Fizz" }
    end
    context 'Buzz' do
      it { expect(fizzbuzz.fizzbuzz 5).to eq "Buzz" }
    end
    context 'FizzBuzz' do
      it { expect(fizzbuzz.fizzbuzz 15).to eq "FizzBuzz" }
      it { expect(fizzbuzz.fizzbuzz 45).to eq "FizzBuzz" }
    end
    context 'pass the number' do
      it { expect(fizzbuzz.fizzbuzz 4).to eq 4 }
      it { expect(fizzbuzz.fizzbuzz 7).to eq 7 }
      it { expect(fizzbuzz.fizzbuzz 16).to eq 16 }
    end
  end
end

#describe IsDivisibleBy do
  #subject(:is_divisible_by) { described_class.new }
  #context 'knows that the number is divisible by' do

    #it '3' do
      #expect(is_divisible_by.is_divisible_by 3, 3).to be true
    #end
    #it 'not 3' do
      #expect(is_divisible_by.is_divisible_by 5, 3).to be false
    #end
    #it '5' do
      #expect(is_divisible_by.is_divisible_by 5, 5).to be true
    #end
    #it 'not 5' do 
      #expect(is_divisible_by.is_divisible_by 1, 3).to be false
    #end
    #it '15' do
      #expect(is_divisible_by.is_divisible_by 15, 15).to be true
    #end
  #end
#end
