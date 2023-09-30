# Remove any barrier that has been placed (when activated)
# and then return to idling position

scoreboard players operation #local kello.component.to_y = @s kello.component.to_y
scoreboard players operation #local kello.component.to_y *= #1000 kello.value
execute store result score #math kello.component.to_y run data get entity @s Pos[1] 1000
scoreboard players operation #local kello.component.to_y += #math kello.component.to_y

setblock ~ ~ ~ barrier

execute summon marker run function kello:entity/decal/optional_contraption_controller/state/out/children/component/chain_platform/location