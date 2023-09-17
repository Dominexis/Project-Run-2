execute at @e[type=minecraft:item_display,tag=inquognito.gun,limit=1] align xyz if entity @s[tag=!inquognito.gun,dx=0] run function inquognito:logic/abilities/gun/acquire

execute at @e[type=minecraft:item_display,tag=inquognito.gun.frostbite,limit=1] align xyz if entity @s[tag=!inquognito.gun.frostbite,dx=0] run function inquognito:logic/abilities/gun/augments/frostbite/acquire
execute at @e[type=minecraft:item_display,tag=inquognito.gun.nova,limit=1] align xyz if entity @s[tag=!inquognito.gun.nova,dx=0] run function inquognito:logic/abilities/gun/augments/nova/acquire
execute at @e[type=minecraft:item_display,tag=inquognito.gun.trinity,limit=1] align xyz if entity @s[tag=!inquognito.gun.trinity,dx=0] run function inquognito:logic/abilities/gun/augments/trinity/acquire

execute at @e[type=minecraft:item_display,tag=inquognito.suit.mk2,limit=1] align xyz if score @s[dx=0] inquognito.suit matches 1 run function inquognito:logic/suits/mk2
execute at @e[type=minecraft:item_display,tag=inquognito.suit.mk3,limit=1] align xyz if score @s[dx=0] inquognito.suit matches 2 run function inquognito:logic/suits/mk3

execute at @e[type=minecraft:item_display,tag=inquognito.code.1,limit=1] align xyz if entity @s[tag=!inquognito.code.1,dx=0] run function inquognito:logic/clearance/1/codes/1
execute at @e[type=minecraft:item_display,tag=inquognito.code.2,limit=1] align xyz if entity @s[tag=!inquognito.code.2,dx=0] run function inquognito:logic/clearance/1/codes/2
execute at @e[type=minecraft:item_display,tag=inquognito.code.3,limit=1] align xyz if entity @s[tag=!inquognito.code.3,dx=0] run function inquognito:logic/clearance/1/codes/3

execute at @e[type=minecraft:item_display,tag=inquognito.code.sewer,limit=1] align xyz if entity @s[tag=!inquognito.clearance.sewer,dx=0] run function inquognito:logic/clearance/sewer

execute at @e[type=minecraft:item_display,tag=inquognito.nightVisionScope,limit=1] align xyz if entity @s[tag=!inquognito.nightVisionScope,dx=0] run function inquognito:logic/pickups/night_vision_scope/acquire

execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.energy,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.energy,dx=0] run function inquognito:logic/pickups/energy/acquire

execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.health.1,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.health.1,dx=0] run function inquognito:logic/pickups/health/acquire/1
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.health.2,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.health.2,dx=0] run function inquognito:logic/pickups/health/acquire/2
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.health.3,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.health.3,dx=0] run function inquognito:logic/pickups/health/acquire/3
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.health.4,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.health.4,dx=0] run function inquognito:logic/pickups/health/acquire/4
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.health.5,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.health.5,dx=0] run function inquognito:logic/pickups/health/acquire/5

execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.damage.1,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.damage.1,dx=0] run function inquognito:logic/pickups/damage/acquire/1
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.damage.2,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.damage.2,dx=0] run function inquognito:logic/pickups/damage/acquire/2
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.damage.3,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.damage.3,dx=0] run function inquognito:logic/pickups/damage/acquire/3
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.damage.4,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.damage.4,dx=0] run function inquognito:logic/pickups/damage/acquire/4
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.damage.5,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.damage.5,dx=0] run function inquognito:logic/pickups/damage/acquire/5

execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.fireRate.1,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.fireRate.1,dx=0] run function inquognito:logic/pickups/fire_rate/acquire/1
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.fireRate.2,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.fireRate.2,dx=0] run function inquognito:logic/pickups/fire_rate/acquire/2
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.fireRate.3,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.fireRate.3,dx=0] run function inquognito:logic/pickups/fire_rate/acquire/3
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.fireRate.4,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.fireRate.4,dx=0] run function inquognito:logic/pickups/fire_rate/acquire/4
execute at @e[type=minecraft:item_display,tag=inquognito.upgrade.fireRate.5,limit=1] align xyz if entity @s[tag=!inquognito.upgrade.fireRate.5,dx=0] run function inquognito:logic/pickups/fire_rate/acquire/5

execute at @e[type=minecraft:item_display,tag=inquognito.sonic_charge] align xyz if entity @s[nbt=!{Inventory:[{tag:{inquognito.sonic_charge:1}}]},dx=0] run function inquognito:logic/pickups/sonic_charge/acquire

function inquognito:logic/tick/highlight_pickups
