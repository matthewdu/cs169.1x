# Define a method hello(name) that takes a string representing a name and
# returns the string "Hello, " concatenated with the name.

def hello(name)
    return "Hello, " + name
end

# Define a method starts_with_consonant?(s) that takes a string and returns true
# if it starts with a consonant and false otherwise. (For our purposes, a
# consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for
# both upper and lower case and for nonletters! 

def starts_with_consonant?(s)
    temp = s.downcase
    return false unless (/[a-z]/ === temp[0])
    return true unless (/[a,e,i,o,u]/ === temp[0])
    return false
end

# Define a method binary_multiple_of_4?(s) that takes a string and returns true
# if the string represents a binary number that is a multiple of 4. NOTE: be
# sure it returns false if the string is not a valid binary number! 

def binary_multiple_of_4?(s)
    return false if s.empty?
    s.each_char{
        |x|
        return false unless /[0,1]/ === x
    }
    num = s.to_i(2)
    return num%4 == 0
end