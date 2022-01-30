#CHALLENGE 1:


print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')


if a == "zero":

    print('Welcome to this calculator!')
    print('It can add and subtract whole numbers from zero to five')
    a = input('Please choose your first number (zero to five): ')
    b = input('What do you want to do? plus or minus: ')
    c = input('Please choose your second number (zero to five): ')
    numlist = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']
    operation = ['plus', 'minus']
if a not in numlist or c not in numlist or b not in operation:
    print("I am not able to answer this question. Check your input.")
else:
    a = numlist.index(a)
    c = numlist.index(c)
    if b == 'plus':
        result = int(a) + int(c)
        result = numlist[result]
        print (numlist[a] + " " + b + " "+ numlist[c] + " equals " + str(result))
    elif b == 'minus':
        intnum = int(a) - int(c)
        if intnum < 0:
            intnum = intnum * -1
            result = numlist[intnum]
            print (numlist[a] + " " + b + " "+ numlist[c] + " equals negative " + str(result))
        else:
            result = numlist[intnum]
            print (numlist[a] + " " + b + " "+ numlist[c] + " equals " + str(result))
print("Thanks for using this calculator, goodbye :)")


        

#CHALLENGE 2:






