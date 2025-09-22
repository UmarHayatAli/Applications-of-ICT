marks = int(input("Enter your marks:"))
if marks >= 90 and marks<=100:
    grade ="A"
elif marks >= 75 and marks<90:
    grade ="B"
elif marks >=50 and marks<75:
    grade ="C"
elif marks <=50 and marks>=0:
    grade ="F"
else: 
    print("try again")
print("your grade is", grade)
    