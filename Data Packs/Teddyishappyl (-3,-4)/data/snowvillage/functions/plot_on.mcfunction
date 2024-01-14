fill ~-30 ~17 ~-25 ~-31 ~9 ~-26 minecraft:light[level=0]

#Boat Stuff
scoreboard objectives add teddy.boat dummy
scoreboard objectives add teddy.value dummy
scoreboard objectives add teddy.checkpointbool dummy

scoreboard players set #door_1_timer teddy.value 1
return 1