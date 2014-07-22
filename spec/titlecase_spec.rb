require('rspec')
require('titlecase')

describe('titlecase') do
  it('converts the first character of a single word to uppercase and the rest to lowercase') do
    titlecase("nUaTU").should(eq("Nuatu"))
  end

  it('converts multiple words to title case') do
    titlecase("nICK NuATU").should(eq("Nick Nuatu"))
  end

  it('does not title case conjuctions, prepositions, and other short words if they are not at the start of the input') do
    titlecase("the title of the program").should(eq("The Title of the Program"))
  end
end

