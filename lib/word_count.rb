class String
define_method(:counter) do |my_word|

    sentence = self
    counter = 0
    sentence_array = []
    sentence_array = sentence.split()

    sentence_array.each do |word_to_check|

      if word_to_check == my_word
        counter += 1

      end
    end
    counter
  end
end
