# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  
  total = 0

  if arr.empty?
    return 0
  else
    
    for i in 0..arr.length-1 do
      total = total + arr[i]

    end
  end

  return total

end

def max_2_sum arr

  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else

    # Finds the largest number in the array
    largest = -10000
    indexOfLargest = -1
    for i in 0..arr.length-1 do

      if largest < arr[i]
        largest = arr[i]
        indexOfLargest = i # Stores index of largest for finding second largest later
      end
    end

    # Finds the second largest number in the array
    secondLargest = -10000
    for i in 0..arr.length-1 do

      # Checks that element being investigated isn't where the largest number is stored
      if (i != indexOfLargest) && (secondLargest < arr[i])
        secondLargest = arr[i]
      end

    end
    
    total = largest + secondLargest
    return total

  end

end

def sum_to_n? arr, n
  
  # For a given element in the array (i), compare it with every other element
  # in the array (j)
  for i in 0..arr.length-1 do

    for j in 0..arr.length-1 do

      if i != j # Makes sure the same element isn't compared to itself
        nCheck = arr[i] + arr[j]
          # if the two numbers added together is equal to n, return true
          if nCheck == n
            return true
          end
        end
      
    end

  end
  # Returns false if there is no combination of numbers in the array that
  # could equal n
  return false
end

# Part 2

def hello(name)
  greeting = "Hello, " + name
  return greeting
end

def starts_with_consonant? s
  consonantExists = /\A[B-DF-HJ-NP-TV-Zb-df-hj-np-tv-z]/.match?(s)
  return consonantExists
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    
    # Try-catch exceptions
    if (isbn.length == 0)
      raise ArgumentError
    end
    if (price <= 0)
      raise ArgumentError
    end

    @isbn = isbn
    @price = price

  end

  # Getters
  def isbn
    @isbn
  end
  
  def price
    @price
  end

  #Setters
  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string

    # Converts the price to a string
    formattedPrice = price.to_s

    # If the price doesn't have a decimal place
    if price % 1 == 0
      # Append two decimal places to the price
      formattedPrice = formattedPrice + ".00"
    # If the price has one decimal place
    elsif price % 1 > 0 && price % 1 < 0.11
       # Append one decimal place to the price
      formattedPrice = formattedPrice + "0"
    end

    return "$#{formattedPrice}"

  end

end