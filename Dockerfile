FROM gtadam/sonarscan-dotnet:latest

RUN apt-get update && \
    curl -fsSL https://deb.nodesource.com/setup_14.x | bash && \
    apt-get -y install nodejs && \
    npm install -g @angular/cli

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
