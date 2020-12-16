class Letter 

    attr_reader :word, :len, :half
    
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
        if @len <= 2
             @word 
        elsif @len.even? 
            @word[(@half - 1)..@half]
        else  
            @word[@half]
        end
    end
end