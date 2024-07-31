
create:
	@kubectl create -f namespace.yaml --save-config --record
	@kubectl create -f pv.yaml --save-config --record
	@kubectl create -f pvc.yaml --save-config --record
	@kubectl create -f deployment.yaml --save-config --record
	@kubectl create -f service.yaml --save-config --record
	@kubectl create -f ingress.yaml --save-config --record
	

apply:
	@kubectl apply -f namespace.yaml
	@kubectl apply -f pv.yaml
	@kubectl apply -f pvc.yaml
	@kubectl apply -f deployment.yaml 
	@kubectl apply -f service.yaml 
	@kubectl apply -f ingress.yaml 
	@kubectl apply -f storageClass.yaml
 



exec: 
	minikube service gitlab -n gitlab

# Exemplo de comando Chave Admin Jenkins
#kubectl exec jenkins-5ccb4f9498-56svc cat /var/jenkins_home/secrets/initialAdminPassword 33c7f2604a274647acb327b87dba6427	
#kubectl exec -n jenkins jenkins-6547c655d4-plmcs cat /var/jenkins_home/secrets/initialAdminPassword

# minikube tunnel
# minikube ip
# minikube addons enable ingress
