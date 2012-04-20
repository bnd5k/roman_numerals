require_relative 'roman_numerals'

describe RomanNumeral do

  it 'converts 0 to nulla' do
    output = RomanNumeral.convert(0)
    output.should == "nulla"
  end
  
  it 'converts 1 to I' do
    output = RomanNumeral.convert(1)
    output.should == "I"
  end
  
  it 'converts 2 to II' do
    output = RomanNumeral.convert(2)
    output.should == "II"
  end  
  
  it 'converts 4 to IV' do
    output = RomanNumeral.convert(4)
    output.should == "IV"
  end
  
  it 'converts 5 to V' do
    output = RomanNumeral.convert(5)
    output.should == "V"
  end  
  
  it 'converts 6 to VI' do
    output = RomanNumeral.convert(6)
    output.should == "VI"
  end

  it 'converts 9 to IX' do
    output = RomanNumeral.convert(9)
    output.should == "IX"
  end  
  
  it 'converts 10 to X' do
    output = RomanNumeral.convert(10)
    output.should == "X"
  end  
  
  it 'converts 11 to XI' do
    output = RomanNumeral.convert(11)
    output.should == "XI"
  end

  it 'converts 16 to XVI' do
    output = RomanNumeral.convert(16)
    output.should == "XVI"
  end
  
  it 'converts 19 to XIX' do
    output = RomanNumeral.convert(19)
    output.should == "XIX"
  end  
  
  it 'converts 56 to LVI' do
    output = RomanNumeral.convert(56)
    output.should == "LVI"
  end
  
  it 'converts 101 to CI' do
    output = RomanNumeral.convert(101)
    output.should == "CI"
  end

  it 'converts 194 to CXCIV' do
    output = RomanNumeral.convert(194)
    output.should == "CXCIV"
  end
  
  it 'converts 491 to CDXCI' do
    output = RomanNumeral.convert(491)
    output.should == "CDXCI"
  end
      
  it 'converts 511 to DXI' do
    output = RomanNumeral.convert(511)
    output.should == "DXI"
  end

  it 'converts 1516 to MDXVI' do
    output = RomanNumeral.convert(1516)
    output.should == "MDXVI"
  end  
  
  it 'converts 2346 to MMCCCXLVI' do
    output = RomanNumeral.convert(2346)
    output.should == "MMCCCXLVI"
  end 

  it 'converts 4346 to MMMMCCCXLVI' do
    output = RomanNumeral.convert(4346)
    output.should == "MMMMCCCXLVI"
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
  # 
  # it 'converts III to 3' do
  #   output = ArabicNumeral.convert("III")
  #   output.should == 3
  # end
  # 
  # it 'converts IV to 4' do
  #   output = ArabicNumeral.convert("IV")
  #   output.should == 4
  # end  
  # 
  it 'converts V to 5' do
    output = ArabicNumeral.convert("V")
    output.should == 5
  end
  # 
  # it 'converts VI to 6' do
  #   output = ArabicNumeral.convert("VI")
  #   output.should == 6
  # end
  # 
  # it 'converts XI to 11' do
  #   output = ArabicNumeral.convert("XI")
  #   output.should == 11
  # end
  # 
  # it 'converts XIV to 14' do
  #   output = ArabicNumeral.convert("XIV")
  #   output.should == 14
  # end
  
end