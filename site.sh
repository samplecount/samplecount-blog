#!/bin/sh -e

stack build
stack exec samplecount clean
stack exec samplecount watch
