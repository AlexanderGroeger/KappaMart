execute if entity @a[scores={meleedamage=2090..,mlevel=1}] run tellraw @a[scores={meleedamage=2090..,mlevel=1}] ["",{"text":"Melee Level Up!","bold":true,"color":"gold"},{"text":" Level 1","color":"dark_gray"},{"text":" -> ","color":"gray"},{"text":"Level 2 \n","bold":true,"color":"white"},{"text":"Attack Speed","bold":true,"color":"yellow"},{"text":" -0.19","color":"dark_gray"},{"text":" ->","color":"gray"},{"text":" -0.18","bold":true,"color":"white"}]
execute if entity @a[scores={meleedamage=2090..,mlevel=1}] run execute at @a[scores={meleedamage=2090..,mlevel=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.2
execute at @a[scores={meleedamage=2090..,mlevel=1}] run tellraw @a[distance=.01..40] {"text":"","color":"gold","extra":[{"selector":"@a[scores={meleedamage=2090..,mlevel=1}]"},{"text":" is now Melee Level 2"}]}
execute if entity @a[scores={meleedamage=2090..,mlevel=1}] run scoreboard players set @a[scores={meleedamage=2090..,mlevel=1}] mlevel 2
execute if entity @a[scores={mlevel=2}] run attribute @a[scores={mlevel=2},limit=1] minecraft:generic.attack_speed base set 3.82