def getMoneySpent(keyboards, drives, b)
    #
    # Write your code here.
    #
    # b - max budget

  total = []

  keyboards.each do |keyboard|
    drives.each do |drive|
      sum = drive + keyboard
      next unless sum <= b
      total.push(sum)
    end
  end

  return total.empty? ? -1 : total.max
end

# Test
# puts getMoneySpent([30,10,20], [5,10,15], 50)
