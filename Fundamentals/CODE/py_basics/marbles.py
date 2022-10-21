marbles = 10
marble_dots = "**********"

while (marbles > 0):
   
   print(marble_dots[:marbles])
   print("You have " + str(marbles) + " marbles left.")
   
   if (marbles <= 3):
    print("Warning: You are running low on marbles!!")

   marbles -= 1 
   
   print("")
print("You are all out of marbles")
