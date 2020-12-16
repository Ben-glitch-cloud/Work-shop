
require './lib/Middle_Letter.rb'

describe Letter do   
    
    let(:item) {letter = Letter.new("word")}

    it 'make sure there is an input of word' do  
        expect(item.word).to eq("word")
    end   

    it 'should store word length' do 
        expect(item.len).to eq(0)
    end 

    describe "count_letter" do   
        it 'should count all the letter in the word "word"' do 
            expect(item.count_word).to eq(4)
        end  
    end  

    describe "half_word" do 
        it 'should find half the length of the word' do  
            item.count_word 
            expect(item.half_word).to eq(2)
        end 
    end  

    describe "find_middle" do 
        it 'should return the middle of the word' do  
            item.count_word 
            item.half_word 
            expect(item.find_middle).to eql("or")
        end 
    
        it 'should return the middle of the word' do 
            letter = Letter.new("woman") 
            letter.count_word 
            letter.half_word 
            expect(letter.find_middle).to eql("m")
        end   

        it 'should return the hole world if it is less then 2 length' do  
            letter = Letter.new("of") 
            letter.count_word 
            letter.half_word 
            expect(letter.find_middle).to eql("of")
        end 
    end 
end 