class RomanNumeral
  def self.convert(num)
    answer = []  
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
