#include <cstdio>
#include <unordered_map>
#include <vector>

using namespace std;

const vector<long long> splits(long long n) {
  vector<long long> ret;
  ret.push_back(n);
  long long rhs = 0;
  long long lhs = n;
  long long ten_pow = 1;
  while (true) {
    rhs = (lhs % 10) * ten_pow + rhs;
    ten_pow *= 10;
    lhs /= 10;

    if (lhs == 0) break;

    auto sums = splits(lhs);
    for (int i = 0; i < sums.size(); ++i) {
      ret.push_back(sums[i] + rhs);
    }
  }

  return ret;
}

int main() {
  const long long N = 1000000000000;
  // const int N = 10000;

  long long sum = 0;
  for (long long i = 4; i * i <= N; ++i) {
    auto sums = splits(i * i);
    for (int j = 0; j < sums.size(); ++j) {
      if (sums[j] == i) {
        sum += i * i;
        break;
      }
    }
  }

  printf("%lld\n", sum);

  return 0;
}
