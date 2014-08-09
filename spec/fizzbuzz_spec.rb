require 'fizzbuzz'

describe 'fizzbuzz' do
  context 'it knows that the number is divisible by' do
    it '3' do
      expect(is_divisible_by_3?(3)).to be true
    end
  end
end

