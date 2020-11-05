# Enter your code here. Read input from STDIN. Print output to STDOUT

cases = gets.chomp.to_i
strings = []

(1..cases).each do |i|
  strings[i-1] = gets.chomp
end

strings.map do |str|
  even = ""
  odd = ""
  for char_index in (0..str.length-1)
    if char_index.even?
      even += str[char_index]
    else
      odd += str[char_index]
    end
  end
  puts "#{even} #{odd}"
end
