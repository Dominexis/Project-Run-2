# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add im1294.kill_count dummy {"text": "Mob Counter"}
#scoreboard objectives add im1294.skeleton_count dummy
#scoreboard objectives add im1294.spider_count killed:spider {"text": "Spiders"}

scoreboard players add Zombies im1294.kill_count 0
scoreboard players add Skeletons im1294.kill_count 0
scoreboard players add Spiders im1294.kill_count 0

scoreboard objectives add im1294.wall_right dummy
scoreboard objectives add im1294.floor_right dummy
scoreboard objectives add im1294.entrance_right dummy
scoreboard objectives add im1294.wall_left dummy
scoreboard objectives add im1294.floor_left dummy
scoreboard objectives add im1294.entrance_left dummy
scoreboard objectives add im1294.central dummy
scoreboard objectives add im1294.summit dummy