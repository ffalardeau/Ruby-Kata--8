require 'spec_helper'

describe ReadableKataEight, "#execute" do
  it "returns performance" do
    ReadableKataEight.new.execute("/wordlist.txt", 6)
  end
end