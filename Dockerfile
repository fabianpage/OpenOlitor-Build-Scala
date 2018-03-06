
## start with multiimage?
FROM fabianpage/scala-cf-cli

RUN pwd
RUN ls
RUN git clone https://github.com/OpenOlitor/openolitor-server.git
RUN pwd
RUN ls
RUN ls openolitor-server/
RUN cd openolitor-server/ &&\
  pwd &&\
  ls &&\
  git checkout v2 &&\
  sbt compile universal:package-bin &&\
  git checkout prod &&\
  sbt compile universal:package-bin 