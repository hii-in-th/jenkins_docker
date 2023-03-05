#git add --chmod=+x .\deploy.sh
mkdir -p ./data/home
chmod 777 -R ./data

echo "Deploy stack"
docker stack deploy -c ./stack.yml jenkins
chmod 777 -R ./data
