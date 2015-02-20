def word_count(list)
  count = Hash.new(0)
  list.each do |word|
    count[word] += 1
  end
  return count
end