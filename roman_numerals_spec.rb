require_relative 'roman_numerals'

describe RomanNumeral do

  it 'converts 0 to nulla' do
    output = RomanNumeral.convert(0)
    output.should == "nulla"
  end
  
  digits = [[1000, "M"],[900, "CM"],[500, "D"],[400, "CD"],[100, "C"],[90, "XC"],[50, "L"], [40, "XL"], [24, "XXIV"],
          [10, "X"], [9, "IX"], [8, "VIII"], [7, "VII"], [6, "VI"], [5, "V"],  [4, "IV"], [3, "III"], [2, "II"], [1, "I"]]
    
  digits.each do |arbc, rmn|
    it "converts #{arbc} to  #{rmn}" do
      output = RomanNumeral.convert(arbc)
      output.should == rmn
    end  
  end

describe ArabicNumeral do
 
   it 'converts I to 1' do
     output = ArabicNumeral.convert("I")
     output.should == 1
   end 
   
   it 'converts II to 2' do
     output = ArabicNumeral.convert("II")
     output.should == 2
   end
   
   it 'converts III to 3' do
     output = ArabicNumeral.convert("III")
     output.should == 3
   end
   
   it 'converts IV to 4' do
     output = ArabicNumeral.convert("IV")
     output.should == 4
   end  
   
   it 'converts V to 5' do
     output = ArabicNumeral.convert("V")
     output.should == 5
   end
   
   it 'converts VI to 6' do
     output = ArabicNumeral.convert("VI")
     output.should == 6
   end
   
   it 'converts XI to 11' do
     output = ArabicNumeral.convert("XI")
     output.should == 11
   end
   
   it 'converts XIV to 14' do
     output = ArabicNumeral.convert("XIV")
     output.should == 14
   end
   
   it 'converts XX to 20' do
     output = ArabicNumeral.convert("XX")
     output.should == 20
   end
 
 
   it 'converts CII to 102' do
     output = ArabicNumeral.convert("CII")
     output.should == 102
   end

end