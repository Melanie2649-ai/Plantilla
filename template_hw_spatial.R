rm(list = ls())
#setwd("")

gpklink="combined_americas.gpkg"
# jsonlink

library(sf)

map1=read_sf(gpklink, layer = "mobiles_ddm")

library(ggplot2)
map1gg=ggplot() + theme_bw() + geom_sf(data = map1, color='red')
map1gg

saveRDS(map1gg,file='map1.rds')

map2=read_sf(gpklink, layer = "mobiles_psm")

map2gg=ggplot() + theme_void() + geom_sf(data = map2,
                                         aes(size=size))
map2gg
saveRDS(map2gg,file='map2.rds')

map4=read_sf(gpklink, layer = "continent")
map4gg=ggplot() + theme_void() + geom_sf(data = map4,
                                         aes(fill= mobiles_q5_cat))
map4gg

saveRDS(map1gg,file='map4.rds')

