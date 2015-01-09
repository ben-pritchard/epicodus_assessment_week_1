require("rspec")
require("word_counter")

describe("String#word_counter") do
  it("returns 0 if the argument string is not found in the object string") do
    expect("I love programming".word_counter("purple")).to eq(0)
  end
  
  it("returns the number of times the argument string is found in the object string") do
    expect("The wise turtle is so wise".word_counter("wise")).to eq(2)
  end
  
  it("accounts for capitalization differences") do
    expect("Oh my GOSH".word_counter("gosh")).to eq(1)
  end
  
  it("accounts for punctuation") do
     expect("I love programming. Yay programming!".word_counter("programming")).to eq(2)
  end
  
end