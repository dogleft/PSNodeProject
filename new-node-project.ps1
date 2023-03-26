# Assume current directory is the root of the new project
# Assume current directory is also the name of the new project
$ProjectName = Split-Path -leaf $(Get-Location).path

# Create the folder structure
New-PSNodeProject
# mkdir app\controllers
# mkdir app\jobs
# mkdir app\mail
# mkdir app\models
# mkdir app\processors
# mkdir app\routes
# mkdir app\services
# mkdir app\validators
mkdir config
# mkdir database
# mkdir storage
# mkdir vendor

# Create the files
New-Item -Path .\app\controllers\index.js -ItemType File

# Install the dependencies
npm init -y
npm install express
npm install nodemon
