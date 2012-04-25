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

  def self.replace_troublesome_roman_numerals(letters)
   tough_mappings = {"CM" => "DCCCC",  "CD" => "CCCC", "XC" => "LXXXX", "XL" => "XXXX", "IX"=> "VIIII", "IV" => "IIII"}
   tough_mappings.each { |roman, arabic|   letters = letters.gsub(roman, arabic) } 
   letters
  end

  def self.convert_and_add(letters)
    digits = { "M" => 1000, "CM" => 900, "D" => 500, "C" => 100, "XC" => 90, "L" => 50, "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" =>  4, "I" => 1}
    letters = letters.split("")
    letters.inject(0) do |sum, letter|
      arabic = digits[letter]
      sum += arabic
    end  
  end

  def self.convert(letters)
    roman_string = replace_troublesome_roman_numerals(letters)  
    arabic_number = convert_and_add(roman_string)
    arabic_number
  end
  
end        
