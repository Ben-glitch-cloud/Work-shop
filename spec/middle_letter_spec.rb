
require './lib/Middle_Letter.rb'

describe Letter do  
    it 'make sure there is an input of word' do  
        letter = Letter.new("word")
        expect(letter.word).to eq("word")
    end   

    it 'should store word length' do 
        letter = Letter.new("word")
        expect(letter.len).to eq(0)
    end 

    describe "count_letter" do   
        it 'should count all the letter in the word "word"' do 
            letter = Letter.new("word") 
            expect(letter.count_word).to eq(4)
        end  
    end  

    describe "half_word" do 
        it 'should find half the length of the word' do  
            letter = Letter.new("word") 
            letter.count_word 
            expect(letter.half_word).to eq(2)
        end 
    end 
end 