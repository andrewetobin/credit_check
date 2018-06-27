# Credit Check
## Learning Goals
* break a problem into logical components
* implement appropriate Ruby syntax
* utilize methods and classes


## Background: Luhn Algorithm
The Luhn algorithm is a check-summing algorithm best known for checking the validity of credit card numbers.

You can checkout the full description on Wikipedia: http://en.wikipedia.org/wiki/Luhn_algorithm

## Description
(adapted from Wikipedia)

The formula verifies a number against its included check digit, which is usually appended to a partial account number to generate the full account number. This full account number must pass the following test:

* from the rightmost digit, which is the check digit, moving left, double the value of every second digit
* if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14), then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).
* take the sum of all the digits
* if and only if the total modulo 10 is equal to 0 then the number is valid

# Pseudocoding
* define the credit card number
* split the number into an array
* take that array and reverse it
* starting from the left, double every other digit
* if the doubling of a number results in a two digit number (greater than 9) split that number up and add the digits together
* add up all of the numbers in the array
check to see if the array sum is divisible by 10.
* set up messages for either valid or invalid number
