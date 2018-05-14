# JENNIFER Java Agent
AGENT_HOME=/opt/agent.java
export CATALINA_OPTS="$CATALINA_OPTS -javaagent:$AGENT_HOME/jennifer.jar -Djennifer.config=$AGENT_HOME/conf/jennifer.conf"
