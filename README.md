# phpIPam (PHP IP Address Management)
phpipam is an open-source web IP address management application. Its goal is to provide light and simple IP address management application.

Goal of this repository is to provide a lightweight docker image that can be used to have applciation running quickly. 

## Running the application 
I have tried to make it as simple as possible to run the application quickly. Therefore you can use docker-compose or just docker engine itself to start.

### Requirements 
Application does require backend database. For purposes of scaling and seperation of processes I have not bundled the database in single container. Therefore if not using the bundle/docker-compose you need to provide details for database connection. 


### Docker compose 
```
wget https://raw.githubusercontent.com/RafPe/docker-phpipam/master/docker-compose.yml
docker-compose up -d 
```

### Docker engine 
```
docker run -d --name SomeIPAMname rafpe/docker-phpipam
```


Image supports the use of the following env variables.

**MYSQL_DB_HOSTNAME** jdjdjd  
**MYSQL_DB_USERNAME** sssss  
**MYSQL_DB_PASSWORD** 23123   
**MYSQL_DB_NAME**     2312312  
**MYSQL_DB_PORT**     12313123  

**SSL_ENABLED**  # true/false, enable or disable SSL as a whole  
**SSL_KEY**      # path to an SSL key file. Only makes sense combined with ssl_cert  
**SSL_CERT**     # path to an SSL certificate file. Only makes sense combined with ssl_key  
**SSL_CA**       # path to a file containing SSL CA certs  
**SSL_CAPATH**   # path to a directory containing CA certs  
**SSL_CIPHER**   # one or more SSL Ciphers  

**PROXY_ENABLED**  # Enable/Disable usage of the Proxy server  
**PROXY_HOST**     # Proxy server FQDN or IP  
**PROXY_PORT**     # Proxy server port  
**PROXY_USER**     # Proxy Username  
**PROXY_PASS**     # Proxy Password  
**PROXY_USEAUTH**  # Enable/Disable Proxy authentication  

