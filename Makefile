generate-key:
	@cd backend; go run cmd/key/main.go

docker-dev-build:
	docker compose -f docker-compose-dev.yml build

docker-dev-up:
	docker compose -f docker-compose-dev.yml up

docker-dev-down:
	docker compose -f docker-compose-dev.yml down

docker-build:
	docker compose build

docker-up:
	docker compose up

docker-down:
	docker compose down