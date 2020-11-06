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
Write-Host "============================"

#DOES NOT WORK
# #Success output stream:
# cmdlet > file # Send success output to file, overwriting existing content
# cmdlet >> file # Send success output to file, appending to existing content
# cmdlet 1>&2 # Send success and error output to error stream
# #Error output stream:
# cmdlet 2> file # Send error output to file, overwriting existing content
# cmdlet 2>> file # Send error output to file, appending to existing content
# cmdlet 2>&1 # Send success and error output to success output stream
# #Warning output stream: (PowerShell 3.0+)
# cmdlet 3> file # Send warning output to file, overwriting existing content
# cmdlet 3>> file # Send warning output to file, appending to existing content
# cmdlet 3>&1 # Send success and warning output to success output stream
# #Verbose output stream: (PowerShell 3.0+)
# cmdlet 4> file # Send verbose output to file, overwriting existing content
# cmdlet 4>> file # Send verbose output to file, appending to existing content
# cmdlet 4>&1 # Send success and verbose output to success output stream
# #Debug output stream: (PowerShell 3.0+)
# cmdlet 5> file # Send debug output to file, overwriting existing content
# cmdlet 5>> file # Send debug output to file, appending to existing content
# cmdlet 5>&1 # Send success and debug output to success output stream
# #Information output stream: (PowerShell 5.0+)
# cmdlet 6> file # Send information output to file, overwriting existing content
# cmdlet 6>> file # Send information output to file, appending to existing content
# cmdlet 6>&1 # Send success and information output to success output stream


"The rain in Seattle" -replace 'rain','hail' #Returns: The hail in Seattle

"kenmyer@contoso.com" -replace '^[\w]+@(.+)', '$1' #Returns: contoso.com
#Split and Join operators:
# The -split operator splits a string into an array of sub-strings.
"A B C" -split " " #Returns an array string collection object containing A,B and C.

# The -join operator joins an array of strings into a single string.
"E","F","G" -join ":" #Returns a single string: E:F:G








