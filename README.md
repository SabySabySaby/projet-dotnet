Créaction Dockerfile
```bash
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS builder
WORKDIR /app
COPY DotNet.Docker.csproj .
RUN  dotnet restore DotNet.Docker.csproj
COPY . ./
RUN dotnet publish -o /app/build -c Release

FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS publisher
COPY --from=builder /app/build .
ENTRYPOINT [ "dotnet", "DotNet.Docker.dll" ]

```

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
