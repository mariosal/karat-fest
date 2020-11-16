require 'set'

N = 1_000_000_000_000
# N = 10_000

def splits(n)
  @memo ||= {}
  return @memo[n] if @memo.key?(n)

  @memo[n] = [n].to_set
  rhs = 0
  lhs = n
  ten_pow = 1
  loop do
    rhs = (lhs % 10) * ten_pow + rhs
    ten_pow *= 10
    lhs /= 10

    break if lhs == 0

    @memo[n].merge(splits(lhs).map { |s| s + rhs })
  end

  @memo[n]
end

answer = []
(4..Math.sqrt(N)).each do |i|
  answer << i * i if splits(i * i).include?(i)
end

puts answer.sum
