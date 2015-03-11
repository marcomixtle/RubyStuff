class Sorter

  attr_accessor :word_list

  #Obtain array of words
  def initialize(word_list)
    @word_list = word_list
  end

  def sort

    #Skip if the list is nil
    unless @word_list.nil?
      @word_list.each do |current_word|

        #Create a new array for every word on list
        sorted_list = Array.new
        sorted_list.push(current_word)

        #Remove word from master list to prevent it form being looked up going forward
        @word_list.delete(current_word)

        @word_list.each do |next_word|

          # Compare each word against remaining words on list by sorting the characters alphabetically
          if current_word.chars.sort == next_word.chars.sort

            #Add matching words to sorted list array
            sorted_list.push(next_word)

            #Remove matching words from master list to prevent future lookups
            @word_list.delete(next_word)
          end

        end
        #Print sorted list
        puts sorted_list.to_s
      end

    end
    #Master list contains non-repeating words, print them out individually
    @word_list.each {|singles| puts singles}
  end

end

puts "Multi example"
list_multi = Sorter.new(["marco", "ocram", "abs", "sab", "jab", "lab", "baj", "marcos", "baja", "arcom"])
list_multi.sort
puts ""

puts "Single example"
list_single = Sorter.new(["word"])
list_single.sort
puts ""

puts "Empty example"
list_empty = Sorter.new([""])
list_empty.sort
puts ""

puts "Nil example"
list_nil = Sorter.new([nil])
list_nil.sort