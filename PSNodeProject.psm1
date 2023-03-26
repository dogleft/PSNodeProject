$appFolder = "app"
$testFolder = "app\test"
$indexFile = "app\index.js"
$scriptsFolder = "scripts"
$utilsFolder = "utils"
$serverFile = "server.js"

foreach ( $modulefile in Get-ChildItem -File $PSScriptRoot\src\*.ps1 -Exclude *.tests.ps1 )
{
    . $modulefile
}