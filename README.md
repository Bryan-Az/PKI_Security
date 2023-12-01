# PKI Security
An assignment for CMPE 272, designing and implementing a  secure webserver.

To get this code up and running, make sure you change the reference to the host domain for certbot and in the nginx/conf files to your own domain. Adding the --staging flag to the certbot will also help during testing to avoid hitting the certbot limit for requests. Make sure your domain points to the I.P of the remote or virtual machine you are using to run the docker-compose up -d command.

1.  Includes Root CA (Certificate Authority), Signing CA, and TLS (Transfer-Layer Security) certificate.

        a. Let's Encrypt is a service that operates its' own Root CA and Intermediate Signing CA's. 

        b. Let's Encrypt can issue free SSL/TLS certificates to enable HTTPS on web servers.


2.  The TLS certificate created by Let's Encrypt will be used to install a web server (Tomcat for java apps).

As this is an assignment requiring two services (the Let's Encrypt CA service, and the Tomcat web service), I will be adding an additional service (Docker) to simplify and automate the orchestration of these two services and allow for quick setup.

# Steps 

> Clone this repo into the vm OR server you will be using as the I.P for your domain.

> CD into the PKI_Security folder

> Run docker-compose up -d

IMPORTANT:

Your first run will create the certificates in the certbot-etc volume attached to your webserver over HTTP.

To enable HTTPS with your new certificates, you should modify the webserver script:

> docker-compose stop

> modify your default.conf and uncomment the lines:

``` json
        #listen [::]:443;
        #listen 443 ssl; # managed by Certbot

        # RSA certificate
        #ssl_certificate /etc/letsencrypt/live/domain.com/fullchain.pem; #/etc/nginx/certs/localhost.pem; # managed by Certbot (or your own self signed local host certs)
        #ssl_certificate_key /etc/letsencrypt/live/domain.com/privkey.pem; #/etc/nginx/certs/localhost-key.pem; # managed by Certbot


        #Redirect non-https traffic to https
        #if ($scheme != "https") {
        #    return 301 https://$host$request_uri;
        #} # managed by Certbot
```

> docker-compose up -d