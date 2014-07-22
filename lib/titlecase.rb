def titlecase (string)
  strings = string.downcase.split(" ")
  word1 = strings.shift.capitalize
  result = []
  exceptions = ["the", "of", "and", "an", "if", "is", "but", "nor", "we", "in", "at"]

  strings.each do |word|
    if exceptions.index word
      result.push(word)
    else
      result.push(word.capitalize)
    end
  end
  result.unshift(word1)
  result.join(" ")
end

puts titlecase("nUaTU")
