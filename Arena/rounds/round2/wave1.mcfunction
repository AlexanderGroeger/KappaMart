execute if score #arena spawns_left matches 2..21 run execute at @e[tag=spawn,limit=1,sort=random] run summon minecraft:zombie ~ ~-109.9 ~ {HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],PersistenceRequired:1,Tags:["arena"],DeathLootTable:"loot:arena/tier1mob",ArmorItems:[{},{},{id:leather_chestplate,Count:1},{}],DrownedConversionTime:99999999,InWaterTime:-999999}
scoreboard players remove #arena spawns_left 1
execute if score #arena spawns_left matches 2.. run function arena:rounds/round2/wave1