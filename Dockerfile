FROM mcr.microsoft.com/dotnet/aspnet:5.0

RUN pwd
RUN ls /var/cache/blobs
RUN dotnet publish -c Release

RUN PWD

COPY bin/Release/net5.0/publish/ App/
WORKDIR /App
ENTRYPOINT ["dotnet", "NetCore.Docker.dll"]