# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add im1294.kill_count dummy {"text":"Mob Counter","type":"text"}
#scoreboard objectives add im1294.skeleton_count dummy
#scoreboard objectives add im1294.spider_count killed:spider {"text": "Spiders"}

scoreboard players set Zombies im1294.kill_count 0
scoreboard players set Skeletons im1294.kill_count 0
scoreboard players set Spiders im1294.kill_count 0
scoreboard players set ZombiesChange im1294.kill_count 0
scoreboard players set SkeletonsChange im1294.kill_count 0
scoreboard players set SpidersChange im1294.kill_count 0
scoreboard players set im1294.two im1294.kill_count 2

scoreboard objectives add im1294.zombie_kills killed:zombie
scoreboard objectives add im1294.skeleton_kills killed:skeleton
scoreboard objectives add im1294.spider_kills killed:spider

scoreboard objectives add im1294.wall_right dummy
scoreboard objectives add im1294.floor_right dummy
scoreboard objectives add im1294.entrance_right dummy
scoreboard objectives add im1294.wall_left dummy
scoreboard objectives add im1294.floor_left dummy
scoreboard objectives add im1294.entrance_left dummy
scoreboard objectives add im1294.central dummy
scoreboard objectives add im1294.summit dummy

function im1294:zombies/zombie_toggle
function im1294:skeletons/skeleton_toggle
function im1294:spiders/spider_toggle
return 1