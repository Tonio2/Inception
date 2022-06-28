all:
	chmod +x ./start.sh
	./start.sh
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose -f ./srcs/docker-compose.yml down

re: clean all

clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\
	rm -rf /home/alabalet/data/wordpress;\
	rm -rf /home/alabalet/data/mariadb;

.PHONY: all re down clean