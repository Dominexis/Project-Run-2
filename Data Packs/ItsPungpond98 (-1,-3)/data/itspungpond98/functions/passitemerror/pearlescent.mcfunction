playsound entity.villager.no master @a[distance=..5] ~ ~ ~ 100 1 1
tellraw @a[distance=..5,tag=pr.target] [{"text": "Please Give Me ","color": "white"},{"text": "Pearlescent Froglight","color": "light_purple"},{"text": " Not ","color": "white"},{"text": "Verdant Froglight!","color": "green"}]
kill @s