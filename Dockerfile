FROM gtadam/sonarscan-dotnet:latest

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
