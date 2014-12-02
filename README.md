---
tags: hashes, micro, introduction
languages: ruby
resources: 1
---
# Introduction To Hashes
A hash is a collection of key-value pairs. A key-value pair is an association where a key is assigned a specific value. A hash is represented with curly braces `{ }` and consists of a key, usually a [symbol](http://www.ruby-doc.org/core-2.1.5/Symbol.html) that points to a value.  

> `hash = {:key => "value", :another_key => "another value"}`

Given a hash named positions that stores employees by their positions:

```ruby
positions = {:office_manager => "Carley McGee", :coo => "Kristi Riordan ", :placements_manager => "Jackie Morgan", :creative_designer => "Edvin Lee"}
```

>Open up your terminal and type out the hash structure above in it.

You find the value of a certain key (in the example below `office_manager`) by calling the hash name and setting the key of the value you are interested in square brackets like this:

```ruby
positions[:office_manager]
```
this would return the string:
```ruby
"Carley McGee"
```

## Objectives
1. Become comfortable reading and using the official documentation of the Ruby Language
2. Gain proficiency instantiating hashes
3. Gain understanding of nested hash creation and retrieval
4. Gain proficiency performing simple manipulations

## Instructions
1. MAKE SURE TO READ THE INSTRUCTIONS IN THE `intro_to_ruby_hashes_lab_spec.rb`
2. If you do not understand the instructions, consult an instructor

## Resources
1. [What is a Hash in Ruby?](http://ruby.about.com/od/rubyfeatures/a/hashes.htm)
2. [Ruby Documentation on Hashes](http://ruby-doc.org/core-2.1.3/Hash.html)
