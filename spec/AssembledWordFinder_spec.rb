require 'spec_helper'

describe AssembledWordFinder, "#find" do
  it "returns 0 word that was assembled from 2 smaller words" do
    assembledWordFinder = AssembledWordFinder.new
    wordArray = ["hello", "crazy", "sushi", "Liver", "Avion"]
    splitDictionary = { 'a' => ["Avion"],
                        'b' => [],
                        'c' => ["crazy"],
                        'd' => [],
                        'e' => [],
                        'f' => [],
                        'g' => [],
                        'h' => ["hello"],
                        'i' => [],
                        'j' => [],
                        'k' => [],
                        'l' => ["Liver"],
                        'm' => [],
                        'n' => [],
                        'o' => [],
                        'p' => [],
                        'q' => [],
                        'r' => [],
                        's' => ["sushi"],
                        't' => [],
                        'u' => [],
                        'v' => [],
                        'w' => [],
                        'x' => [],
                        'y' => [],
                        'z' => [],

                      }

    assembledWordFinder.find(wordArray, splitDictionary).count.should == 0
  end
end


describe AssembledWordFinder, "#find" do
  it "returns 1 word that was assembled from 2 smaller words" do
    assembledWordFinder = AssembledWordFinder.new
    wordArray = ["habits", "chance", "Adonis", "advice"]
    splitDictionary = { 'a' => ["ad", "advice", "Avion"],
                        'c' => ["chance"],
                        'h' => ["habits"],
                        's' => ["sushi"],
                        'v' => ["vice"]
                      }

    words = assembledWordFinder.find(wordArray, splitDictionary)
    words.count.should == 1
    words[0].should == "advice"
  end
end

describe AssembledWordFinder, "#find" do
  it "returns 3 word that was assembled from 2 smaller words" do
    assembledWordFinder = AssembledWordFinder.new
    wordArray = ["hello", "Adonis", "Ado", "nis", "advice", "ad", "vice"]
    splitDictionary = { 'a' => ["ad", "Ado", "advice", "Avion"],
                        'c' => ["chance"],
                        'h' => ["hell", "hello"],
                        'n' => ["nis"],
                        'o' => ["o"],
                        's' => ["sushi"],
                        'v' => ["vice"]
                      }
    words = assembledWordFinder.find(wordArray, splitDictionary)
    words.count.should == 3
    #words[0].should == "advice"
  end
end

