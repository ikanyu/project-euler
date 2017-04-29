def largest_prime_factor(n)
	initial_number = n
	divider = 2

	while(divider < initial_number)
		if n % divider == 0
			max = divider
			n = n/divider
			break if n == 1
		else
			divider += 1
		end
	end

	max
end

p largest_prime_factor(600_851_475_143)