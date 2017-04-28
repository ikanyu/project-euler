def multiple_3_5(n)
  arr = []

  (1..n).each do |number|
    if number % 3 == 0 || number % 5 == 0
      arr << number
    end
  end

  puts arr.inject(:+)
end

multiple_3_5(1000)
