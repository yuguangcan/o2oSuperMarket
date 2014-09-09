#! /bin/sh
#地址
domain="o2o@115.28.208.154"

scp -r dist/static/*  ${domain}:/home/o2o/static/
scp -r dist/template/*  ${domain}:/home/o2o/template/
