# Login to the eu12 landscape in cf environment 
cf login -a https://api.cf.eu12.hana.ondemand.com

# Switch to a space in your CF env 
cf target -s I559344

# Change the application name to bulletinboard-ads-blue

# Create service for Postgres sql
cf create-service postgresql-db development postgres-bulletinboard-ads

# Bind service to the application
cf bind-service bulletinboard-ads-blue postgres-bulletinboard-ads

#Push the application to Cloud foundry using the manifest.yml
cf push

# Make changes in the source code to the switch to the ap1/v2/reviews version 

# Create a new instance of the application and call it bulletinboard-ads-green

# Push the application to the green environment
cf push

# Test the new instance of the application and route all the traffic to the green instance and make it live if testing is successful.