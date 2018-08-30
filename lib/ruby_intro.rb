#
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    sum = arr.sum
    return sum
end


def max_2_sum arr

    sum = 0
    if arr.length == 0
        sum = 0
    elsif arr.length == 1
        sum = arr[0]
    else
        arr = arr.sort
        sum = arr[arr.length-1] + arr[arr.length-2]
    end
    return sum

end

def sum_to_n? arr, n
    match = false
    if arr.length > 1
        for x in 0..(arr.length-1)
          for y in 0..(arr.length-1)
            if x != y
                sum = arr[x] + arr[y]
                if sum == n
                  match = true
                end
            end
          end
        end
    end
    return match
    
end

# Part 2

def hello(name)
    return "Hello, #{name}"

end

def starts_with_consonant? s
    match = false
    if s[0] =~ /[^aeiou]/i and s[0] =~ /[a-z]/i
        match = true
    end
    return match
    
end

def binary_multiple_of_4? s
    match = false
    if s !~ /[^01]/ and !s.empty?
        num = s.to_i
        if num % 4 == 0
            match = true
        end
    end
    return match

end

# Part 3

class BookInStock
    attr_accessor :price, :isbn
    def initialize(isbn, price)

        if isbn.empty?    
            raise ArgumentError.new("isbn cant be empty")
        else
            @isbn = isbn
        end
        if price <= 0
            raise ArgumentError.new("Price must be > 0")
        else
            @price = price
        end

    end
    def price_as_string()
        price = self.price
        price = price.to_s
        return "$%0.2f" % [price]
        
        
    end
end

