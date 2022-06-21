#!/bin/bash

cd ../
mvn clean package -DskipTests

cd openshift

oc start-build my-ext-hello --from-file=../target/my-ext-hello-0.0.1-SNAPSHOT.jar -F

