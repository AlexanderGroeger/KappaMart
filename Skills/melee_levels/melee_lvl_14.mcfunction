execute if entity @a[scores={meleedamage=29355..,mlevel=14}] run tellraw @a[scores={meleedamage=29355..,mlevel=14}] ["",{"text":"Melee Level Up!","bold":true,"color":"gold"},{"text":" Level 14","color":"dark_gray"},{"text":" -> ","color":"gray"},{"text":"Level 15 \n","bold":true,"color":"white"},{"text":"Attack","bold":true,"color":"yellow"},{"text":" -1.0","color":"dark_gray"},{"text":" ->","color":"gray"},{"text":" -0.5","bold":true,"color":"white"}]
execute if entity @a[scores={meleedamage=29355..,mlevel=14}] run execute at @a[scores={meleedamage=29355..,mlevel=14}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.2
execute at @a[scores={meleedamage=29355..,mlevel=14}] run tellraw @a[distance=.01..40] {"text":"","color":"gold","extra":[{"selector":"@a[scores={meleedamage=29355..,mlevel=14}]"},{"text":" is now Melee Level 15"}]}
execute if entity @a[scores={meleedamage=29355..,mlevel=14}] run scoreboard players set @a[scores={meleedamage=29355..,mlevel=14}] mlevel 15
execute if entity @a[scores={mlevel=15}] run attribute @a[scores={mlevel=15},limit=1] minecraft:generic.attack_damage base set -0.5