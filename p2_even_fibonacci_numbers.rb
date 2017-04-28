# Reference for storing searched fibonacci numbers: https://devblast.com/b/ruby-fizzbuzz-fibonacci

def fib_num(n, arr)
  return arr[n] if arr[n]

  arr[n] = fib_num(n-1, arr) + fib_num(n-2, arr)
end

arr = [0, 1]
(1..4_000_000).each do |n|
  if arr[-1] > 4_000_000
    arr.pop
    break
  end
  fib_num(n, arr)
end

p arr.select(&:even?).reduce(:+)
