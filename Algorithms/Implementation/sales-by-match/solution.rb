# Example
# n = 7
# arr = [1,2,1,2,1,3,2]
# output matching pairs: 2

def sockMerchant(n, ar)
  group_by_color = Hash.new(0)
  for i in 0...n do
     group_by_color[ar[i]] += 1
  end
  matching_pairs = 0

  group_by_color.each do |sock_color, quantity|
    if quantity.even?
      matching_pairs += quantity / 2
    else quantity -= 1
      matching_pairs += quantity / 2
    end
  end
  return matching_pairs
end


# Second solution with Enumerable#tally requires Ruby version >= 2.7
# Not working on HackerRank platform on the day of commit
def pairs_count(ar)
  group_by_color = ar.tally
  matching_pairs = 0

  group_by_color.each do |sock_color, quantity|
    if quantity.even?
      matching_pairs += quantity / 2
    else quantity -= 1
      matching_pairs += quantity / 2
    end
  end
  return matching_pairs
end
