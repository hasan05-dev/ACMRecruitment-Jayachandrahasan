explanation :

lemonade change -
(code breakdown)

five_count and ten_count
=> these two counters are used to track current availability.

for loop
=> used for sequential processing as you can only give change using bills
   collected from previous customers.

if/elif/else
=> handles different rules for $5, $10 and $20 bills.

greedy choice :
=> prefers giving away a $10 bill over $5 bills because $5 bills are more flexible for future change.
   

assign cookies -
(code breakdown)

g (greed factor)
=> a list in which each element represents the min. cookie size required to make
   the child happy.
   
s (cookie sizes)
=> a list in which each element represents the physical sizes of cookies
   available.
   
g.sort and s.sort
=> sorts both the lists in ascending order which will enable us to satisfy the
   least greedy child with smallest possible cookie first.

child_index
=> this counter is used to track the total no. of satisfied children.

for loop
=> goes through each cookie size in array s which is already arranged in
  ascending order.

child_index < len(g)
=> to ensure it is not exceeding array boundaries.

cookie_size >= g[child_index]
=> to check the current cookie is large enough to satisfy the child's greed
   factor.





