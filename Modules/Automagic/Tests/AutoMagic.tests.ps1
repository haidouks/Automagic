$TestPath = Split-Path -Parent $MyInvocation.MyCommand.Path 
$ModulePath = Split-Path -Path $TestPath -Parent
Import-Module $ModulePath -Force -Verbose
Describe "Topla Function"{
    Context "If input is int[]"{
        [int[]]$testData = 1,2,3
        It "Result for the int[] is the sum of all elements" {
        topla $testData | Should Be 6 
        }
    }

}