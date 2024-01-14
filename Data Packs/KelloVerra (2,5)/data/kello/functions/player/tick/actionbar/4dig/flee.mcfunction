function help:d5e1daae6d2faec66813a93eeba5ea189824f4abdff82d2c4be9f5739e12aae8

execute if entity @s[tag=kello.player.flee_revertable] run scoreboard players set @s kello.entity.state 2
execute if entity @s[tag=kello.player.grappling] run scoreboard players set @s kello.entity.state 0
return 1