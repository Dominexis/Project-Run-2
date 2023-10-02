execute if entity @s[tag=inquognito.target.energy] as @a[tag=pr.target,predicate=inquognito:id_match,limit=1] run function inquognito:logic/plot/targets/energy

execute if entity @s[tag=inquognito.target.frostbite.1] as @a[tag=pr.target,tag=!inquognito.target.frostbite.1,predicate=inquognito:id_match,limit=1] run function inquognito:logic/plot/targets/frostbite/1
execute if entity @s[tag=inquognito.target.frostbite.2] as @a[tag=pr.target,tag=!inquognito.target.frostbite.2,predicate=inquognito:id_match,limit=1] run function inquognito:logic/plot/targets/frostbite/2
execute if entity @s[tag=inquognito.target.frostbite.3] as @a[tag=pr.target,tag=!inquognito.target.frostbite.3,predicate=inquognito:id_match,limit=1] run function inquognito:logic/plot/targets/frostbite/3

execute if entity @s[tag=inquognito.target.bounce_pad_room.1] as @a[tag=pr.target,tag=!inquognito.target.bounce_pad_room.1,predicate=inquognito:id_match,limit=1] run function inquognito:logic/plot/targets/bounce_pad_room/1
execute if entity @s[tag=inquognito.target.bounce_pad_room.2] as @a[tag=pr.target,tag=!inquognito.target.bounce_pad_room.2,predicate=inquognito:id_match,limit=1] run function inquognito:logic/plot/targets/bounce_pad_room/2
execute if entity @s[tag=inquognito.target.bounce_pad_room.3] as @a[tag=pr.target,tag=!inquognito.target.bounce_pad_room.3,predicate=inquognito:id_match,limit=1] run function inquognito:logic/plot/targets/bounce_pad_room/3
execute if entity @s[tag=inquognito.target.bounce_pad_room.4] as @a[tag=pr.target,tag=!inquognito.target.bounce_pad_room.4,predicate=inquognito:id_match,limit=1] run function inquognito:logic/plot/targets/bounce_pad_room/4

execute if entity @s[tag=inquognito.target.office.1] as @a[tag=pr.target,tag=!inquognito.target.office.1,predicate=inquognito:id_match,limit=1] run function inquognito:logic/plot/targets/office/1/activate
execute if entity @s[tag=inquognito.target.office.2] as @a[tag=pr.target,tag=!inquognito.target.office.2,predicate=inquognito:id_match,limit=1] run function inquognito:logic/plot/targets/office/2/activate
execute if entity @s[tag=inquognito.target.office.3] as @a[tag=pr.target,tag=!inquognito.target.office.3,predicate=inquognito:id_match,limit=1] run function inquognito:logic/plot/targets/office/3/activate

kill @e[type=minecraft:marker,tag=inquognito.gun,sort=nearest,limit=1]
