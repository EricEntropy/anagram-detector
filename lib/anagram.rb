# Your code goes here!
class Anagram 
    def initialize(word)
        @word = word.split("")
    end 

    attr_accessor :word

    def match(list)
        split_word = []
        match = []
        list.each do |x| 
            #for each element in list, split it and put it into split_word
            split_word = x.split("")
            #if the splited sorted element matches the given word, add it to match
            if split_word.sort == @word.sort
                match << x
            end
        end
        return match
    end 
end 