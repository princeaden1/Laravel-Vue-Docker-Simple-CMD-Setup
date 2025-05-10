# A quick and easy way to create Laravel Inertia Vue Js project with docker
With Just few line of command line you are ready togo with your project
### Note: Please ensure you have install docker and it is running on your computer

## Setting Up the project
1. Go to your terminal and type "make setup"
### This will create a project with the title laravel-demo-app, if you wish to change this you can change this name from the Makefile 


## Runningthe project
1. Go to your terminal and type "cd laravel-demo-app"
2. run "npm run dev"
### The project is ready to be launched

### For the Database Connection
you can setup and configure your database from the docker-compose.yml. At default it uses db_username for the dataase user name and db_name for the database name. You can rename this to any name of your choice. This is the same configuration for normal docker configuration.


### You can access the laravel project using localhost:9000 and the phpmyadmin using localhost:9001
