#!/bin/bash

. .env

dvc remote add $BUCKET_NAME s3://$BUCKET_NAME/dvc-store
dvc remote modify $BUCKET_NAME endpointurl https://storage.yandexcloud.net
dvc remote default $BUCKET_NAME

dvc remote modify --local $BUCKET_NAME access_key_id $YC_ACCESS_KEY
dvc remote modify --local $BUCKET_NAME secret_access_key $YC_SECRET_KEY
