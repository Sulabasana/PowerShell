# @(Get-ChildItem $env:windir\System32\ntdll.dll)
# @(Get-ChildItem $env:windir\System32)


# $names = @( "Aaron", "Albert", "Alphonse","Bernie", "Charlie", "Danny", "Ernie", "Frank")
# $names | Where-Object { $_ -like "A*" }
# $names | where { $_ -like "A*" }
# $names | ? { $_ -like "A*" }

$names = @( "Aaron", "Aaron", "Bernie", "Charlie", "Danny" )
Write-Host "Sort
"
$names | Sort-Object
$names | sort
Write-Host "
Descending
"
$names | Sort-Object -Descending
$names | sort -Descending
Write-Host "
Length
"
$names | Sort-Object { $_.length }
