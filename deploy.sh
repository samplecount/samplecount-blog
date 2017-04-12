#!/bin/sh -e

deploy_host=`cat conf/deploy_host`

stack build
stack exec samplecount clean
stack exec samplecount build
rsync -av --delete _site/ "${deploy_host}/"
