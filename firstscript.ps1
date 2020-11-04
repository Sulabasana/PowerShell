# Get-ChildItem | Select-Object Name
# #This may be shortened to:
# gci | Select Name

# #Operations

# $Object = [System.DateTime]::Now
# $Object.AddHours(15)
# $Object

<#
This is a
multi-line
comment
#>

# #Variables
# $foo = "bar"
# $myArrayOfInts = 1,2,3,4
# $myArrayOfStrings = "1","2","3","4"
# $foo
# $myArrayOfInts = $myArrayOfInts + 5
# $myOtherArrayOfInts = 5,6,7
# $myArrayOfInts = $myArrayOfInts + $myOtherArrayOfInts
# $myArrayOfInts

$input = "foo.bar.baz"
$parts = $input.Split(".")
$foo = $parts[0]
$bar = $parts[1]
$baz = $parts[2]
#You can do this instead
$foo, $bar, $baz = $input.Split(".")

<#Powershell assignemnts , if there are more values in the list than items in your
list of variables to assign them to, the last variable becomes an array of the remaining values. #>
$foo, $leftover = $input.Split(".") #Sets $foo = "foo", $leftover = ["bar","baz"]
$bar = $leftover[0] # $bar = "bar"
$baz = $leftover[1] # $baz = "baz

#Scope
$foo = "Global Scope"
function myFunc {
 $foo = "Function (local) scope"
 Write-Host $global:foo
 Write-Host $local:foo
 Write-Host $foo
}
myFunc
Write-Host $local:foo
Write-Host $foo

