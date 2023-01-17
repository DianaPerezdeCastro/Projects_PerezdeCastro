print('''
You are now at the castle, in order to find the queen's treasure you will need to start looking for it, right? first things first, which door is most appealing to you?
''')

        
door= input ('\nWhat door would you choose: Gold, Silver or Diamond?\n')
door=door.lower()

while door!="silver":
    if door=="gold":
        print ( '\nI am sorry, this door goes to another dimension that you wont like, believe me\n')
        door= input ('\nWhat door would you choose: Gold, Silver or Diamond?\n')
        door=door.lower()
    elif door=="diamond":
        print ('\nHave you ever seen a diamond door before? That does not exist, you are probably dreaming, wake up!\n')
        door= input ('\nWhat door would you choose: Gold, Silver or Diamond?\n')
        door=door.lower()
    else: 
        print ('\nWhat are you talking about?')
        door= input ('\nWhat door would you choose: Gold, Silver or Diamond?\n')
        door=door.lower()
    
if door== "silver":
    tool= input ('\nAmazing! You chose the correct door! Now we need to figure out how to open it... Which tool would you take: Key,Torch,Phone?\n')
    tool=tool.lower()
    
    while tool != "torch":
        print ('\nSmart thought but wrong!\n')
        
        if tool== "phone":
            print('\nSorry You do not have battery!Try again!\n')
            tool=input('\nWhich tool would you take: Key,Torch,Phone?\n')
            tool=tool.lower()
            
        elif tool=="key":
            print('\nSorry this is the key from your bike lock!Try again!\n')
            tool=input('\nWhich tool would you take: Key,Torch,Phone?\n')
            tool=tool.lower()
            
        
        
        else:
            print('\nthat tool is not real, what is real btw?\n')
            tool=input('\nWhich tool would you take: Key,Torch,Phone?\n')
            tool=tool.lower()

print("""At least you can see the lock now!! Wait a second, there is no lock on that door...you just need to push the door!, Do you want to?""")

push=input("Yes or No?")

while push!="yes":
    print('\nBut do you want to find the treasure or not?')
    push=input('\nYou have another chance!')
    push=push.lower()
    
print('Amazing you are in!!, Second Level Unlocked, see you again in our next adventure!')

