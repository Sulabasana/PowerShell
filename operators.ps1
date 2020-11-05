# Names can be preceded by special characters to modify the behavior of the operator:
#i # Case-Insensitive Explicit (-ieq)
#c # Case-Sensitive Explicit (-ceq)
#Case-Insensitive is the default if not specified, ("a" -eq "A") same as ("a" -ieq "A")

#Number Comparision
2 -eq 2
2 -ne 4
5 -gt 2
5 -ge 5
5 -lt 10
5 -le 5

Write-Host "============================"
#String Comparision
"MyString" -like "*String" # Match using the wildcard character (*)
"MyString" -notlike "Other*" # Does not match using the wildcard character (*)
"MyString" -match '^String$' # Matches a string using regular expressions
"MyString" -notmatch '^Other$' # Does not match a string using regular expressions

Write-Host "============================"
#Collection Comparision
"abc", "def" -contains "def" # Returns true when the value (right) is present
 # in the array (left)
"abc", "def" -notcontains "123" # Returns true when the value (right) is not present
 # in the array (left)
"def" -in "abc", "def" # Returns true when the value (left) is present
 # in the array (right)
"123" -notin "abc", "def" # Returns true when the value (left) is not present
 # in the array (right)

 Write-Host "============================"
 #Arithmetic Operators
1 + 2 # Addition
1 - 2 # Subtraction
-1 # Set negative value
1 * 2 # Multiplication
1 / 2 # Division
1 % 2 # Modulus
100 -shl 2 # Bitwise Shift-left
100 -shr 1 # Bitwise Shift-right


#Assignemnts operators
$var = 1 # Assignment. Sets the value of a variable to the specified value
$var += 2 # Addition. Increases the value of a variable by the specified value
$var -= 1 # Subtraction. Decreases the value of a variable by the specified value
$var *= 2 # Multiplication. Multiplies the value of a variable by the specified value
$var /= 2 # Division. Divides the value of a variable by the specified value
$var %= 2 # Modulus. Divides the value of a variable by the specified value and then
 # assigns the remainder (modulus) to the variable
#Increment and decrement:
$var++ # Increases the value of a variable, assignable property, or array element by 1
$var-- # Decreases the value of a variable, assignable property, or array element by 1









