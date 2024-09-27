APP_NAME=flask-ml-service-trungnb
RG=DefaultResourceGroup-SEAU


#you can see a list of runtimes using 
#az webapp list-runtimes --linux
RUNTIME=PYTHON:3.10

# Create a resource group if you need it.
az group create --location eastus --name $RG

# Create an App Service plan in FREE tier if you need it.
echo "Deploying Webapp using free tier"
az webapp up --name $APP_NAME --resource-group $APP_NAME --sku F1

echo "Azure Web App Deployed Successfully"