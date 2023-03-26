function New-PSNodeFeature {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]
        $FeatureName
    )    
    process {
        if (Test-Path -Path "app\$FeatureName") {
            throw "Feature '$FeatureName' already exists."
        }
        New-Item -Path "app\$FeatureName" -ItemType Directory
        New-Item -Path "app\$FeatureName\$FeatureName.js" -ItemType File
        New-Item -Path "app\test\$FeatureName.test.js" -ItemType File
    }
}
