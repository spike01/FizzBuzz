Enterprise FizzBuzz
============

Because you need a completely SOLID FizzBuzz
=======

I watched Sandi Metz's talk on [refactoring the Gilded Rose](https://www.youtube.com/watch?v=0cKcWNj-MPI) and decided we don't need if statements any more... and things started to get out of hand. There's probably a cleaner way to do the selection, but it works, and after the hours I've spent on this, that's all I really care about for now.

Now with extra support for "Boop" and "Beep"!

Instructions
----------

```shell
$ git clone https://github.com/spike01/FizzBuzz.git
```

`rspec` for the test suite. If you want to see the numbers actually printed out, load into a REPL (`$ require './lib/fizzbuzz.rb'`) and run `puts (1..100).map { |number| Game.new.play(number) }`
