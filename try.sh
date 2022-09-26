REG_USERNAME="jagdeesh1234"
REG_PASSWORD="Jeeva@6428"
echo "====> Logging into conatiner"
sudo docker login -u $REG_USERNAME -p $REG_PASSWORD
if [ $? -ne 0 ] ; then
        echo "ERROR: Docker Login failed"
        exit 1
fi
echo "====> Tagging the image"
docker tag api-gateway jagdeesh1234/rent-yourcar:api-gateway
docker tag mysql jagdeesh1234/rent-yourcar:mysql
docker tag build-bookings-management jagdeesh1234/rent-yourcar:build-bookings-management
docker tag build-email-service jagdeesh1234/rent-yourcar:build-email-service
docker tag build-chat-service jagdeesh1234/rent-yourcar:build-chat-service
docker tag build-payment-service jagdeesh1234/rent-yourcar:build-payment-service
docker tag build-user-service jagdeesh1234/rent-yourcar:build-user-service
docker tag build-authentication-service jagdeesh1234/rent-yourcar:build-authentication-service
docker tag build-eureka-server jagdeesh1234/rent-yourcar:build-eureka-server
docker tag build-eureka-server jagdeesh1234/rent-yourcar:build-product-webapp
docker tag rabbitmq:management jagdeesh1234/rent-yourcar:rabbitmq
docker tag mongo jagdeesh1234/rent-yourcar:mongo
docker tag config jagdeesh1234/rent-yourcar:config

if [ $? -ne 0 ] ; then
        echo "ERROR: Docker tagging images fialed"
        exit 1
fi


echo "====> Pushing the image to docker repositoy"
docker push  jagdeesh1234/rent-yourcar:api-gateway
docker push  jagdeesh1234/rent-yourcar:mysql
docker push  jagdeesh1234/rent-yourcar:build-bookings-management
docker push  jagdeesh1234/rent-yourcar:build-email-service
docker push  jagdeesh1234/rent-yourcar:build-chat-service
docker push  jagdeesh1234/rent-yourcar:build-payment-service
docker push  jagdeesh1234/rent-yourcar:build-user-service
docker push  jagdeesh1234/rent-yourcar:build-authentication-service
docker push  jagdeesh1234/rent-yourcar:build-eureka-server
docker push  jagdeesh1234/rent-yourcar:build-product-webapp
docker push  jagdeesh1234/rent-yourcar:rabbitmq
docker push  jagdeesh1234/rent-yourcar:mongo
docker push  jagdeesh1234/rent-yourcar:config

if [ $? -ne 0 ] ; then
        echo "ERROR: Docker Pushing the images failed"
        exit 1
fi

echo "Pushed all the images to repository"
