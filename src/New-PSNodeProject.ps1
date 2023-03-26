function New-PSNodeProject {
    [CmdletBinding()]
    param (
    )
    process {
        New-Item -Path "app" -ItemType Directory
        New-Item -Path "app\test" -ItemType Directory
        New-Item -Path "app\index.js" -ItemType File
        New-Item -Path "scripts" -ItemType Directory
        New-Item -Path "utils" -ItemType Directory
        New-Item -Path "server.js" -ItemType File
    }
}
