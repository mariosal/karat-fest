N = 70_000

def primes
  return @primes if defined?(@primes)

  @primes = Array.new(N + 1, true)
  @primes[0] = false
  @primes[1] = false
  @primes[2] = true
  (2..Math.sqrt(N)).each do |i|
    if @primes[i]
      (i*i..N).step(i) do |j|
        @primes[j] = false
      end
    end
  end

  @primes
end

def harshad?(n)
  n > 0 && n % n.digits.sum == 0
end

def strong_harshad?(n)
  harshad?(n) && primes[n / n.digits.sum]
end

def trunc_harshad?(n)
  while n > 0
    return false if !harshad?(n)
    n /= 10
  end

  true
end

def strong_trunc_harshad_prime?(n)
  primes[n] && strong_harshad?(n / 10) && trunc_harshad?(n / 10)
end

answer = (2..N).select do |i|
  strong_trunc_harshad_prime?(i)
end

puts answer.sum
