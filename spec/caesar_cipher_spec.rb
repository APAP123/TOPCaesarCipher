require './lib/caesar_cipher'

describe '#caesar' do
  it 'Returns string shifted 3 places right' do
    example = 'What a string!'
    goal = 'Zkdw d vwulqj!'
    expect(caesar(example, 3)).to eql(goal)
  end

  it 'Returns string shifted 3 places left' do
    example = 'What a string!'
    goal = 'Texq x pqofkd!'
    expect(caesar(example, -3)).to eql(goal)
  end

  it 'Returns all-caps string shifted 8 places right' do
    example = 'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG'
    goal = 'BPM YCQKS JZWEV NWF RCUXA WDMZ BPM TIHG LWO'
    expect(caesar(example, 8)).to eql(goal)
  end

  it 'does not modify a string with non-alphabetic characters' do
    example = '12356*&^%$#@!-_+='
    goal = '12356*&^%$#@!-_+='
    expect(caesar(example, 5)).to eql(goal)
  end
end
