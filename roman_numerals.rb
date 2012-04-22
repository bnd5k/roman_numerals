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

digits = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000 }

  def conv1(letters)
  	@bump = []    
    my_array = letters.split("") 
    my_array.each_with_index do |let|
      arabic = digits[let]
  	puts @bump.join('')
    @bump << arabic
    end  
  end

  def addition(letters)
    @bump = "II"
    	if  @bump[index-1] < @bump[index-0] 
    #maybe have a method for conversion and a method for addition
    	#	bump[index-0] - bump[indexj-1]
    		#bump[index-0] = 0 
    		bump[index+1] = bump[index-1] - bump[index+0] 
    		mp[index-0] = 0      
      end
      #now add that shit up.  
  end  

  def self.convert(letters)
    conv1(letters)
    addition(letters)

   end
   
#new plan: translate all the letters into numbers,
#then give a shit about letter location
#then re-translate letters into numbers
#then all that shit up

#in order to deal iwth IVs and IX's, I need the program to care about the order in which numers occur.
#if the current number being evaluated is bigger than the last number being evaluated, then we've got an issue.
#in short, it must know the most recent number and the current number
#when the most recent number is not equal to the current number, then...do some cool shit.
   
end     
    
    
  
