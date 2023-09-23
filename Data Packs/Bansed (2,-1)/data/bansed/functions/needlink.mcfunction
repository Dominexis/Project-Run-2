scoreboard players operation @s bnsd.id = .global bnsd.id
execute as @p[tag=bnsd.playerlink,tag=pr.target] run loot replace entity @e[tag=bnsd.needlink,tag=pr.target] armor.head loot bansed:playerhead
setblock ~ ~100 ~ oak_sign
data merge block ~ ~100 ~ {front_text:{messages:['{"selector":"@p[tag=bnsd.playerlink,tag=pr.target,limit=1,sort=nearest]","color":"white"}','{"text":""}','{"text":""}','{"text":""}']}}
data modify entity @s CustomName set from block ~ ~100 ~ front_text.messages[0]
setblock ~ ~100 ~ air
tag @s remove bnsd.needlink
tag @a remove bnsd.playerlink
