FROM gtadam/sonarscan-dotnet-nodejs:latest

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
