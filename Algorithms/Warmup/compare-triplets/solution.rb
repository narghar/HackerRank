def compareTriplets(a, b)
  a_count = 0
  b_count = 0

  (0..2).each do |i|
    if a[i] > b[i]
      a_count += 1
    elsif b[i] > a[i]
      b_count += 1
    end
  end
  return [a_count, b_count]
end
