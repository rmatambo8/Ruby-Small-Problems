Class methods are called on a class, while instance methods are called on an object.

when there is a :: that is a method will be called on a class
when there is a # that is a method will be called on a specific instance within a class.


Take the string class for example:
  String.try_convert('str') #=> 'str'  - deals with the string class.
  String.try_convert(/str/) #=> nil < here I am calling a method on an object that cannot be converted 

With the example above:
  File.path(path) returns a str representation of the path. ( class method)
  File.new(str).path returns the pathname used to create file as a string.
