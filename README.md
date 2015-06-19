#Primes Challenge

###Objective
* Write a program that prints out a multiplication table of the first 10 prime
numbers.
* The program must run from the command line and print one table to
STDOUT.
* The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column.

####How to Run it
clone the repo and run
```
'ruby play.rb'
```

To run the tests clone the repo and run
```
bundle exec rake  
```

###Complexity Considerations:
* Generating the multiplication table is O(n**2) complexity since we have to multiply each prime by it's corresponding counterpart
* Displaying the table is O(n) since we're just iterating through the table and displaying each row. (there are 'n' number of rows)


###Notes
• Consider complexity. How fast does your code run? How does it scale?
-As the 'N' gets bigger the program is going to start slowing down because we are using trial division to determine if the number is prime. However, for small 'n' number of primes this solution will suffice.

• Consider cases where we want N primes.
-In the case where we want 'N' number of primes, we would need to reimplement our prime check and pre-compute and store a list of primes up to a certain number. Then before testing the number in question for primality, we divide it by the primes in our list first.
https://en.wikipedia.org/wiki/Primality_test

• Do not use the Prime class from stdlib (write your own code).
• Write tests. Try to demonstrate TDD/BDD.

###Approach

####Primes Class
* Create a Primes class that is going to instantiate 'n' number of primes

####Compute Primes Multiplication
* Compute the value of multiplied primes

####Display the Multiplication Table
* Creates a Multiplication class and calls methods to display the table



Sources:
* http://codereview.stackexchange.com/questions/35340/printing-out-prime-numbers-from-an-array-given-a-max-number

* http://stackoverflow.com/questions/14714936/fix-ruby-string-to-n-characters

* https://en.wikipedia.org/wiki/Primality_test
