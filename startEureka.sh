#!/bin/bash
# cp target/eureka-service-*.jar ./eureka-service.jar
nohup java -jar eureka-service.jar &
MyPID=$!                        				                  
echo $MyPID