=begin
Given a sentence, return true if the sentence is a palindrome.
You are supposed to write a method palindrome? to accomplish this task.
Note: Ignore whitespace and cases of characters.
=end

def palindrome?(sentence)
  str = sentence.downcase.gsub(' ', '')
  str == str.reverse
end