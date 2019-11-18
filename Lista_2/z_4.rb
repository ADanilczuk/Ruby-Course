def stats(f)
  words = Hash.new
  f.each do |line|
      w = line.downcase.split(/[^[[:word:]]]+/)
      w.each do |single|
          if words.has_key?(single)
            words[single]= words[single]+1
          else
            words[single]=1
          end
      end
  end

  sum= words.values.inject(:+)

  words.each do |key, value|
      words[key] = ((value.to_f) * 100/ sum).round(3)
      z=" "+"#{key}:#{words[key]}" + "%"
      puts z
  end

  new_words= words.sort_by { |key, value| value}
 # new_words.each do |key, value|
  #  z=" "+"#{key}:#{value}" + "%"
   # puts z
  #end
  puts sum
end


#file = File.open("romeo-i-julia.txt", "r")
file = File.open("komedia-omylek.txt")
#file = File.open("probne.txt", "r")
stats(file)
file.close
