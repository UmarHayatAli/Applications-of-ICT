while True:
    print("1 - Addition")
    print("2 - Subtraction")
    print("3 - Multiplication")
    print("4 - Division")
    print("5 - Modulus")
    print("6 - Floor Division")
    print("7 - Exponentiation")
    Option=int(input("Choose an operation (1-7): "))    
    num1=float(input("Enter first number: "))
    num2=float(input("Enter second number: "))
    if Option==1:
        print(num1, "+", num2, "=", num1+num2)
    elif Option==2:
        print(num1, "-", num2, "=", num1-num2) 
    elif Option==3:
        print(num1, "*", num2, "=", num1*num2)
    elif Option==4:
        print(num1, "/", num2, "=", num1/num2)
    elif Option==5:
        print(num1, "%", num2, "=", num1%num2)
    elif Option==6:
        print(num1, "//", num2, "=", num1//num2)
    elif Option==7:
        print(num1, "**", num2, "=", num1**num2)
    else:
        print("Here is the error,choose wisely")
        continue
    next_calculation=input("Do you want to perform another calculation? (yes/no): ")
    if next_calculation!="yes":
        break
    else:
        continue
        
    