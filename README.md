Créaction Dockerfile
Sauvegarder le Dockerfile **Ctrl+s**


Création du repositorie sur docker hub.

Construire, lancer et pousser l'image dans le terminal de vscode :
```Bash
docker build -t "repositorie"
docker run -d -p 80:80 "repositorie"
docker ps -a
docker push "repositorie"
```
Vérification de la création de l'image sur : **localhost/weatherforecast**

Création des fichiers deployment.yml et service.yml
Sauvegarder les fichiers **ctrl+s**

Lancer la commande dans le terminal :
```bash
kubectl apply -f .\ressources-files\service.yml,.\ressouces-files\deployment.yml

```
