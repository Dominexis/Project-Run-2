# Execute 

execute if entity @s[tag=aj.cogwheel.bone.large_cog] run kill @s
execute if entity @s[tag=aj.cogwheel.bone.small_cog] run data merge entity @s {view_range:10,width:1,height:1}
execute if entity @s[tag=aj.cogwheel.bone.small_cog] run tp @s ~ ~68 ~
return 1