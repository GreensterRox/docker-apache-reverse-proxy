# Reverse Proxy Apache Image

I needed a simple reverse proxy so I created this simplistic docker container that creates a reverse proxy using apache.
You can deploy this to any server that runs docker and have it redirect/gateway/proxy incoming requests to a hidden internal endpoint!
Notes: 

   * Runs on port 80

## How to use: 

### Build it 
```
docker build -t my-reverse-proxy:latest .
```

### Run it - simply pass in your gateway 'path' (not fqdn) and pass in your 'destination'. 
### Note: The container must be able to reach the 'destination' over the network (but you knew that already!).
```
docker run -dt -p 80:80 -e PROXY_GATEWAY="/api" -e PROXY_DESTINATION="http://myhost.com:3500" --name="my-reverse-proxy" my-reverse-proxy:latest
```

### tag it
```
docker tag -f my-reverse-proxy:1.0 yourRepo.com/my-reverse-proxy:1.0
```

### publish it
```
docker push yourRepo.com/my-reverse-proxy:1.0
```