deploy: build push

build: 
	docker build -t psychosid/images:kuberhealthy-storage-check-v0.0.2 -f Dockerfile .

push:
	docker push psychosid/images:kuberhealthy-storage-check-v0.0.2

apply:
	kubectl apply -f deploy/storage-check.yaml  


clean:
	rm -f ./kuberhealthy-storage-check
	kubectl delete -f deploy/storage-check.yaml
