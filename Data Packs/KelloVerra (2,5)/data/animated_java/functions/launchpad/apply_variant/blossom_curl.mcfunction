execute if entity @s[tag=aj.launchpad.root] run function animated_java:launchpad/zzzzzzzz/apply_variant/blossom_curl/as_root
execute if entity @s[tag=!aj.launchpad.root] run tellraw @s ["",{"text":"[","type":"text"},{"text":"Animated Java","color":"aqua","type":"text"},{"text":"] ","type":"text"},{"text":"ERROR ☠","color":"red","type":"text"},{"text":" > ","color":"gray","type":"text"},[{"text":"The function","color":"yellow"},{"text":" animated_java:launchpad/apply_variant/blossom_curl ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
return 1