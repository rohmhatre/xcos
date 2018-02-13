help:
	@echo "Docker Compose Help for Deploying interface"
	@echo  "-----------------------\n"
	@echo ""	
	@echo "Clone xocs on cloud:"
	@echo "    make clone"
	@echo ""
	@echo "Build docker images:"
	@echo "    make build"
	@echo ""
	@echo "To run containers:"
	@echo "    make start"
	@echo ""
	@echo "Now Your interface is ready. You can access it using browser just go to http://localhost:8001"
	@echo ""
	@echo "Really, really start over:"
	@echo "    make clean"
	@echo ""
	@echo "other utilities:restart,tail,status"



start:
	@docker-compose up -d

clone:
	@git clone https://github.com/FOSSEE/xcos_on_cloud.git

stop:
	@docker-compose stop

status:
	@docker-compose ps

restart: stop start

clean: stop
	@docker-compose rm --force

build:
	@docker-compose build

tail:
	@docker-compose logs -f

.PHONY: start stop status restart clean build tail 
