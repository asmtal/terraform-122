#!/bin/bash

USER=$1
DB=$2
PASS=$3

cp -av service-user-template.sql service-user.sql

sed -i '' "s/USER_PASSWORD/$PASS/g" service-user.sql
sed -i '' "s/USER_NAME/$USER/g" service-user.sql
sed -i '' "s/DATABASE_NAME/$DB/g" service-user.sql

POD=$(kubectl get po -l run=psql-client -o custom-columns=:metadata.name  | tail -1);kubectl -n infrastructure get po  $POD -o wide
kubectl -n infrastructure cp test-svc-user.sql  $POD://
kubectl -n infrastructure cp service-user.sql  $POD://
