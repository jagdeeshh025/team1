REG_USERNAME="jagdeesh1234"
REG_PASSWORD="Jeeva@6428"
echo "====> Logging into conatiner"
sudo docker login -u $REG_USERNAME -p $REG_PASSWORD
if [ $? -ne 0 ] ; then
        echo "ERROR: Docker Login failed"
        exit 1
fi

#sudo docker tag mongo:mongo1 jagdeesh1234/rent-yourcar:mongo1
sudo docker tag config:config1 jagdeesh1234/rent-yourcar:config1
sudo docker tag mysql:mysql jagdeesh1234/rent-yourcar:mysql
echo "====> Inintialising Pushing the image to conatiner"
#sudo docker push jagdeesh1234/rent-yourcar:mongo1
sudo docker push jagdeesh1234/rent-yourcar:config1
sudo docker push jagdeesh1234/rent-yourcar:mysql
if [ $? -ne 0 ] ; then
        echo "ERROR: Docker PUSH failed"
        exit 1
fi
