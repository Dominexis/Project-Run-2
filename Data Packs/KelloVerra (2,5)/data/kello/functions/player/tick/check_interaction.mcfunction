# Instantiate and duplication checking

scoreboard players set #found kello.value 0
scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @e[type=interaction,tag=pr.target,tag=kello.entity.interactable] if score @s kello.player.id = #local kello.player.id run function kello:player/setup/interaction_detect

# NOTE: Forgive me, there is an edge case where pr.target simply doesnt get applied to interaction
execute if score #found kello.value matches 2.. run kill @e[type=interaction,tag=kello.entity.interactable,distance=..8,sort=nearest]


execute if score #found kello.value matches 0 positioned ~ ~-4.75 ~ positioned ^ ^ ^.85 run function kello:player/setup/interaction

tag @e[type=interaction,tag=pr.target,tag=kello.entity.interactable] remove kello.interaction.targetted