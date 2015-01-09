class String
  
  define_method(:word_counter) do |to_find|
    word_array = self.split(" ")
    final_count = 0
    
    word_array.each() do |word|
    
      if word.upcase() == to_find.upcase()
        final_count += 1
      end
      
    end
    final_count
  end

end