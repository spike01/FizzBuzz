class NumberGame
  def play(number)
    IsDivisibleBy.for(number).response
  end
end

class Number
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def response
    number
  end
end

# Sandi Metz: inheritance is not evil, as long as it's at the lowest level of
# your object tree. And used for specialization, not to share behaviour

class FizzBuzz < Number
  def response
    "FizzBuzz"
  end
end

class Fizz < Number
  def response
    "Fizz"
  end
end

class Buzz < Number
  def response
    "Buzz"
  end
end

class Beep < Number
  def response
    "Beep"
  end
end

class Boop < Number
  def response
    "Boop"
  end
end

class BeepBoop < Number
  def response
    "BeepBoop"
  end
end

class Mihai < Number
  def response
    "Mihai"
  end
end

# This now fully follows open/closed - additional rules are implemented purely
# by extending configuration and adding extra subclasses

module IsDivisibleBy
  DEFAULT_CLASS = Number
  SPECIALIZED_CLASSES = {
    66 => Mihai,
    42 => BeepBoop,
    15 => FizzBuzz,
    7 => Boop,
    6 => Beep,
    5 => Buzz,
    3 => Fizz
  }

  def self.for(number)
    (specialized_class(number) || DEFAULT_CLASS).new(number)
  end

  def self.specialized_class(number)
    SPECIALIZED_CLASSES.select { |key, value| number % key == 0 }.values.first
  end
end
