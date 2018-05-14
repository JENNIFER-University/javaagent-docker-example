## JENNIFER Java agent Docker Example
This sample repo can be used as base to install JENNIFER java agent for your Docker application.

You can read the tutorial at [JENNIFER University](https://edu.jennifersoft.com/articles/jennifer-5/java-agent-5/how-to-monitor-java-application-on-docker)

## Requirements
* JENNIFER java agent package is required

## Usage
* Download the Java agent pacakge and move it to the root folder.
* Edit the Docker file and set the agent version in ```AGENT_VERSION``` environment variable. For example if you donwloaded java agent version 5.3.2.7 then set the value as follow

```
ENV AGENT_VERSION=5.3.2.7
````

* Edit ```jennifer.conf``` and set JENNIFER data server IP address
```
server_address = 192.168.9.37
```

* build the image and run the container
