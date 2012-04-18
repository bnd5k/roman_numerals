class RomanNumeral
  def self.convert(num)
    answer = []  
    digits = [[1000, "M"],[500, "D"],[100, "C"],[50, "L"], [10, "X"], [5, "V"], [1, "I"]]
    digits.each do |pairing| 
      while num >= pairing[0]
        num = num - pairing[0]
        answer << pairing[1]
      end
    end
    answer.join('')
  end
end
