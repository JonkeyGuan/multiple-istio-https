#!/bin/bash

oc new-build --name my-ext-hello --binary -i ubi8-openjdk-11:1.3
