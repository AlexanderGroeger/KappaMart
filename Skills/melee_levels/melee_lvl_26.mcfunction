execute if entity @a[scores={meleedamage=102712..,mlevel=26}] run tellraw @a[scores={meleedamage=102712..,mlevel=26}] ["",{"text":"Melee Level Up!","bold":true,"color":"gold"},{"text":" Level 26","color":"dark_gray"},{"text":" -> ","color":"gray"},{"text":"Level 27 \n","bold":true,"color":"white"},{"text":"Attack Speed","bold":true,"color":"yellow"},{"text":" 0.01","color":"dark_gray"},{"text":" ->","color":"gray"},{"text":" 0.02","bold":true,"color":"white"}]
execute if entity @a[scores={meleedamage=102712..,mlevel=26}] run execute at @a[scores={meleedamage=102712..,mlevel=26}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.2
execute at @a[scores={meleedamage=102712..,mlevel=26}] run tellraw @a[distance=.01..40] {"text":"","color":"gold","extra":[{"selector":"@a[scores={meleedamage=102712..,mlevel=26}]"},{"text":" is now Melee Level 27"}]}
execute if entity @a[scores={meleedamage=102712..,mlevel=26}] run scoreboard players set @a[scores={meleedamage=102712..,mlevel=26}] mlevel 27
execute if entity @a[scores={mlevel=27}] run attribute @a[scores={mlevel=27},limit=1] minecraft:generic.attack_speed base set 4.02