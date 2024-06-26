docker_image="zypl2registry.azurecr.io/spitamen-scor-api:latest"
image_name=$(echo $docker_image | cut -d "/" -f 2 | cut -d ":" -f 1)
echo $image_name

/usr/bin/docker pull $docker_image
/usr/bin/docker save -o /home/sohibjon/devops/$image_name.tar $docker_image
echo "backup finished"


for docker_image in zypl2registry.azurecr.io/spitamen-scor-api	zypl2registry.azurecr.io/imon-ocr-api	zypl2registry.azurecr.io/aloqabank-uz-score-backend	zypl2registry.azurecr.io/asiabank-kg-score-backend	zypl2registry.azurecr.io/finca-kg-score-backend	zypl2registry.azurecr.io/finca-kg-score-frontend	zypl2registry.azurecr.io/fincak-kg-score-backend_fastapi	zypl2registry.azurecr.io/swiss-capital:latest	zypl2registry.azurecr.io/swiss-passport:latest	zypl2registry.azurecr.io/swiss-api:dev	zypl2registry.azurecr.io/swiss-capital:dev	zypl2registry.azurecr.io/swiss-api:dev	zyplregistry.azurecr.i/obnk-scoring-api	zypl2registry.azurecr.io/naimikz-scoring-api:latest	zypl2registry.azurecr.io/naimikz-scoring-api:dev	zypl2registry.azurecr.io/arnur-api:dev	zypl2registry.azurecr.io/arnur-api:latest	zypl2registry.azurecr.io/zypl-score-cbi:latest	zypl2registry.azurecr.io/cbi-scoring-api:latest	zypl2registry.azurecr.io/zypl-score-cbi:dev	zypl2registry.azurecr.io/cbi-scoring-api:de	zyplregistry.azurecr.io/gulf-score-api	zypl2registry.azurecr.io/fincajordanserver	zypl2registry.azurecr.io/ahli-scoring-api:dev	zypl2registry.azurecr.io/ahli-scoring-api:latest	zypl2registry.azurecr.io/jordan_amc_ocr:latest	zypl2registry.azurecr.io/ahli-jordan-score-backend:latest	zypl2registry.azurecr.io/ahli-jordan-score-backend:dev	zyplregistry.azurecr.io/aion-2.0:latest	zyplregistry.azurecr.io/aion-back-v2:latest	zyplregistry.azurecr.io/aion-back-v2:dev	zyplregistry.azurecr.io/fazo-scoring-api:latest	zypl2registry.azurecr.io/lucid-backend:latest	zypl2registry.azurecr.io/collection-scoring-fastapi:latest	zypl2registry.azurecr.io/zypl-scoring:latest	zypl2registry.azurecr.io/finca-guatemala-front:latest	zypl2registry.azurecr.io/finca-guatemala-front:dev	zypl2registry.azurecr.io/finca-guatemala-scoring-api:latest	zypl2registry.azurecr.io/finca-guatemala-scoring-api:dev	zypl2registry.azurecr.io/zyplscoreanalysis:latest
	do
	image_name=$(echo $docker_image | cut -d "/" -f 2 | cut -d ":" -f 1)
	echo $docker_image $image_name

	/usr/bin/docker pull $docker_image
	/usr/bin/docker save -o /home/sohibjon/devops/$image_name.tar $docker_image
	echo "backup finished"	
	done

