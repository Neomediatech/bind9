# Dockerized Bind9 on Ubuntu
Dockerized Bind9 version, based un Ubuntu

# Run
docker run -d --name bind9 --hostname bind9 -p 53:53/udp -p neomediatech/bind9

## Environment Variables
| Name                | Description                                                     | Default         |
| ------------------- | --------------------------------------------------------------- | --------------- |
| DISABLE_IPV6        | Disable listening on IPv6 stack? (true/false)                   | true            |
| BIND_OPTIONS        | Optional Bind9 startup options                                  | (empty)         |

