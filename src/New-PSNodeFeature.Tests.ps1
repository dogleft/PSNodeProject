BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
    . .\New-PSNodeProject.ps1
    Push-Location $env:tmp
    mkdir -Force "PSNodeProject"
    Set-Location "PSNodeProject"
    New-PSNodeProject
}
AfterAll {
    Set-Location $env:tmp
    Remove-Item -Force -Recurse "PSNodeProject"
    Pop-Location
}

Describe "New-PSNodeFeature" {
    Context "When called with a unique feature name" {
        BeforeAll {
            New-PSNodeFeature -FeatureName "myfeature"
        }
        AfterAll {
            Remove-Item -Force -Recurse "app\myfeature"
            Remove-Item -Force  "app\test\*.js"

        }
        It "Creates a feature folder" {
            Test-Path -Path "app\myfeature" -PathType Container | Should -Be $true
        }
        It "Creates a feature.js implementation file" {
            Test-Path -Path "app\myfeature\myfeature.js" -PathType Leaf | Should -Be $true
        }
        It "Creates a feature.test.js file" {
            Test-Path -Path "app\test\myfeature.test.js" -PathType Leaf | Should -Be $true
        }
    }
    Context "When called with a duplicate feature name" {
        BeforeAll {
            New-PSNodeFeature -FeatureName "myfeature"
        }
        It "Throws an exception" {
            { New-PSNodeFeature -FeatureName "myfeature" } | Should -Throw
        }
    }
    # Context "When called with no feature name" {
    #     It "Throws an exception" {
    #         { New-PSNodeFeature } | Should -Throw
    #     }
    # }
}
