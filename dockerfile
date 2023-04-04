FROM mcr.microsoft.com/dotnet/sdk:7.0 AS builder
WORKDIR /app
COPY DotNet.Docker.csproj .
RUN  dotnet restore DotNet.Docker.csproj
COPY . ./
RUN dotnet publish -o /app/build -c Release

FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS publisher
COPY --from=builder /app/build .
ENTRYPOINT [ "dotnet", "DotNet.Docker.dll" ]