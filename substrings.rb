def substrings(phrase, dictionary)
  dictionary.reduce(Hash.new(0)) do |counts, word|
    (0..(phrase.length - word.length)).each do |i|
      if phrase.downcase.slice(i, word.length) == word.downcase
        counts[word] += 1
      end
    end
    counts
  end
end
