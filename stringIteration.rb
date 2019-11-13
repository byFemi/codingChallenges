# Challenge: Write the method count_multibyte_char which takes a string as input and returns
# the number of multibyte characters (byte size > 1) in it.

# Essentially, utf-8 characters can be represented by up to four bytes.
# This code took each character and found the number of bytes inside it.

def count_multibyte_char (word)
  count = 0
  # Loops through each character
  # .count the bytes in each character, and increase multibyte count accordingly
  word.each_char do |c|
    if c.each_byte.count > 1
      count += 1
    end
  end
  return count
end

# Review
# This code could easily be more 'clever'