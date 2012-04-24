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

    digits = { "M" => 1000, "CM" => 900, "D" => 500, "C" => 100, "XC" => 90, "L" => 50, "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" =>  4, "I" => 1}
    letters = letters.gsub("IV", "IIII")
    answer = 0
    letters.split("").each do |let|
      arabic = digits[let]
      answer += arabic
    end  
    answer
  end
end        
