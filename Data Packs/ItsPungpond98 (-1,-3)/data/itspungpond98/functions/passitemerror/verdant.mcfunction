playsound minecraft:entity.villager.no master @a[distance=..5] ~ ~ ~ 100 1 1
tellraw @s [{"text":"Please Give Me ","color":"white","type":"text"},{"text":"Verdant Froglight","color":"green","type":"text"},{"text":" Not ","color":"white","type":"text"},{"text":"Pearlescent Froglight!","color":"light_purple","type":"text"}]
# give @p[tag=pr.target] pearlescent_froglight
# kill @s
return 1