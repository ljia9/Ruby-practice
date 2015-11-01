puts "Enter some text"
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by do |key, val|
    val
end
frequencies.reverse!

frequencies.each do |key, val|
    puts key + " " + val.to_s
end