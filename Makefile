run:
	- ansible-playbook $(pb) --syntax-check

deploy_services:
	- ansible-playbook deploy_services.yaml --syntax-check

tear_down_services:
	- ansible-playbook tear_down_services.yaml --syntax-check

start_services:
	- ansible-playbook start_services.yaml --syntax-check

stop_services:
	- ansible-playbook stop_services.yaml --syntax-check

restart_services:
	- ansible-playbook restart_services.yaml --syntax-check

redeploy_service:
	docker-compose up -d --force-recreate --build ${name}