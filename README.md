# Building Nested Hashes Lab

## Learning Goals

- Build a nested hash
- Add key/value pairs in a nested hash
- Update key/value pairs in a nested hash

## Introduction

In this lab, we will practice constructing deeply-nested `Hash`. This means
that we'll have a `Hash` that contains a `Hash` inside of it. Those "interior"
or "inner" `Hash`es might _themselves_ contain `Hash`es.

As a reminder, this might look like:

```ruby
# Greatly abbreviated!
countries_and_capitals_of_the_world = {
  :north_america => {
    "Canada" => {
      :capital => "Ottawa",
      :capital_climate => "Kőppen Dfb"
    },
    "USA" => {
      :capital => "Washington D.C.",
      :capital_climate => "Kőppen Cfa"
    }
  },
  :africa => {
    "Ghana" => {
      :capital => "Accra",
      :capital_climate => "Kőppen Aw"
    },
    "Nigeria" => {
      :capital => "Abuja",
      :capital_climate => "Kőppen Aw"
    }
  }
}

```

We will work through this lab by filling out the _implementation_ of four
methods. Each method will return a `Hash` that is ***locally defined*** within
that method's implementation. The comments in `./intro_to_ruby_hashes_lab.rb`
and the results of running the tests will guide you.

### Process

We're going to write the implementation of 4 methods

* `base_hash`
* `monopoly_with_second_tier`
* `monopoly_with_third_tier`
* `monopoly_with_fourth_tier`

Between the different implementations, we'll build on the previous method's
implementation. So the tests will guide you first to a `Hash` that passes
`base_hash`'s test.

Then, you should take the end successful `Hash` from `base_hash` and copy it
into `monopoly_with_second_tier`. The `monopoly_with_second_tier` has some
additional expectations so what you just copied won't _quite_ work. The tests
will guide you to getting _it_ working. Repeat this process until your methods
pass all the tests.  If you get stumped, we've included the final `Hash` in the
file `final_hash.rb` in this repository.

> **PATTERN FOR LEARNING**: We've seen many students take the final answer and
> pare it down to get the tests passing. This is not a good path to mastering
> this concept. The path that requires work in programming, at the gym, or in
> relationships creates the most benefit.

## Conclusion

Congratulations! You've built a pretty complex `Hash` with nesting. This should
prove to you that there's very little in this world that _can't_ be modeled
with nesting of `Hash`es, scalar values, and `Array`s.

## Resources

- [Ruby Documentation on Hashes](http://ruby-doc.org/core-2.5.0/Hash.html)
- [What is a Hash in Ruby?](http://ruby.about.com/od/rubyfeatures/a/hashes.htm)
