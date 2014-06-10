#! /bin/sh
#地址
domain="o2o@115.29.102.225"

scp -r static/*  ${domain}:/home/o2o/webroot/static
scp -r template/* ${domain}:/home/o2o/template/
