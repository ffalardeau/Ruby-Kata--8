require 'spec_helper'

describe ReadableKataEight, "#execute" do
  it "returns performance" do
    subject.execute("/wordlist.txt", 6)
  end
end