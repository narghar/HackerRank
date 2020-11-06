# Enter your code here. Read input from STDIN. Print output to STDOUT

n = gets.to_i # number of phone book entries

phone_book = Hash.new(0)

n.times do |line|  # create phone book from entries
  line = gets
  arr = line.split(" ")
  phone_book[arr[0]] = arr[1]
end

while query = gets do # query name
  query.chomp!
  if phone_book[query] == 0
    puts "Not found"
  else
    puts "#{query}=#{phone_book[query]}" unless phone_book[query] == 0
  end
end
