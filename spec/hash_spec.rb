require('rspec')
require('hash')

describe(MyHash) do
  describe('#myFetch') do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("food", "yummy")
      test_hash.myStore("car", "wheels")
      test_hash.myStore("bob", "good")
      expect(test_hash.myFetch("food")).to(eq("yummy"))
      expect(test_hash.myFetch("car")).to(eq("wheels"))
      expect(test_hash.myFetch("bob")).to(eq("good"))
    end
  end


end
