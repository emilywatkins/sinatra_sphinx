require('rspec')
require('sphinx')

describe(Sphinx) do
  describe("#riddle") do
    it("Returns true if answer is correct") do
      sphinx = Sphinx.new("snail", "short")
      expect(sphinx.riddle?()).to(eq(true))
    end


  end
end
