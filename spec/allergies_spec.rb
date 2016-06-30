require('rspec')
require('allergies')

describe('Fixnum#allergies') do
  it "takes a number and returns what allergies you have depending on the number" do
    expect(3.allergies).to(eq(['peanuts', 'eggs']))
  end
  it "takes a number and returns what allergies you have depending on the number" do
    expect(128.allergies).to(eq(['cats']))
  end
end
