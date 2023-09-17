scoreboard players set gamestate lory 0
scoreboard players set tostoprun lory 0
kill @e[tag=lory.deathplane,tag=pr.target]
kill @e[tag=lory.water,tag=pr.target]
kill @e[tag=lory.sign,tag=pr.target]
kill @e[tag=lory.countdown,tag=pr.target]
clone ~-21 ~10 ~-11 ~21 ~16 ~-8 ~20 ~1 ~-2
tellraw @a[tag=pr.target] {"text": "You can now enter the map!","color": "green"}
setblock ~7 ~59 ~-3 campfire[lit=true]
setblock ~16 ~62 ~-10 campfire[lit=true]
