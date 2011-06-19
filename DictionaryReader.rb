class DictionaryReader
  attr_reader :words

  def get_all_words
    return @words
  end

  def read(path)
    @words = Array.new
    if (File.exists?(path))
      File.foreach(path) do |line|
        @words << line.strip
      end
    end
  end
end