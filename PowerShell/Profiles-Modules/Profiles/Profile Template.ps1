﻿#Enabled Advanced functionality for a function
[CmdletBinding()]

#Sets default mandatory parameter set name
[CmdletBinding(DefaultParamerterSetName = 'None')]

<#Parameter Attributes
        Param (
          [Parameter(Mandatory=$true,Position=1)][SecureString]$Message
              ) #>  
[Parameter(Mandatory=$true)]                                Makes the parameter Mandatory
[Parameter(Mandatory, ParameterSetName = 'Setname')]        Makes mandatory paremeter sets. One of the mandatory parameter sets must be used, and if used the other mandatory parameter sets can be left unused.   
[SecureString]                                              Obfuscates the inputed parameter with asteriks (Good for Passwords)
[Parameter(Position=1)]                                     Set the parameter prompt position and position in Show-Command
[ValidateScript({Test-Path $_ -PathType Leaf})]             Validates the provided variable is true for the inputed script block entry (This one checks that the entered folderpath exists)
[ValidateScript({$_ -lt 0})]                                Validates the provided variable is true for the inputed script block entry (This  checks that the entered entered value is less than 0)
[ValidatePattern('^C:\\')]                                  Validates the entered variable matches the provided patter (This one validates the path is on the local C: Drive)
[ValidateSet('1','2','5')]                                  Validates that the value entered for the parameter is equal to one of the specified values
[ValidateRange('512MB','1024MB')]                           Validates the provided value is withing the specified range
[ValidateNotNullOrEmpty()]                                  Validates input is entered
[ValidateCount(1,5)]                                        Validates that the number of entered items for the parameter is greater than the specified minimum and less than the specified maximum
[parameter(ValueFromPipeline=$True)]                        Allows for values to be piped into the command

#If the parameter set names attribute is used the following can be used with elseif commands to run commands depending on the Paramersetname used.
$PSCmdlet.Parametersetname -eq 'ByName'

#Remove errors from running command (Run at the end of the command)
-erroraction Continue 

#Globably remove errors from running command 
$ErrorActionPreference = 'SilentlyContinue'

#Shows extra output for what is occuring from an input command
-verbose

#Globaly Shows extra output for what is occuring from an input command
$VerbosePreference = 'SilentlyContinue'

#use -whatif to safely see the outcome of running a command without it applying any action
#at the end of a command
-whatif
#Enables Whatif globally
$whatifpreference = $true
#disables -whatif globally
$whatifpreference = $false
#Enables whatif functionality in a script
[CmdletBinding(SupportsShouldProcess)]

#Set preference on confirming of commands with yes or no
ConfirmPreference = 'none','Low','Medium','High'
#Enables -confirm functionality
[CmdletBinding(SupportsShouldProcess)]

<#
#REQUIRES at the top of a script or function prevents either from running unless the criteria is met
#>
#Requires -Version 4.0
#Requires -Modules modulename,modulename2
#Requires -RunAsAdministrator

#----------------------------------------------------------------------------------------------------------------------------------


Function Get-Template {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05072018
      
    .DESCRIPTION
    <Brief description of script>
      
    .PARAMETER <Parameter_Name>
    <Brief description of parameter input required. Repeat this attribute if required>
      
    .INPUTS
    <Inputs if any, otherwise state None>
      
    .OUTPUTS
    <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>
    
    .NOTES
    Version:        1.0
    Author:         <Name>
    Creation Date:  <Date>
    Purpose/Change: Initial script development
        
    .EXAMPLE
    <Example goes here. Repeat this attribute for more than one example>
    
    .Link
    <Link goes here>
    #>
    
    [CmdletBinding(SupportsShouldProcess)]   

        Param (
          [Parameter(Position=0, Mandatory = $true)]$message,
          [Parameter(Mandatory=$true,Position=1)][SecureString]$Message2
              )
      
        Write-Host $message -ForegroundColor Green
        Write-Host $message2 -ForegroundColor Green
      
    }
