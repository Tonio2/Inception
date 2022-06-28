all:
	if [ ! -d /home/alabalet/data/wordpress ];then;\
		mkdir /home/alabalet/data/wordpress;\
	fi;\
	if [ ! -d /home/alabalet/data/mariadb ];then;\
		mkdir /home/alabalet/data/mariadb;\
	fi
	docker compose -f ./srcs/docker-compose.yml up

down:
	docker compose -f ./srcs/docker-compose.yml down

re: clean
	docker compose -f srcs/docker-compose.yml up --build

clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\
	rm -rf /home/alabalet/data/wordpress;\
	rm -rf /home/alabalet/data/mariadb;

.PHONY: all re down clean