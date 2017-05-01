def sum_square_difference
	sum = 0
	square = 0

	(1..100).each do |n|
		sum = n + sum
		square = (n*n) + square
	end

	(sum * sum) - square
end

p sum_square_difference