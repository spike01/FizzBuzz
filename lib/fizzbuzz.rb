class FizzBuzzControl
  def fizzbuzz number
    IsDivisibleBy.for(number).response
  end
end

# replace conditional with polymorphism

class Number
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def response
    number
  end
end

# Sandi metz: inheritance is not evil, as long as it's at the lowest level of
# your object tree. And used for specialization, not to share behaviour

# naming is still shaky
# i'm still getting my head around this

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

module IsDivisibleBy
  DEFAULT_CLASS = Number
  SPECIALIZED_CLASSES = {
    15 => FizzBuzz,
    3 => Fizz,
    5 => Buzz
  }

  def self.for(number)
    (specialized_class(number) || DEFAULT_CLASS).new(number)
  end

  def self.specialized_class(number)
    SPECIALIZED_CLASSES.select { |key, value| number % key == 0 }[number]
  end
end
