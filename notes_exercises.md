# Exercise 2

## Notes

### Problem 1 - how old is teddy?

- this problem can be done in several ways, i used the `.sample` method and their solution was to use the `.rand` method.

### Easy 3 - palindrome 2

- Regex can make life much easier.

### Easy 4 - String to number

- mind blowing
  - the use of `hashes`
  - when converting from one to the other, I can use a hash
  - In this example, their solution was to use the hash as a conversion of constants
- incrementing something by 10
  - they iterated through an array and with each value, they multiplied by ten and then added the new digit as they went through.

## Methods

- `.rand` method - selects a random value within an array.

- `.delete` can be used with regex i can use `^a-z0-9` to mean the ones that are not in a- z and 0-9 range

- `.sort_by` allows things to be sorted by a parameter ( like length.)

- `.upto` method allows me to do the same thing as `(1..n)`

  - ```ruby
    def multisum(max_value)
      sum = 0
      1.upto(max_value) do |number|
        if multiple?(number, 3) || multiple?(number, 5)
          sum += number
        end
      end
      sum
    end
    ```

