class Letter 

    attr_reader :word 
    attr_reader :len 
    attr_reader :half
    
    def initialize(word)
        @word = word 
        @len = 0 
        @half = 0
    end  

    def count_word
        @len += @word.length
    end 

    def half_word
        @half += @len / 2 
    end  

    def find_middle
        if @len =< 2
            puts @word 
        elsif @len.even? 
            
        else  

        end
    end
end