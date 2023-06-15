execute positioned ~ ~18 ~18 as @e[tag=itspungpond98.info,tag=pr.target] at @s run execute as @a[distance=..5,tag=pr.target] at @s if entity @s[tag=!itspungpond98.getinfo] run function pr:player/checkpoint/mark
execute as @e[tag=itspungpond98.info,tag=pr.target] at @s run tag @a[distance=..5,tag=!itspungpond98.getinfo,tag=pr.target] add itspungpond98.getinfo
scoreboard players add @a[tag=itspungpond98.getinfo,tag=pr.target,scores={itspungpond98.info=..170}] itspungpond98.info 1

execute as @a[tag=itspungpond98.getinfo,tag=pr.target] at @s if score @s itspungpond98.info matches 10 run tellraw @s [{"text": "[ItsPungpond98]: ","color": "#34C5CE"},{"text": "Hey there, traveller! Or should I say The Project Runner. hehe Anyway, seems like you want to get pass this town, huh?","color": "white"}]
execute as @a[tag=itspungpond98.getinfo,tag=pr.target] at @s if score @s itspungpond98.info matches 50 run tellraw @s [{"text": "[","color": "green"},{"selector":"@s"},{"text": "]: ","color": "green"},{"text": "Yeah, of course! I heard the finish is somewhere pass this town.","color": "white"}]
execute as @a[tag=itspungpond98.getinfo,tag=pr.target] at @s if score @s itspungpond98.info matches 100 run tellraw @s [{"text": "[ItsPungpond98]: ","color": "#34C5CE"},{"text": "Well, it's on lock down, but I'm sure you can bribe the guards with some frog lights. The west guard likes pearlescent while the east guard likes verdant.","color": "white"}]
execute as @a[tag=itspungpond98.getinfo,tag=pr.target] at @s if score @s itspungpond98.info matches 130 run tellraw @s [{"text": "[","color": "green"},{"selector":"@s"},{"text": "]: ","color": "green"},{"text": "Cool! Got it! Thanks a lot!","color": "white"}]
execute as @a[tag=itspungpond98.getinfo,tag=pr.target] at @s if score @s itspungpond98.info matches 160 run tellraw @s [{"text": "[ItsPungpond98]: ","color": "#34C5CE"},{"text": "No Problem! Good Luck :D","color": "white"}]

#Info tag also used as checkpoint