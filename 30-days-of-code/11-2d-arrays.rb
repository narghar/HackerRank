hourglasses_sum_array = []

4.times do |i|
  4.times do |j|
    # All hourglasses visual :)
    # p arr[i][j..j++2]
    # p arr[i+1][j+1]
    # p arr[i+2][j..j+2]
    hourglasses =  arr[i][j..j++2] << arr[i+1][j+1] << arr[i+2][j..j+2]
    hourglasses_sum = hourglasses.flatten.sum
    hourglasses_sum_array.push(hourglasses_sum)
  end
end

p hourglasses_sum_array.max
