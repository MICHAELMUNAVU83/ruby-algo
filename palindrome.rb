# Palindrome is a word, phrase, number, or other sequence of characters which reads the same backward or forward. This includes capital letters, punctuation, and word dividers.

# gsub! is a String class method in Ruby which is used to return a 
# copy of the given string with all occurrences of pattern substituted  for the second argument

def palindrome(string)
    string.downcase!
    string.gsub!(/[^a-z]/, '')
    if  string == string.reverse
        return true
    else
        return false
    end
   

end





puts palindrome("mom")

puts palindrome("madam")