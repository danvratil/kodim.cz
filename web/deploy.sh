#!/bin/bash

DEPLOY_FILE=deploy.tar.gz

rm -rf public/*
brunch build --production
cd public
rm appconfig.py
mv prodconfig.py appconfig.py
tar -zcvf ${DEPLOY_FILE} *
cat ${DEPLOY_FILE} | ssh admin@podlomar.org 'rm -R /www/kodim.cz/*; tar zxvf - -C /www/kodim.cz && docker restart kodim.cz'
rm ${DEPLOY_FILE}
