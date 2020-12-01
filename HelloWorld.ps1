# Powershell function that returns the string "Hello, World!"

function Get-HelloWorld {
   param (
     [string]$person="World"
   )
     write-Output "Hello, $person!"
}

