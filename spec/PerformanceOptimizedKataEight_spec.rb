require 'spec_helper'

describe OptimizeKataEight, "#execute" do
  it "returns performance" do
    subject.execute("/wordlist.txt", 6)
  end
end