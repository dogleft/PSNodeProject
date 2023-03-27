# PSNodeProject
Encodes good practice managing a simple Node.js code base. 
As a relative newbie for Node, I see a lot of varied advice online for how to structure a project. Of course projects tend to be unique, and one approach won't fit all. So, I'm encoding advice that seems appropriate for this scenario:
- Simple apps (practice projects, multiple microservices with UI
- MEAN stack
- Code organization organized based on features, not layers
- Docker containerization
- AWS native deployment

The goal is to spin up and tear down Node projects quickly, and to add/remove features quickly. 

Feel free to comment/contribute if you like. 

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
