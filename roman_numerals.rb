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
    digits = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000 }
    my_array = letters.split("") 
    my_array.each do |let|
      arabic = digits[let] 
     answer += arabic
    end
    puts answer
    answer
   end
end     
    
    
  