# This will tell you in your action bar which color are you, and will put a concrete in your head, for other players to know

function pr:player/time/compute

# Green
title @s[tag=Green] actionbar [{"text":"You are ","color":"gold"},{"text":"GREEN      ","color":"green","bold":true},{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]
item replace entity @s[tag=Green] armor.head with minecraft:lime_concrete

# Blue
title @s[tag=Blue] actionbar [{"text":"You are ","color":"gold"},{"text":"BLUE      ","color":"blue","bold":true},{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]
item replace entity @s[tag=Blue] armor.head with minecraft:blue_concrete

# Red
title @s[tag=Red] actionbar [{"text":"You are ","color":"gold"},{"text":"RED      ","color":"red","bold":true},{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]
item replace entity @s[tag=Red] armor.head with minecraft:red_concrete

