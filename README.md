# PSNodeProject
Encodes good practice managing a Node.js code base

## Core Folder Structure
`New-PSNodeProject` creates a basic folder structure and initial files common to all projects:
 - **app** contains subfolders organized by feature
 - **app\test** contains tests for the feature
 - **app\index.js** is the app entry point
 - **scripts** holds common scripts. E.g. Launch and test.
 - **utils** holds common code
 - **server.js** is the server entry point. First file launched. 
 - **.env** holds common environment variables

When `NPM install` is run, these files and folders are added to the project root:
- .gitignore
- package.json
- package-lock.json
- node_modules

## Adding Features
