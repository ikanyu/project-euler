def is_palindrome?(number)
	number.to_s == number.to_s.reverse
end

def largest_palindrome_product
	max = 0

	(100..999).each do |i|
		(i..999).each do |j|
			final = i * j
			if is_palindrome?(final) && final > max
				max = final
			end
		end
	end
	max
end

p largest_palindrome_product