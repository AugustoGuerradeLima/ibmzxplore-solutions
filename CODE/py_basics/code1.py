from datetime import datetime
import time
import getpass

print("Welcome to the CODE challenge!\n")

my_number = 5

while (my_number > 0):
   
   #set the variable "now" to the current time
   now = datetime.now()
   
   #format the variable "the_time" so it shows the hour, minute, and seconds of the current time
   the_time = now.strftime("%H:%M:%S")
   
   #print out the current time in the format of "the_time"
   #Notice how we combined literal text ("The current time is") with "the_time"
   #by sticking a plus sign between them like that. 
   print("The current time is " + the_time)
   
   #subtract 1 from "my_number"
   my_number = my_number - 1
   
   #Take a 1-second nap
   time.sleep(1)


your_userid = getpass.getuser()

print("We hope you have fun in this challenge, " + your_userid)

total_number = 0

for char in your_userid: 
  if (char.isnumeric()):
    total_number = total_number + int(char)

print("By the way, if you add up all the numbers in your userid, you get "