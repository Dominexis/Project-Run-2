execute as @e[tag=itspungpond98.giveverdant,tag=pr.target] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=itspungpond98.giveverdant,tag=pr.target] at @s run execute as @a[tag=!itspungpond98.haveverdant,distance=..2,tag=pr.target] at @s if entity @s[tag=!itspungpond98.havepearlescent] run tellraw @s [{"text":"Please Continue To The","color": "white"},{"text":" East Gate (To The Left)","color": "green"}]
execute as @e[tag=itspungpond98.giveverdant,tag=pr.target] at @s run execute as @a[tag=!itspungpond98.haveverdant,distance=..2,tag=pr.target] at @s if entity @s[tag=!itspungpond98.havepearlescent] run give @s verdant_froglight
execute as @e[tag=itspungpond98.giveverdant,tag=pr.target] at @s run execute as @a[tag=!itspungpond98.haveverdant,distance=..2,tag=pr.target] at @s if entity @s[tag=!itspungpond98.havepearlescent] run tag @s add itspungpond98.haveverdant

execute as @e[tag=itspungpond98.giveverdant,tag=pr.target] at @s run execute as @a[distance=..2,tag=pr.target] at @s if entity @s[tag=itspungpond98.havepearlescent] run tellraw @s [{"text": "You've Already Have A ","color": "white"},{"text": "Pearlescent Froglight","color": "light_purple"},{"text": "! Please Go Through The West Gate (To The Right)","color": "white"}]
execute as @e[tag=itspungpond98.giveverdant,tag=pr.target] at @s run execute as @a[distance=..2,tag=pr.target] at @s if entity @s[tag=itspungpond98.havepearlescent] run tp @s ~-1 ~ ~