execute on passengers run ride @s dismount

scoreboard players operation #local isch.id = @s isch.id
execute as @e[type=zoglin,tag=Rzg,tag=pr.target] if score @s isch.id = #local isch.id run tag @s add isch.target

# tp @e[type=zoglin,tag=Rzg,tag=pr.target,tag=isch.target] ~ -1000 ~
# tp @s ~ -1000 ~

kill @e[type=zoglin,tag=Rzg,tag=pr.target,tag=isch.target]
kill @s

tag @e[type=zoglin,tag=Rzg,tag=pr.target] remove isch.target