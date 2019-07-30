# Building Nested Hashes Lab

## Learning Goals

- Build a nested hash
- Add key/value pairs in a nested hash
- Update key/value pairs in a nested hash

## Introduction

In this lab, we will practice constructing deeply-nested `Hash`. This means
that we'll have a `Hash` that contains a `Hash` inside of it. Those "interior"
or "inner" Hashes might _themselves_ contain Hashes.

As a reminder, this might look like:

```ruby
# Greatly abbreviated!
countries_of_the_world = {
  :north_america => ["Canada", "USA"],
  :africa => ["Ghana", "Nigeria"]
}
```

We will work through this lab by filling out the _implementation_ of several
methods. Each method will return a `Hash` that is ***locally defined*** within
that method's implementation.

### Process

We're going to write the implementation of 4 methods

* `base_hash`
* `monopoly_with_second_tier`
* `monopoly_with_third_tier`
* `monopoly_with_fourth_tier`

Between the different implementations, we'll build on the previous method's
implementation. So the tests will guide you to a Hash that passes `base_hash`.
You should take the end result Hash of `base_hash` and copy it into
`monopoly_with_second_tier`. `monopoly_with_second_tier` has some additional
expectations so what you just copied won't _quite_ work. The tests will guide
you to getting it working. Repeat this process until you pass all the tests.
At the end of the exercise, your final method will have built up to returning a
multidimensional monopoly `Hash` that should look like this:

```ruby
monopoly =  {
  :railroads=>
  {
    :pieces=>4,
    :rent_in_dollars=>
    {
      :one_piece_owned=>25,
      :two_pieces_owned=>50,
      :three_pieces_owned=>100,
      :four_pieces_owned=>200
    },
    :names=>
    {
      :reading_railroad=>
      {
        "mortgage_value"=>"$100"
      },
      :pennsylvania_railroad=>
      {
        "mortgage_value"=>"$200"
      },
      :b_and_o_railroad=>
      {
        "mortgage_value"=>"$400"
      },
      :shortline=>
      {
        "mortgage_value"=>"$800"
      }
    }
  }
}
```

## Conclusion

Congratulations you've built a pretty complex Hash with nesting. This should
prove to you that there's very little in this world that _can't_ be modeled
with nesting of `Hash`es, scalar values, and `Array`s.

## Resources

- [Ruby Documentation on Hashes](http://ruby-doc.org/core-2.5.0/Hash.html)
- [What is a Hash in Ruby?](http://ruby.about.com/od/rubyfeatures/a/hashes.htm)
