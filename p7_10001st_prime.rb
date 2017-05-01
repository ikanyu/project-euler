require "prime"

def ten_thousand_and_one_prime
	prime = Prime.first 10001
	prime[-1]
end

p ten_thousand_and_one_prime