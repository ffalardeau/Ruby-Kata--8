require "../OptimizeKataEight"

describe OptimizeKataEight, "#execute" do
  it "returns performance" do
    OptimizeKataEight.new.execute("/wordlist.txt", 6)
  end
end