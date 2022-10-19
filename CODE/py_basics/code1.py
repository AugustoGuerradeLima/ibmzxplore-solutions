from datetime import datetime
import time
import getpass

print("Welcome to the CODE challenge!\n")

my_number = 5

while (my_number > 0):
   
   now = datetime.now()
   
   the_time = now.strftime("%H:%M:%S")
   
   print("The current time is " + the_time)
   
   my_number = my_number - 1

   time.sleep(1)

your_userid = getpass.getuser()

print("We hope you have fun in this challenge, " + your_userid)

total_number = 0

for char in your_userid: 
  if (char.isnumeric()):
    total_number = total_number + int(char)

print("By the way, if you add up all the numbers in your userid, you get "
