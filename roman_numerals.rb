class RomanNumeral
  def self.convert(num)
    answer = []
    
    while num >=50
      num = num -50
      answer << 'L'
    end
    while num >=10
      num = num -10
      answer << 'X'
    end
    while num >= 5
      num = num - 5
      answer << 'V'
    end 
    answer << 'I' * num
    answer.join('')
  
  
  
  end
end
