Enterprise FizzBuzz
============

:construction:

Because you need a completely SOLID FizzBuzz
=======

I watched Sandi Metz's talk on [refactoring the Gilded Rose](https://www.youtube.com/watch?v=0cKcWNj-MPI) and decided we don't need if statements any more... and things started to get out of hand. Still can't get it to select correctly for multiples... erp.

Instructions
----------

```shell
$ git clone https://github.com/spike01/FizzBuzz.git
```

`rspec` for the test suite. If you want to see the numbers actually printed out, load into a REPL (`$ require './lib/fizzbuzz.rb'`) and run `puts 1..100 .map { |number| fizzbuzz number }`
