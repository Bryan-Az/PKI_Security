# PKI Security
An assignment for CMPE 272, designing and implementing a  secure webserver.

1.  Includes Root CA (Certificate Authority), Signing CA, and TLS (Transfer-Layer Security) certificate.

        a. Let's Encrypt is a service that operates its' own Root CA and Intermediate Signing CA's. 

        b. Let's Encrypt can issue free SSL/TLS certificates to enable HTTPS on web servers.


2.  The TLS certificate created by Let's Encrypt will be used to install a web server (Tomcat for java apps).

As this is an assignment requiring two services (the Let's Encrypt CA service, and the Tomcat web service), I will be adding an additional service (Docker) to simplify and automate the orchestration of these two services and allow for quick setup.
