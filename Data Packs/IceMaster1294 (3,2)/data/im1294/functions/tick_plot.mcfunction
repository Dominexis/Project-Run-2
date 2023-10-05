# This function will run every tick while players are in your plot on the center block at Y=0

function im1294:spawn_tick

#execute unless score @p[tag=pr.target] im1294.zombie_kills matches 0

# scoreboard players operation Zombies im1294.kill_count += @a[tag=pr.target] im1294.zombie_kills
# scoreboard players operation Skeletons im1294.kill_count += @a[tag=pr.target] im1294.skeleton_kills
# scoreboard players operation Spiders im1294.kill_count += @a[tag=pr.target] im1294.spider_kills

execute if entity @a[tag=pr.target,scores={im1294.zombie_kills=1..  }] run function im1294:zombies/zombie_toggle
execute if entity @a[tag=pr.target,scores={im1294.skeleton_kills=1..}] run function im1294:skeletons/skeleton_toggle
execute if entity @a[tag=pr.target,scores={im1294.spider_kills=1..  }] run function im1294:spiders/spider_toggle

scoreboard players set @a[tag=pr.target] im1294.zombie_kills 0
scoreboard players set @a[tag=pr.target] im1294.skeleton_kills 0
scoreboard players set @a[tag=pr.target] im1294.spider_kills 0

# The execute if should help prevent minor lag
# execute if score Zombies im1294.kill_count matches 1.. run function im1294:zombies/zombie_toggle
# execute if score Skeletons im1294.kill_count matches 1.. run function im1294:skeletons/skeleton_toggle
# execute if score Spiders im1294.kill_count matches 1.. run function im1294:spiders/spider_toggle

execute as @e[type=item,tag=!im1294.processed] run function im1294:process_item