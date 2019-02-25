FROM nimlang/nim:latest
MAINTAINER k.nzk

RUN apt-get update && apt-get install -y bash vim curl

RUN nimble -y install jester@0.4.1

WORKDIR /opt/nim

CMD ["/bin/bash"]
