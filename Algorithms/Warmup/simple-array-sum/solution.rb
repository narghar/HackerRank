def simpleArraySum(ar)
  ar.map(&:to_i).reduce(0, :+)
end
