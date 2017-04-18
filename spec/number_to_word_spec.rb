require ('rspec')
require ('number_to_word')
require ('pry')

describe('Fixnum#number_to_word') do
  it('take the number 1 and return one') do
    expect(1.number_to_word()).to(eq('one'))
  end
  it('take a teen number and return the correct word') do
    expect(19.number_to_word()).to(eq('nineteen'))
  end
  it('take a double-digit number and return the correct word') do
    expect(78.number_to_word()).to(eq('seventy-eight'))
  end
  it('take a triple-digit number and return the correct word') do
    expect(234.number_to_word()).to(eq('two-hundred thirty-four'))
  end
  it('take a triple-digit number with a teen and return the correct word') do
    expect(209.number_to_word()).to(eq('two-hundred -nine'))
  end
  it('take a four-digit number with a teen and return the correct word') do
    expect(2217.number_to_word()).to(eq('two-thousand two-hundred seventeen'))
  end
  it('take a four-digit number with a zero and return the correct word') do
    expect(2009.number_to_word()).to(eq('two-thousand -nine'))
  end
  it('take a five-digit number with a teen and return the correct word') do
    expect(22118.number_to_word()).to(eq('twenty-two thousand, one-hundred eighteen'))
  end
  it('take a five-digit number and return the correct word') do
    expect(22222.number_to_word()).to(eq('twenty-two thousand, two-hundred twenty-two'))
  end
  it('take a five-digit number with a zero and return the correct word') do
    expect(22022.number_to_word()).to(eq('twenty-two thousand, two-hundred twenty two'))
  end
end
