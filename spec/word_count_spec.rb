require('rspec')
require('word_count')
describe('String#counter') do

  it('receives user input and counts how many words are repeated in the sentence') do
    expect(('i really really like pizza').counter('really')).to(eq(2))
  end
end
