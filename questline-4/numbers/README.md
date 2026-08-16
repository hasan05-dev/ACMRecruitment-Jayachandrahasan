explanation :

Palindrome Number - (code breakdown)

reversed_num = 0
=> is taken initially 0 to ensure that the first extracted digit is correctly placed without being altered.

while loop
=> it is used to check the condition again and again until it becomes false.

technique 
=>  last_digit = x % 10
    reversed_num = (reversed_num * 10) + last_digit
    x = x // 10

first we wanted to get the last digit in x to the first place of the number and initially, taken 0 as the reversed number.
hence, we used % 10 to find the remainder which is the last digit of x and made it as the new reversed number.
as we wanted to completely reverse x, we removed the last digit by using // 10 and taken the resulted number as new x and continued the process until x becomes 0.
when x = 0, the loop stops as it doesnot satisfies the condition x > 0

this method takes digits one-by-one from the last and places at first sequentially.

== - comparison operator
if the original = reversed, it returns True.


integer to roman - (code breakdown)

roman_mapping
=> a list containing pairs of numbers and letters arranged from largest to smallest.

result = ""
=> an empty string. everytime we pick a roman letter, python glues the letters together.

for value, symbol in roman_mapping
=> this tells the python to look through the list one-by-one.

while num >= value
=> it will be running until as long as remaining number is big enough.

result = result + symbol
=> to add it to the empty string

num = num - value
=> to run the remaining number until it bcomes 0.
