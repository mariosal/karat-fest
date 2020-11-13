# Sum of the IVs

Karat has conducted over 70,000 interviews! Let's celebrate by finding a cool
number.

A Harshad or Niven number is a number that is divisible by the sum of its
digits. 201 is a Harshad number because it is divisible by 3 (the sum of its
digits.)

When we truncate the last digit from 201, we get 20, which is a Harshad number.
When we truncate the last digit from 20, we get 2, which is also a Harshad
number. Let's call a Harshad number that always results in a Harshad number
while recursively truncating the last digit a right-truncatable Harshad number.

Also: 201/3=67 which is prime. Let's call a Harshad number that results in a
prime when divided by the sum of its digits a strong Harshad number.

Now take the number 2011 which is prime. When we truncate the last digit from it
we get 201, a strong Harshad number that is also right-truncatable. Let's call
such primes strong, right-truncatable Harshad primes.

You are given that the sum of the strong, right-truncatable Harshad primes less
than 700 is 2449.

- - -

## All the interviews ever!

Find the sum of all strong, right-truncatable Harshad primes less than 70,000
(also, remember that Karat has conducted
