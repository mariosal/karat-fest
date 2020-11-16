N = 100_000

divisors = Array.new(N + 1) { [] }
(1..N).each do |i|
  (i..N).step(i) do |j|
    divisors[j] << i
  end
end

primes = Array.new(N + 1, true)
primes[0] = false
primes[1] = false
primes[2] = true
(2..Math.sqrt(N)).each do |i|
  if primes[i]
    (i*i..N).step(i) do |j|
      primes[j] = false
    end
  end
end

prime_factories = (1..N).select do |i|
  divisors[i].all? do |j|
    primes[j + i / j]
  end
end

puts prime_factories.sum
