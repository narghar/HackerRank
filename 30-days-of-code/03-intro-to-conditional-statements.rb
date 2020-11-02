# N = gets.to_i
case
  when N.odd?
    puts "Weird"
  when N.even? && (2..5) == N
    puts "Not Weird"
  when N.even? && (6..20) == N
    puts "Weird"
  when N.even? && N > 20
    puts "Not Weird"
end
