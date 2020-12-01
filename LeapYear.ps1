<#
    .SYNOPSIS
    Given a year, report if it is a leap year.
    
    .DESCRIPTION
    Calculate whether the supplied year is a leap year. A leap year is determined from the following
    calculation:

    on every year that is evenly divisible by 4
    except every year that is evenly divisible by 100
    unless the year is also evenly divisible by 400
    
    .PARAMETER year
    The year to test
    
    .EXAMPLE
    Test-LeapYear -year 2018

    Returns false

    .EXAMPLE
    Test-LeapYear -year 2020
    Returns True
#>



function Test-LeapYear {
      
    param( [int]$year )
    
    if (($year % 400 -eq 0) -or ($year % 4 -eq 0 -And $year % 100 -ne 0)){
      return $true
   } 
   
    elseif (($year % 100 -eq 0 -And $year % 400 -ne 0) -or ($year % 4 -ne 0))  {
      return $false
   } 
   else {
       return "Please continue"
     }
    
}
