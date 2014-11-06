require 'spec_helper'

describe AssembledWordFinder, "#find" do
  it "returns 0 word that was assembled from 2 smaller words" do
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

    expect(subject.find(wordArray, splitDictionary).count).to eq(0)
  end

  it "returns 1 word that was assembled from 2 smaller words" do
    wordArray = ["habits", "chance", "Adonis", "advice"]
    splitDictionary = { 'a' => ["ad", "advice", "Avion"],
                        'c' => ["chance"],
                        'h' => ["habits"],
                        's' => ["sushi"],
                        'v' => ["vice"]
    }

    words = subject.find(wordArray, splitDictionary)
    expect(words.count).to eq(1)
    expect(words[0]).to eq("advice")
  end

  it "returns 3 word that was assembled from 2 smaller words" do
    wordArray = ["hello", "Adonis", "Ado", "nis", "advice", "ad", "vice"]
    splitDictionary = { 'a' => ["ad", "Ado", "advice", "Avion"],
                        'c' => ["chance"],
                        'h' => ["hell", "hello"],
                        'n' => ["nis"],
                        'o' => ["o"],
                        's' => ["sushi"],
                        'v' => ["vice"]
    }
    words = subject.find(wordArray, splitDictionary)
    expect(words.count).to eq(3)
    expect(words).to include("advice")
  end
end
