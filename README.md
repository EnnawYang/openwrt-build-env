# openwrt-build-env  

For [lede](https://github.com/coolsnowwolf/lede) and [immortalwrt](https://github.com/immortalwrt/immortalwrt)  

### Usage:  

```
docker run -dit \
  --name openwrt-build-env \
  --net host \
  ennawyang/openwrt-build-env:latest
```

### Enter Container:  
`docker exec -it openwrt-build-env zsh (or bash)`

### Thanks:  
[immortalwrt/opde](https://github.com/immortalwrt/opde)  
[P3TERX/openwrt-build-env](https://github.com/P3TERX/openwrt-build-env)
