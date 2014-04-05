#! /bin/sh
#地址
domain="o2o@115.28.208.154"

scp -r template/* ${domain}:/home/o2o/template/
scp -r static/*  ${domain}:/home/o2o/webroot/static
