# Your code goes here!
class Anagram
    attr_accessor :word

    # init with word
    def initialize(word)
        @word = word
    end

    def match(arr)
      # create return arr
      arr_of_anagrams = []

        # split words into arr of letters
        arr_of_letters = arr.map{|el| el.split('')}

        # iterate over arr of letters
        arr_of_letters.each do |el| 
            # checks if sorted current element, and @word are equal  
          if el.sort == @word.split('').sort 
            # if true add current el to return arr
            arr_of_anagrams << el.join('')
          end
        end
        # implicit return
        arr_of_anagrams
    end
end