n = gets.to_i
def multiplication_table(n)
  for i in 1..10 do
    puts "#{n} x #{i} = #{n * i}"
  end
end
multiplication_table(n)
