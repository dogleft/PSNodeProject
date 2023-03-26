BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
    Push-Location $env:tmp
    mkdir -Force "PSNodeProject"
    Set-Location "PSNodeProject"
}
AfterAll {
    Set-Location $env:tmp
    Remove-Item -Force -Recurse "PSNodeProject"
    Pop-Location
}
Describe "New-PSNodeProject" {
    Context "When called without parameters" {
        BeforeAll {
            New-PSNodeProject
        }
        AfterAll {
            Remove-Item -Force -Recurse *.*
        }
        It "Creates an app folder" {
            Test-Path -Path "app" -PathType Container | Should -Be $true
        }
        It "Creates an index.js file" {
            Test-Path -Path "app\index.js" -PathType Leaf | Should -Be $true
        }
        It "Creates a test folder" {
            Test-Path -Path "app\test" -PathType Container | Should -Be $true
        }
        It "Creates a server.js file" {
            Test-Path -Path "server.js" -PathType Leaf | Should -Be $true
        }
        It "Creates a scripts folder" {
            Test-Path -Path "scripts" -PathType Container | Should -Be $true
        }
        It "Creates a utils folder" {
            Test-Path -Path "utils" -PathType Container | Should -Be $true
        }
    }

}
