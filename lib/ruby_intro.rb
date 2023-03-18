# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.inject(0, :+)
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  arr.sort!
  arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  return false if arr.empty? || arr.length == 1
  arr.each_with_index do |num, index|
    arr.each_with_index do |num2, index2|
      if index != index2 && num + num2 == n
        return true
      end
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  if s =~ /\A[01]+\z/
    s.to_i(2) % 4 == 0
  else
    false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
