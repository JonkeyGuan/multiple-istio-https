#!/bin/bash

cd ..

oc start-build my-vue --from-dir=. -F

cd openshift
