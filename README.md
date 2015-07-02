hashes

1. intro that incl repl
2. symbols readme
2. this readme and repl on nesting/accessing/adding
3. monopoly lab
4. simple nesting lab
4. iteration readme and key for min value lab
5. readme and repl on higher level hash methods
6. iterating and manipulating I - apples and holidays

# Building Hashes

So far, we've seen hashes that store values in associated keys. In the hashes we've built up until now, each key points to a single value. Hashes are so useful, however, because they can be multi-dimensional, or nested. A key in a hash can point to a value that is a *collection of objects*, i.e. an array or even another hash. Let's take a look: 

```ruby
flatiron_school = {
  instructors: ["Avi", "Jeff", "Rose"], 
  dev_team: ["Jonas", "Yeti", "Seiji"],
  students: ["Sarah", "you", "John", "David"]
}
```

In the above example, each key points to an array of names. Nested hashes can get pretty complicated. You could have a key that points to a value of a hash and that hash can have keys that point to values of still more hashes and so on and so on. You can think of a nested hash as a tree. Let's take a closer look. 

## Epic Tragedy Example

You're 16 years old and back in high school english class. Luckily for us, our teacher is kind of lazy and we get to watch the Romeo and Juliet movie from the '90s with Leonardo DiCaprio and Claire Danes. 

![](http://scalar.usc.edu/works/romeo-and-juliet-act-2-scene-2-through-the-years/media/RomeoandJuliet5.jpg)

*If you have not seen this movie, I would recommend watching it before proceeding with this course or anything else in your life*

We need to get ready for the Romeo and Juliet quiz our teacher has scheduled for us. We will definitely be required to answer some questions on the cast of characters and their attributes and relationships to one another. Let's map out that information: 



## Objectives
1. Become comfortable reading and using the official documentation of the Ruby Language
2. Gain proficiency instantiating hashes
3. Gain understanding of nested hash creation and retrieval
4. Gain proficiency performing simple manipulations

## Instructions

The third test in this lab requires you to build out a multidimentional hash (monopoly).  A multidimentional hash is simply a hash of hashes - a key can point to a value that is an additiona hash, and so on. You can think of it as nesting.

At the end of the exercice your multidimentional monopoly hash should look like this:

```ruby
monopoly =  {
  :railroads=>
  {
    :pieces=>4,
    "rent_in_dollars"=>
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

1. Follow the comment instructions in `intro_to_ruby_hashes_lab_spec.rb` and go through each test sequentially.
2. If you do not understand the instructions, consult an instructor

## Resources
1. [What is a Hash in Ruby?](http://ruby.about.com/od/rubyfeatures/a/hashes.htm)
2. [Ruby Documentation on Hashes](http://ruby-doc.org/core-2.1.3/Hash.html)
