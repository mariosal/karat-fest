require 'prime'

def divisors(n)
  Prime.prime_division(n).map do |prime, exponent|
    exponent + 1
  end.reduce(:*) || 1
end

answer = []
1.step do |i|
  break if answer.size == 3

  answer << i if divisors(i) >= 100
end

puts answer.sum
