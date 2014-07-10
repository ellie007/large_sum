require 'large_sum'

describe LargeSum do

  let(:large_sum) { LargeSum.new }

  it "mutates the large number into an array" do
    expect(large_sum.make_large_number_iterable.class).to eq(Array)
  end

  it "adds up the number" do
    expect(large_sum.add_number_to_counter).to eq(5537376230390876637302048746832985971773659831892672)
  end

  it "returns the first 10 digits of the number" do
    expect(large_sum.find_first_10_digits).to eq(5537376230)
  end

end
