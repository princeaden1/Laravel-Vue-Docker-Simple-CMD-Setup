#grouping all the Make
setup:
	@make build
	@make up

#@make composer-update
build:
	docker-compose build --no-cache --force-rm
stop:
	docker-compose stop
up:
	docker-compose up -d

start:
	docker-compose up -d
	npm run dev
install_vue:
	npm install
	docker exec laravel-demo-app bash -c  "php artisan breeze:install" 
	

#this is to give  a string to compose update  in other to update the vvendor in cases of pulling fforom git hub
#check list of containers running in docker
see_container:
	docker ps
#access laravel installed folder

delete_container:
	docker-compose down
#access laravel installed folder

access_laravel:
	docker exec -it laravel-demo-app bash

composer-update:
	docker exec laravel-demo-app bash -c "composer update"
#laravel-demo-app above neabs laravel-demo-app for the docker conotainer #container_name

#to create a laravel project the . is to install in the directory rather than project name
create_laravel:
	docker exec laravel-demo-app bash -c  "composer create-project laravel/laravel ."

create_database_backup:
	docker exec laravel-demo-app bash -c  "composer require --dev kitloong/laravel-migrations-generator"
	docker exec laravel-demo-app bash -c  "php artisan migrate:generate" 
# docker exec laravel-demo-app bash -c  'php artisan migrate:generate --tables="table1,table2,table3,table4,table5"'
# https://github.com/kitloong/laravel-migrations-generator


data: 
	docker exec laravel-demo-app bash -c "php artisan migrate"
	docker exec laravel-demo-app bash -c "php artisan db:seed"
# php artisan db:seed --class=AdminSeeder
#individual seed