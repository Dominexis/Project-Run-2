playsound entity.villager.no master @a[distance=..5] ~ ~ ~ 100 1 1
tellraw @s [{"text": "Please Give Me ","color": "white"},{"text": "Verdant Froglight","color": "green"},{"text": " Not ","color": "white"},{"text": "Pearlescent Froglight!","color": "light_purple"}]
# give @p[tag=pr.target] pearlescent_froglight
# kill @s