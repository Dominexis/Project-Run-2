# This will tell you in your action bar which color are you, and will put a concrete in your head, for other players to know

# Green
title @a[tag=pr.target,tag=Green] actionbar [{"text":"You are ","color":"gold"},{"text":"GREEN      ","color":"green","bold":true},{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]
item replace entity @a[tag=pr.target,tag=Green] armor.head with minecraft:lime_concrete

# Blue
title @a[tag=pr.target,tag=Blue] actionbar [{"text":"You are ","color":"gold"},{"text":"BLUE      ","color":"blue","bold":true},{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]
item replace entity @a[tag=pr.target,tag=Blue] armor.head with minecraft:blue_concrete

# Red
title @a[tag=pr.target,tag=Red] actionbar [{"text":"You are ","color":"gold"},{"text":"RED      ","color":"red","bold":true},{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]
item replace entity @a[tag=pr.target,tag=Red] armor.head with minecraft:red_concrete

kill @e[type=item,tag=pr.target]