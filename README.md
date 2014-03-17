# Erlang Cowboy WSS example

I struggled for a while to get a working example with erlang and secure websockets. A lot had to do with not understanding the recommended erlang build chain. Here's a working example of WSS.

## Steps

 1. git clone https://github.com/DanThiffault/cowboy-wss-example
 1. ```openssl req -x509 -newkey rsa:2048 -keyout priv/ssl/key.pem -out priv/ssl/cert.pem -days 365 -nodes```
 1. make all
 1. make rel
 1. ./_rel/bin/websocket_example start
 1. visit http://localhost:8080 or https://localhost:8443

If you're using https, make sure to change the connection to wss://localhost:8443

## Debugging 

tail -F _rel/log/*


## Useful links

 * [Erlang.mk](https://github.com/extend/erlang.mk)
 * [Relx release creation](https://github.com/erlware/relx)
 * [Explanation of Erlang.mk & Relx](http://ninenines.eu/articles/erlang.mk-and-relx/)

## Explanation

