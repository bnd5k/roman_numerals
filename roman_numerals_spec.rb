require_relative 'roman_numerals'

digits = {           
          4346 => "MMMMCCCXLVI",
          2346 => "MMCCCXLVI",
          1516 => "MDXVI",
          1000 => "M",
          900 => "CM",   
          511 => "DXI",
          500 => "D",
          491 => "CDXCI",
          400 => "CD",
          194 => "CXCIV",
          101 => "CI", 
          100 => "C",
          90 => "XC",
          56 => "LVI",
          50 => "L",
          40 => "XL",
          37 => "XXXVII",
          24 => "XXIV",
          20 => "XX",
          10 => "X",
          9 => "IX",
          8 => "VIII",
          7 => "VII",
          6 => "VI",
          5 => "V",
          4 => "IV",
          3 => "III",
          2 => "II",
          1 => "I"
         }
         
describe RomanNumeral do

  it 'converts 0 to nulla' do
    output = RomanNumeral.convert(0)
    output.should == "nulla"
  end
  
  digits.each do |arbc, rmn|
    it "converts #{arbc} to  #{rmn}" do
      output = RomanNumeral.convert(arbc)
      output.should == rmn
    end  
  end
  
end

describe ArabicNumeral do
 
  digits.each do |arbc, rmn|
    it "converts #{rmn} to  #{arbc}" do
     output = RomanNumeral.convert(rmn)
     output.should == arbc
    end             
  end        
            
end         
    

