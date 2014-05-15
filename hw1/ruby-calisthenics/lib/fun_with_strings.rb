module FunWithStrings
  def palindrome?
    str = self.downcase
    str = str.gsub(/\W/, "")
    str = str.gsub(/[0-9]|_/, "")
    return str == str.reverse
  end
  def count_words
    wordCount = Hash.new(0)
    self.downcase.scan(/\w+/).each{
      |word|
      wordCount[word] += 1
    }
    return wordCount
  end
  def anagram_groups
    return [] if self.length == 0
    self.split.group_by {
      |word|
        word.downcase.chars.sort
    }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
