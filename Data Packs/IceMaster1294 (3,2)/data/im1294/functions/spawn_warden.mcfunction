#execute if score im1294.Wardens im1294.central matches ..3 run summon warden ~-15 ~1 ~1 {Tags:["pr.target","im1294.central"],Invulnerable:1,Glowing:1,PersistenceRequired:1,Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}},Attributes:[{Name:"generic.movement_speed",Base:0.2f}],DeathLootTable:""}
execute if score im1294.Wardens im1294.central matches ..1 run summon warden ~-20 ~4 ~7 {Tags:["pr.target","im1294.central"],Invulnerable:1,Glowing:1,PersistenceRequired:1,Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}},Attributes:[{Name:"generic.movement_speed",Base:0.2f}],DeathLootTable:""}
#execute if score im1294.Wardens im1294.central matches ..3 run summon warden ~-15 ~1 ~13 {Tags:["pr.target","im1294.central"],Invulnerable:1,Glowing:1,PersistenceRequired:1,Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}},Attributes:[{Name:"generic.movement_speed",Base:0.2f}],DeathLootTable:""}

effect give @p[y=10,dy=-30,tag=pr.target] night_vision infinite 0 false