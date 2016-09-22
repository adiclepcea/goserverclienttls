# goserverclienttls
Example of communication between a server and a client in go using tls for authentication for both client and server.

##What

When you communicate between a http server and a client you sometimes need a secure connection. That is, you will access your server by using __https://...__ instead of __http://...__.

For a normal communication (like a web site) that would suffice.

If a user wants tu use the site and the site contains some sensible information, then, usually an interface asking for a username and password would be used.

There are however situations when you want to identify and authorize the client to use your site by using another method. This method could (and usually is) be using some form of encription.

This exemple just shows how to use a certificate (which uses encryption of course), to also identify the client.


##How

To use this example you need to have the __go__ compiler installed

This example uses a self signed certificate obtained by using openssl command line. Linux and MacOS have openssl available, for Windows, you should install it yourself, but if you have git installed, normally you should have it available allready in your system.

To generate the keys, you run the ``` generate_self_signed_keys.sh ```. You will get 3 files. The ``` cert.pem ``` file is the same as ``` ca-chain.cert.pem ``` as this is a self signed certificate.

*This is only for exemplification. Never use this in a production environment.*

If you've decided to use these keys, then just copy them inside server and client folders.

Then go in the server folder and run the program (i.e. you could use ``` go run main.go ```).
Then go in the client folder and run the same command to run the client.

If everything went well, you should have a simple _Hello World!_ answer.

If you want to use go to generate your certificates, you could use this:

[https://github.com/driskell/log-courier/blob/master/lc-tlscert/lc-tlscert.go](https://github.com/driskell/log-courier/blob/master/lc-tlscert/lc-tlscert.go).
