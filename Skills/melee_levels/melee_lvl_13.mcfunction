execute if entity @a[scores={meleedamage=26014..,mlevel=13}] run tellraw @a[scores={meleedamage=26014..,mlevel=13}] ["",{"text":"Melee Level Up!","bold":true,"color":"gold"},{"text":" Level 13","color":"dark_gray"},{"text":" -> ","color":"gray"},{"text":"Level 14 \n","bold":true,"color":"white"},{"text":"Attack Speed","bold":true,"color":"yellow"},{"text":" -0.10","color":"dark_gray"},{"text":" ->","color":"gray"},{"text":" -0.09","bold":true,"color":"white"}]
execute if entity @a[scores={meleedamage=26014..,mlevel=13}] run execute at @a[scores={meleedamage=26014..,mlevel=13}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.2
execute at @a[scores={meleedamage=26014..,mlevel=13}] run tellraw @a[distance=.01..40] {"text":"","color":"gold","extra":[{"selector":"@a[scores={meleedamage=26014..,mlevel=13}]"},{"text":" is now Melee Level 14"}]}
execute if entity @a[scores={meleedamage=26014..,mlevel=13}] run scoreboard players set @a[scores={meleedamage=26014..,mlevel=13}] mlevel 14
execute if entity @a[scores={mlevel=14}] run attribute @a[scores={mlevel=14},limit=1] minecraft:generic.attack_speed base set 3.91