#!/bin/sh

curl --insecure \
     --user "$cp4iuser:$cp4ipw" \
     --request POST \
     --url "$cp4ibasepath/CarRepairClaim" \
     --header "X-IBM-Client-Id:$cp4iclientid" \
     --header 'accept: application/json' \
     --header 'content-type: application/json' \
     --data '{
         "Name":"Derek Subaru",
         "eMail":"SubaruDerek@example.com",
         "LicensePlate":"SUBARU1",
         "DescriptionOfDamage":"You cannot see it from the outside but the engine will not start any more. This car is rubbish and I hate it. Fix it quickly or I will sue!",
         "PhotoOfCar":"'$(base64 car.jpg)'",
         "ContactID":"8897796795006976"
         }'
