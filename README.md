This template deploys a DataStax Enterprise (DSE) cluster to Azure running on Ubuntu virtual machines. The template also provisions a storage account, virtual network and public IP address required by the installation.  The template will deploy to the region that the resourceGroup it is part of is located in.


The script opscenter.sh installs OpsCenter and creates a cluster using the OpsCenter REST API.  When the API call is made, OpsCenter installs DSE on all the cluster nodes and starts it up.  

On completion, OpsCenter will be accessible at `http://{resourceGroup}cluster.{region}.cloudapp.azure.com:8888` For instance, if you created a deployment with the resourceGroup parameter set to datastax in the West US region you could access OpsCenter for the deployment at `http://datastaxcluster.westus.cloudapp.azure.com:8888`
