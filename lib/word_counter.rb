class String
  
  define_method(:word_counter) do |to_find|
    word_array = self.downcase().gsub(/[^a-z0-9\s]/i, '').split(" ")
    final_count = 0
    
    word_array.each() do |word|
    
      if word == to_find.downcase()
        final_count += 1
      end
      
    end
    final_count
  end

end