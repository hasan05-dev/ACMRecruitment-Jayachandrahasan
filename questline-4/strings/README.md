explanation :

Valid Palindrome - (code breakdown)

 clean_text = ""
 => creates an empty string

 lower_char = char.lower()
 => converts characters stored in the variable char into it's lowercase form.

if lower_char in allowed_characters
=> it reomoves all the symbols and spaces

left = 0  -> index number
=> places a pointer at first character

right = len(clean_text) - 1  -> index number
=> places a pointer at last character

while left < right
=> this loop will run left pointer meets the right pointer. once they meet, the check is complete.


Zigzag Conversion - (code breakdown)

rows = [""] * numRows
=> python takes one empty string "" and duplicate it n no. of times. where, n = no. of rows.

current_row = 0
=> starts at the first row (0)

direction = "down"
=> sets the initial movement direction

rows[current_row]
=> this means to go inside this list and look at a specific box number.
  ex - if current_row = 0, rows[0] opens the first row.

current_row == numRows - 1 :
                direction = "up"
elif current_row == 0 :
          direction = "down"
=> used for direction changes

single_row_text
=> a variable assigned to extract row's text at a time.
