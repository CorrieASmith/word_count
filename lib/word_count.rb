class String
define_method(:counter) do |my_word|

    sentence = self
    count = 0
    sentence_array = []
    sentence_array = sentence.split()

    sentence_array.each do |i|
      if i == counter
        count += 1
      end
    end
    count
  end
end
