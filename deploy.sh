#! /bin/sh
#地址
domain="o2o@115.28.208.154"

scp -r dist/static/*  ${domain}:/home/o2o/webroot/static/
scp -r dist/template/*  ${domain}:/home/o2o/template/

domain2="o2o@112.126.72.144"

scp -r dist/static/*  ${domain}:/home/o2o/webroot/static/
scp -r dist/template/*  ${domain}:/home/o2o/template/
