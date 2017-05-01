# Reference link: http://stackoverflow.com/questions/16805544/slow-ruby-computation-project-euler-5

def find_multiple
	(1..20).inject(:lcm)
end

# without using method
def another_find_multiple
	lcm = 1

	(2..20).each do |number|
		lcm = lcm * number / gcd(lcm, number)
	end
	lcm
end

def gcd(a,b)
	while b > 0
		a = a % b
		return b if a == 0
		b % a
	end
	a
end

p another_find_multiple