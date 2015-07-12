=begin
Sort the words in a given sentence by length.
=end

def sort_string(string)
  string.split(" ").sort_by(&:length).join(" ")
end