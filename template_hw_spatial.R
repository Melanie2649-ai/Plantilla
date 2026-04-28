rm(list = ls())
#setwd("")

gpklink="uruguay_maps.gpkg"
# jsonlink

library(sf)

map1=read_sf(gpklink, layer = "uruguay_ddm")

library(ggplot2)
map1gg=ggplot() + theme_bw() + geom_sf(data = map1, color='red')
map1gg

saveRDS(map1gg,file='map1.rds')

map2=read_sf(gpklink, layer = "uruguay_psm")

map2gg=ggplot() + theme_void() + geom_sf(data = map2,
                                         aes(size=size))
map2gg
saveRDS(map2gg,file='map2.rds')

map3=read_sf(gpklink, layer = "continent")
map3gg=ggplot() + theme_void() + geom_sf(data = map3,
                                         aes(fill=Población))
map3gg

saveRDS(map1gg,file='map3.rds')
