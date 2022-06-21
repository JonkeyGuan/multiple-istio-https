#!/bin/bash

cd ../
mvn clean package -DskipTests

cd openshift

oc start-build my-hello --from-file=../target/my-hello-0.0.1-SNAPSHOT.jar -F

