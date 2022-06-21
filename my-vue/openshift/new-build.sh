#!/bin/bash

oc new-build --name=my-vue --strategy docker --binary=true
