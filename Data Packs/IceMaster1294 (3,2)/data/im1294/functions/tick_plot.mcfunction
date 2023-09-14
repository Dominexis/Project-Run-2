# This function will run every tick while players are in your plot on the center block at Y=0

function im1294:spawn_tick

execute if predicate im1294:zombie_death run function im1294:zombies/zombie_toggle
execute if predicate im1294:skeleton_death run function im1294:skeletons/skeleton_toggle
execute if predicate im1294:spider_death run function im1294:spiders/spider_toggle