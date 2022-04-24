docker_build:
	docker-compose up -d --build

docker_up:
	docker-compose up -d

docker_down:
	docker-compose down

docker_remove_dangling_images:
	docker images --filter "dangling=true" -q --no-trunc | xargs docker rmi

deploy:
	chmod +x deploy.sh
	sh -c ./deploy.sh