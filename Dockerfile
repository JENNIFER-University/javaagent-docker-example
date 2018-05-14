FROM alpine AS builder

LABEL maintainer="Khalid Saeed khalid@jennifersoft.com"
ENV AGENT_VERSION=5.3.2.7

RUN apk --no-cache add unzip

COPY jennifer-agent-java-${AGENT_VERSION}.zip /
RUN unzip -oq jennifer-agent-java-${AGENT_VERSION}.zip -d /tmp


FROM tomcat:8.5-jre8-alpine

RUN apk update && apk upgrade

COPY --from=builder /tmp/agent.java /opt/agent.java
COPY jennifer.conf /opt/agent.java/conf/jennifer.conf
COPY setenv.sh ${CATALINA_HOME}/bin