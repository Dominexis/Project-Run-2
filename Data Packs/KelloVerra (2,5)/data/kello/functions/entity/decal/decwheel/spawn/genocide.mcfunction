# kill @s[tag=aj.decwheel.bone.thrown_large_cog]
# kill @s[tag=aj.decwheel.bone.thrown_small_cog]
execute unless score #genocide_type kello.value matches 0 run kill @s[tag=aj.decwheel.bone.large_cog]
execute unless score #genocide_type kello.value matches 1 run kill @s[tag=aj.decwheel.bone.small_cog]
execute unless score #genocide_type kello.value matches 2 run kill @s[tag=aj.decwheel.bone.thrown_large_cog]
execute unless score #genocide_type kello.value matches 3 run kill @s[tag=aj.decwheel.bone.thrown_small_cog]
execute unless score #genocide_type kello.value matches 0 unless score #genocide_type kello.value matches 2 run kill @s[tag=aj.decwheel.bone.large_shaft]
execute unless score #genocide_type kello.value matches 1 unless score #genocide_type kello.value matches 3 run kill @s[tag=aj.decwheel.bone.small_shaft]
return 1