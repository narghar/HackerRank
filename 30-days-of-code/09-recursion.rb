def factorial(n)
  return 1 unless n > 0
  n * factorial(n - 1)
end
