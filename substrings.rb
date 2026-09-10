def substrings(string, dictionary)
  frequency_hash = Hash.new
  string_array = string.split
  dictionary.each do |dictionary_entry|
    string_array.each do |word|
      if word.include?(dictionary_entry)
        frequency_hash[dictionary_entry] ||= 0;
        frequency_hash[dictionary_entry] += 1;
      end
    end
  end
  frequency_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)