webserver:

	sudo apt-get install golang -y
	#export GOPATH=$HOME/My_app/go
	go build fibonacci.go
	docker build -t webserver .
	docker tag webserver:latest  gcr.io/gifted-decker-214823fibonacci:latest

deploy: clean
	#go run my_app.go
	#docker run -d --name webserver -p 80:8080 webserver:latest
	#gcloud docker -- push gcr.io/gifted-decker-214823/fibonacci:latest
	#kubectl run fibonacci --image=gcr.io/gifted-decker-214823/fibonacci:latest
	#kubectl expose deployment fibonacci --port 8080 --type LoadBalancer
clean:


	-kubectl delete services fibonacci
	-kubectl delete deployment fibonacci
	#docker system prune -a -f
	-docker rm -f `docker ps -aq`
	-rm -R fibonacci
