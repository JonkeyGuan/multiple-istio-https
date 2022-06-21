#!/bin/bash

cd ../
mvn clean package -DskipTests

cd openshift

oc start-build my-another-hello --from-file=../target/my-another-hello-0.0.1-SNAPSHOT.jar -F

