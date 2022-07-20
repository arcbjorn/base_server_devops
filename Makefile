run:
	- ansible-playbook $(pb) --syntax-check

deploy_services:
	- ansible-playbook services/deploy_services.yaml --syntax-check

tear_down_services:
	- ansible-playbook services/tear_down_services.yaml --syntax-check

start_services:
	- ansible-playbook services/start_services.yaml --syntax-check

stop_services:
	- ansible-playbook services/stop_services.yaml --syntax-check

restart_services:
	- ansible-playbook services/restart_services.yaml --syntax-check

redeploy_service:
	docker-compose up -d --force-recreate --build ${name}