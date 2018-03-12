class Fixnum

  @@numbers = {
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
  }

  def to_roman
    # Create a string for output storage
    output = ""
    # Due to remainder, using self alone won't do, must have variable so that the remainder can be substituted after division occurs
    input = self
    # iterate through hash keys to test which values the input value are divisible by until input is 0
    until (input == 0)
    @@numbers.each do |key, value|
      #Find the quotient of the input divided by key
        result = input.quo(key)
        #Append the value of the divided key from the key/value pair
        output << value * result
        #Store Remainder in input value for the loops continuation
        input = (input % key)
    end
    end
    return output
  end
  end


(1..100).each do |x|
  puts x.to_roman
end
