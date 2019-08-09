# Building Nested Hashes Lab

## Learning Goals

- Build a nested `Hash`

## Introduction

In this lab, we will practice constructing a deeply nested `Hash`.

## Instructions

You are tasked with building a nested `Hash` one layer (or "level") at a time, in
a similar way to how we built our `epic_tragedy` `Hash` in the previous lesson.
Read the test output very carefully; it will guide you through building the
necessary methods. At the end of the exercise, your multidimensional monopoly
`Hash` should look like this:

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

## Resources

- [Ruby Documentation on Hashes](http://ruby-doc.org/core-2.5.0/Hash.html)
- [What is a Hash in Ruby?](http://ruby.about.com/od/rubyfeatures/a/hashes.htm)
