require 'spec_helper'

describe OptimizeKataEight, "#execute" do
  it "returns performance" do
    OptimizeKataEight.new.execute("/wordlist.txt", 6)
  end
end