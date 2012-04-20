class RomanNumeral
  def self.convert(num)
    answer = []  
    if num == 0
      "nulla"
    else  
    digits = [[1000, "M"],[900, "CM"],[500, "D"],[400, "CD"],[100, "C"],[90, "XC"],[50, "L"], [40, "XL"], [10, "X"], [9, "IX"], [5, "V"],  [4, "IV"], [1, "I"]]        
      digits.each do |pairing|
        while num >= pairing[0]          
          num = num - pairing[0]
          answer << pairing[1]
        end
      end
      answer.join('')
    end
  end
end

class ArabicNumeral
  def self.convert(letters)
    answer = 0    
    digits = { "I" => 1, "V" => 5 }
    my_array = letters.split("") # if letters are VII then => ["V", "I", "I"]
    my_single_letter = my_array[0]     
    digits[my_single_letter] # => 1
   
    answer += digits[my_single_letter]

     end
  end     
    
    
    # end
    # my_array.each do [let]
    #      my_single_letter = my_array[0]     
    #      
    #    end  
    
    #
    
    
    
    # #first split the letters
    # splitchars = letter.split("")
    # puts splitchars
    # #then decode the letters
    # puts splitchars.take(1)
    #    
    #    
    # my_num = decoder(ch.take(1))
    # 
    # puts splitchars.take(2)
    # answer =
    
    # 
    # if letter == "I" 
    #   1
    # else
    #   if letter == "II"
    #     2
    #   else
    #     if letter == "III"
    #       3
    #     else
    #       if letter = "IV" 
    #         4
    #       end
    #     end
    #   end
    # end
    
    # digits = [[1000, "M"],[900, "CM"],[500, "D"],[400, "CD"],[100, "C"],[90, "XC"],[50, "L"], [40, "XL"], [10, "X"], [9, "IX"], [5, "V"],  [4, "IV"], [1, "I"]]        
    #   digits.each do |pairing|
    #     if letter == pairing[1]
    #       #can't say if letter is equal to pairing, because it'll only look in digits
    #       #it need to say that for every letter,convert it 
    #       puts letter      
    #       answer = 1 #pairing[0] 
    #       puts answer
    #     end
    #   end
     #answer = answer
#   end
#   
# end  

#digits = [[1, "I"],[5, "V"],[7, "VII"],[8, "XIII"],[9, "IX"],[10, "X"] ,[11, "XI"] ]        #[1000, "M"],[900, "CM"],[500, "D"],[400, "CD"],[100, "C"],[90, "XC"],[50, "L"], [40, "XL"], [10, "X"], [9, "IX"], [5, "V"],  [4, "IV"], 
