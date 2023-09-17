# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add itspungpond98.exit dummy
scoreboard objectives add itspungpond98.info dummy
scoreboard objectives add itspungpond98.item dummy

execute positioned ~-16 ~18 ~-21 align xyz run summon minecraft:armor_stand ~0.5 ~-1.4 ~0.5 {NoGravity: 1b, Invulnerable: 1b, ShowArms: 1b, DisabledSlots: 2039582, Pose: {}, Invisible: 1b, Tags: ["itspungpond98.givepearlescent"], Small: 0b, HandItems: [{}, {}], CustomName: '{"color":"white","extra":[{"bold":true,"color":"light_purple","text":"Pearlescent Froglight"}],"text":"Get "}', ArmorItems: [{}, {}, {}, {id: "minecraft:pearlescent_froglight", Count: 1b}], NoBasePlate: 1b, CustomNameVisible: 1b}
execute positioned ~37 ~18 ~-13 align xyz run summon minecraft:armor_stand ~0.5 ~-1.4 ~0.5 {NoGravity: 1b, Invulnerable: 1b, ShowArms: 1b, DisabledSlots: 2039582, Pose: {}, Invisible: 1b, Tags: ["itspungpond98.giveverdant"], Small: 0b, HandItems: [{}, {}], CustomName: '{"color":"white","extra":[{"bold":true,"color":"green","text":"Verdant Froglight"}],"text":"Get "}', ArmorItems: [{}, {}, {}, {id: "minecraft:verdant_froglight", Count: 1b}], NoBasePlate: 1b, CustomNameVisible: 1b}

execute positioned ~35 ~17 ~-3 align xyz run summon minecraft:villager ~0.5 ~0.06 ~0.5 {AgeLocked: 0b, Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 0.5d, Name: "minecraft:generic.movement_speed"}], FoodLevel: 0b, Invulnerable: 1b, ForcedAge: 0, Gossips: [], FallFlying: 0b, AbsorptionAmount: 0.0f, PortalCooldown: 0, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 0, LastGossipDecay: 171304360L, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 1b, Age: 0, Motion: [0.0d, 0.0d, 0.0d], Health: 20.0f, Silent: 1b, LeftHanded: 0b, OnGround: 1b, Air: 300s, NoAI: 1b, Rotation: [0.0f, 0.0f], RestocksToday: 0, HandItems: [{}, {}], ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], ArmorItems: [{}, {}, {}, {}], Fire: 0s, VillagerData: {profession: "minecraft:none", level: 1, type: "minecraft:plains"}, CanPickUpLoot: 1b, HurtTime: 0s, Inventory: []}
execute positioned ~-35 ~17 ~3 align xyz run summon minecraft:villager ~0.5 ~0.06 ~0.5 {AgeLocked: 0b, Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 0.5d, Name: "minecraft:generic.movement_speed"}], FoodLevel: 0b, Invulnerable: 1b, ForcedAge: 0, Gossips: [], FallFlying: 0b, AbsorptionAmount: 0.0f, PortalCooldown: 0, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 0, LastGossipDecay: 171304360L, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 1b, Age: 0, Motion: [0.0d, 0.0d, 0.0d], Health: 20.0f, Silent: 1b, LeftHanded: 0b, OnGround: 1b, Air: 300s, NoAI: 1b, Rotation: [180.0f, 0.0f], RestocksToday: 0, HandItems: [{}, {}], ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], ArmorItems: [{}, {}, {}, {}], Fire: 0s, VillagerData: {profession: "minecraft:none", level: 1, type: "minecraft:plains"}, CanPickUpLoot: 1b, HurtTime: 0s, Inventory: []}

execute positioned ~-2 ~18 ~17 align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {NoGravity: 1b, Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 0.0d, Name: "minecraft:generic.armor"}, {Base: 20.0d, Name: "minecraft:generic.max_health"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}, {Base: 0.699999988079071d, Name: "minecraft:generic.movement_speed"}], Invulnerable: 1b, FallFlying: 0b, ShowArms: 1b, AbsorptionAmount: 0.0f, PortalCooldown: 0, FallDistance: 0.0f, DisabledSlots: 2039582, DeathTime: 0s, Pose: {RightArm: [-120.0f, 50.0f, 0.0f], LeftArm: [-20.0f, 0.0f, -50.0f]}, Invisible: 0b, Tags: ["itspungpond98.info"], Motion: [0.0d, 0.0d, 0.0d], Small: 0b, Health: 20.0f, OnGround: 1b, Air: 300s, Rotation: [-45.0f, 0.0f], HandItems: [{id: "minecraft:command_block", Count: 1b}, {}], CustomName: '{"italic":false,"text":"Configed Armor Stand"}', ArmorItems: [{id: "minecraft:leather_boots", tag: {display: {color: 9357054}, Damage: 0}, Count: 1b}, {id: "minecraft:leather_leggings", tag: {display: {color: 7294731}, Damage: 0}, Count: 1b}, {id: "minecraft:leather_chestplate", tag: {display: {color: 1034715}, Damage: 0}, Count: 1b}, {id: "minecraft:player_head", tag: {SkullOwner: {Id: [I; 1875344118, 2004303890, -1187279376, 515283081], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODFhOTE3NmM2OTQ3NDgzZGZmMGVmMTNkNjlhMGJkYTgwNWFiMzZkNDBlNTc0NGUwYzA0ZjgyZjRiYzk1N2M2ZCJ9fX0="}]}}, display: {Name: '{"text":"ItsPungpond98"}'}}, Count: 1b}], Fire: -1s, NoBasePlate: 1b, HurtTime: 0s}