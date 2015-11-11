#!/bin/sh

RESOURCE_GROUP=$1

azure group create $1 "West US"
azure group deployment create -f DSE-mainTemplate.json -e DSE-mainTemplate.param.dev.json $RESOURCE_GROUP dse

