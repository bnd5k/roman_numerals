require_relative 'roman_numerals'

describe RomanNumeral do

  it 'converts 1 to I' do
    output = RomanNumeral.convert(1)
    output.should == "I"
  end
  it 'converts 2 to II' do
    output = RomanNumeral.convert(2)
    output.should == "II"
  end  
  it 'converts 4 to IV'
  it 'converts 5 to V' do
    output = RomanNumeral.convert(5)
    output.should == "V"
  end  
  it 'converts 6 to VI' do
    output = RomanNumeral.convert(6)
    output.should == "VI"
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
  
  it 'converts 56 to LVI' do
    output = RomanNumeral.convert(56)
    output.should == "LVI"
  end
  
  it 'converts 101 to CI' do
    output = RomanNumeral.convert(101)
    output.should == "CI"
  end
  
  it 'converts 511 to DXI' do
    output = RomanNumeral.convert(511)
    output.should == "DXI"
  end

  
  it 'converts 1516 to MDXVI' do
    output = RomanNumeral.convert(1516)
    output.should == "MDXVI"
  end   
end