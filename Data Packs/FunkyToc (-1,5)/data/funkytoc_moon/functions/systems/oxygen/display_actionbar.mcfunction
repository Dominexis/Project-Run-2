# var
scoreboard players operation #tmp.o2.sec funkytoc.moon.var = @s funkytoc.moon.oxygen
scoreboard players operation #tmp.o2.sec funkytoc.moon.var /= #const.20 funkytoc.moon.var

# display
execute if score #tmp.o2.sec funkytoc.moon.var matches 16.. run title @s actionbar [ {"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":"   "},{"text":"O²","bold":true,"color":"green"},{"text":": ","color":"green"},{"score":{"name":"#tmp.o2.sec","objective":"funkytoc.moon.var"},"color":"green"}]
execute if score #tmp.o2.sec funkytoc.moon.var matches 8..15 run title @s actionbar [{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":"   "},{"text":"O²","bold":true,"color":"yellow"},{"text":": ","color":"yellow"},{"score":{"name":"#tmp.o2.sec","objective":"funkytoc.moon.var"},"color":"yellow"}]
execute if score #tmp.o2.sec funkytoc.moon.var matches ..7 run title @s actionbar [  {"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":"   "},{"text":"O²","bold":true,"color":"red"},{"text":": ","color":"red"},{"score":{"name":"#tmp.o2.sec","objective":"funkytoc.moon.var"},"color":"red"}]
