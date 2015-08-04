require 'fizzbuzz'

describe NumberGame do
  subject(:game) { described_class.new }
  context 'knows when to' do
    context 'Fizz' do
      it { expect(game.play 3).to eq "Fizz" }
      it { expect(game.play 9).to eq "Fizz" }
    end
    context 'Buzz' do
      it { expect(game.play 5).to eq "Buzz" }
      it { expect(game.play 10).to eq "Buzz" }
    end
    context 'FizzBuzz' do
      it { expect(game.play 15).to eq "FizzBuzz" }
      it { expect(game.play 45).to eq "FizzBuzz" }
    end
    context 'Beep' do
      it { expect(game.play 6).to eq "Beep" }
      it { expect(game.play 12).to eq "Beep" }
    end
    context 'Boop' do
      it { expect(game.play 7).to eq "Boop" }
      it { expect(game.play 14).to eq "Boop" }
    end
    context 'BeepBoop' do
      it { expect(game.play 42).to eq "BeepBoop" }
      it { expect(game.play 84).to eq "BeepBoop" }
    end
    context 'Mihai' do
      it { expect(game.play 66).to eq "Mihai" }
      it { expect(game.play 132).to eq "Mihai" }
    end
    context 'Tolemy' do
      it { expect(game.play 123).to eq "Tolemy" }
    end
    context 'pass the number' do
      it { expect(game.play 4).to eq 4 }
      it { expect(game.play 8).to eq 8 }
      it { expect(game.play 16).to eq 16 }
    end
  end
end

