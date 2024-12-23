#
scoreboard players remove santa_coming santa_bombing 1

execute if score santa_coming santa_bombing matches 0 run function santa_bombing:santa/position
execute as @e[type=mule,tag=santa_mule] at @s run function santa_bombing:santa/movement
bossbar set minecraft:santa_coming players @a
execute store result bossbar santa_coming value run scoreboard players get santa_coming santa_bombing

execute if score santa_coming santa_bombing matches -1 run scoreboard players set santa_coming santa_bombing 2400