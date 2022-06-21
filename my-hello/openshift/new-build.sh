#!/bin/bash

oc new-build --name my-hello --binary -i ubi8-openjdk-11:1.3
