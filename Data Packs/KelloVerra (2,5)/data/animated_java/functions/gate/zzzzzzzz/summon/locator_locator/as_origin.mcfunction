summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.entity.part.locator_0","kello.entity.type.gate","kello.entity.type.chapter_1","aj.gate.locator","aj.gate.locator.locator","aj.new"],CustomName:'[{"text":"[","color":"gray","type":"text"},{"text":"AJ","color":"aqua","type":"text"},"] ",["",{"text":"gate","color":"light_purple"},".",{"text":"locatorEntity","color":"white"},"[",{"text":"locator","color":"yellow"},"]"]]'}
execute as @e[type=minecraft:marker,distance=..1,tag=aj.gate.locator.locator,tag=aj.new,limit=1] run function animated_java:gate/zzzzzzzz/summon/locator_locator/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner
return 1