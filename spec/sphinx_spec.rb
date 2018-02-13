require('rspec')
require('sphinx')

describe(Sphinx) do
  describe("#riddle") do
    it("Returns true if answer is 'snail'") do
      sphinx = Sphinx.new("snail")
      expect(sphinx.riddle()).to(eq(true))
    end
    it("Returns true if answer is 'short'") do
      sphinx = Sphinx.new("short")
      expect(sphinx.riddle()).to(eq(true))
    end

  end
end
