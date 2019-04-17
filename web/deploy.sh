#!/bin/bash

DEPLOY_FILE=deploy.tar.gz

rm -rf public/web/*
brunch build --production
cd public/web
rm appconfig.py
mv prodconfig.py appconfig.py
tar -zcvf ${DEPLOY_FILE} *
cat ${DEPLOY_FILE} | ssh admin@podlomar.org 'rm -R /www/kodim.cz/web/*; tar zxvf - -C /www/kodim.cz/web && docker restart kodim.cz'
rm ${DEPLOY_FILE}
