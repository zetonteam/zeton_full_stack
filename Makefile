up:
	docker-compose up

drop:
	docker-compose down -v

load_data:
	docker-compose exec web bash -c "python manage.py loaddata fixtures/*.json"

createsuperuser:
	docker-compose exec web python manage.py createsuperuser

makemigrations:
	docker-compose exec web python manage.py makemigrations

migrate:
	docker-compose exec web python manage.py migrate

shell:
	docker-compose exec web bash -c python manage.py shell

dbshell:
	docker-compose exec web bash -c python django-admin dbshell

psql:
	docker-compose exec -i db psql -U postgres
