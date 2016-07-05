require('rspec')
require('parcel')


describe(Parcel) do
  describe("#parcel_volume") do
    it ("evaluates  a volume based on length, width, and height") do
      test_parcel = Parcel.new(5,5,5,0,0)
      expect(test_parcel.parcel_volume()).to(eq(125))
    end
  end
  describe("#cost_of_shipping") do
    it ("returns the total cost of shipping on a parcel based on volume") do
      test_parcel = Parcel.new(5,5,5,1,1)
      expect(test_parcel.cost_of_shipping()).to(eq(35))
    end
    it ("returns the total cost of shipping on a parcel based on volume and weight") do
        test_parcel = Parcel.new(5,5,5,1,71)
        expect(test_parcel.cost_of_shipping()).to(eq(50))
    end

  it ("returns the total cost of shipping on a parce base on volume, weight and speed") do
      test_parcel = Parcel.new(5,5,5,2,71)
      expect(test_parcel.cost_of_shipping()).to(eq(65))
  end
  end
end
