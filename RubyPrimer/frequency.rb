=begin
Find the frequency of a string in a sentence.
=end

def find_frequency(sentence, word)
  sentence.downcase.split(" ").count(word.downcase)
end