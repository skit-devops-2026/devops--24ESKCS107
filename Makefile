# Every team fills in the commands for their own stack.
# The CI pipeline calls these targets, so the names must not change.
#
# Examples:
#   Node    install: npm ci          test: npm test        build: npm run build
#   Python  install: pip install -r requirements.txt
#                                    test: pytest          build: echo "no build step"
#   Java    install: ./mvnw -B dependency:go-offline
#                                    test: ./mvnw test     build: ./mvnw package

.PHONY: install test build run docker-build docker-up

install:
	@echo "No dependencies to install for FitForge."

test:
	@echo "Running FitForge tests..."
	@test -f Home.html
	@test -f Workout.html
	@test -f Progress.html
	@test -f Dashboard.html
	@echo "All FitForge tests passed."

build:
	@echo "Checking FitForge project files..."
	@test -f Home.html
	@test -f Workout.html
	@test -f Progress.html
	@test -f Dashboard.html
	@echo "FitForge build check passed."

run:
	@echo "TODO: start the app locally" && exit 1

# Needed from M4 onwards
docker-build:
	@echo "TODO: docker build for frontend and backend" && exit 1

docker-up:
	docker compose up --build
