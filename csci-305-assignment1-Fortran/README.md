# csci-305-assignment1-Fortran
Problem 1 Fortran (Due Friday FEB. 1st @ 5pm)
Part One To Do:
Write a Fortran program that makes change.
Input a number from 1 to 99 that is the number of U.S. money that will need to be converted to coins.
Start with the largest coins and maximize the number of quarters you need, then dimes, nickles and eventually pennies. 


1 Quarter = 25 cents
1 Dime = 10 cents
1 Nickel = 5 cents
1 Penny = 1 cent


Read from keyboard, write to screen using Fortran functions. 

Do not print out coin if none (zero) are needed

Test on 99, 90, 76, 75, 74, 55, 41, 30, 25, 10, 5, 1

Then test on bad data -99, -1, 0, 100, 1000 abc 7.7

Bad data should have an error output given. 

Output:
The output should look like this for input 41


1 Quarter
1 Dime
1 Nickel
1 Penny

The output should look like this for input 76


3 Quarter
1 Penny

Problem Part Two:
Make change using non-advancing write

Modify Problem 1 to use non-advancing write
Put all the results on one line, again do not print zero values


The output should look like this for input 41


1 Quarter 1 Dime 1 Nickel 1 Penny

The output should look like this for input 76

3 Quarter 1 Penny

Problem part Three:
Print the date and time in this format at the begining:


mo-dy-year, Hr:mi
01-17-2019, 09:15


(It's in the notes)


Problem part Four:

Make sure your code uses a function to return the amount of each coin needed
