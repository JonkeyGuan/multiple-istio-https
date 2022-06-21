#!/bin/bash

oc new-build --name my-another-hello --binary -i ubi8-openjdk-11:1.3
