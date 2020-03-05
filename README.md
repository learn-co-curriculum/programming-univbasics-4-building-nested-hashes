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

We're going to write the implementation of 4 methods to gradually build out a
deeply nested hash:

* `base_hash`
* `monopoly_with_second_tier`
* `monopoly_with_third_tier`
* `monopoly_with_fourth_tier`

For the second, third and fourth methods, we'll be updating the hash we created
in the previous method, only one tier deeper into the hash.

This means that after successfully implementing the first method, `bash_hash`,
copy your solution into `monopoly_with_second_tier`. There are some additional
expectations for the `monopoly_with_second_tier`, so what you just copied won't
_quite_ work. Modify the hash until you're passing all the tests for this second
method. Repeate this process by copying this solution into
`monopoly_with_third_tier`.

This lab has a detailed set of tests to guide you, so use `learn` to get
additional information on what is required.

### `bash_hash`

This method should do the following:

- return a hash with one key called `:railroads` that points to an empty hash

### `monopoly_with_second_tier`

This method builds on the hash returned by `base_hash`, updating the nested
`:railroads` hash so that it includes

- a key called `:pieces` set to `4`
- a key called `:rent_in_dollars` set to an empty hash
- a key called `:names` set to an empty hash
  
### `monopoly_with_third_tier`

This method builds on the hash returned by monopoly_with_second_tier updating
the nested `:rent_in_dollars` hash so that it includes:
  
- a `:one_piece_owned` key set to `25`
- a `:two_pieces_owned` key set to `50`
- a `:three_pieces_owned` key set to `100`
- a `:four_pieces_owned` key set to `200`

In addition, this method should also update the nested `:names` hash so that it includes:

- a `:reading_railroad` key that points to an empty hash
- a `:pennsylvania_railroad` key that points to an empty hash
- a `:b_and_o_railroad` key that points to an empty hash
- a `:shortline_railroad` key that points to an empty hash

### `monopoly_with_fourth_tier`

This method builds on the hash returned by monopoly_with_third_tier, updating
each of the nested hashes inside the `:names` hash so that

- he hash assigned to `:reading_railroad` includes a `:mortgage_value` key set
  to `100`
- the hash assigned to `:pennsylvania_railroad` includes a `:mortgage_value` key set to `200`
- the hash assigned to `:b_and_o_railroad` includes a `:mortgage_value` key set to `400`
- the hash assigned to `:shortline_railroad` includes a `:mortgage_value` key set to `800`

If you get stumped, we've included the final `Hash` in the
file `final_hash.rb` in this repository.

> **PATTERN FOR LEARNING**: We've seen many students take the final answer and
> pare it down to get the tests passing. This is not a good path to mastering
> this concept. The path that requires work in programming, at the gym, or in
> relationships creates the most benefit. Passing tests now is not as valuable
> as understanding these concepts later.

## Conclusion

Congratulations! You've built a pretty complex `Hash` with nesting. This should
prove to you that there's very little in this world that _can't_ be modeled
with nesting of `Hash`es, scalar values, and `Array`s.

## Resources

- [Ruby Documentation on Hashes](http://ruby-doc.org/core-2.5.0/Hash.html)
- [What is a Hash in Ruby?](http://ruby.about.com/od/rubyfeatures/a/hashes.htm)
