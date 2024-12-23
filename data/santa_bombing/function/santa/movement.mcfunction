#
scoreboard players add @s santa_bombing 1
execute rotated ~ 0 run tp ^ ^ ^1
execute on leasher run tp @s ^ ^ ^-2
#
execute if dimension minecraft:overworld on leasher on passengers at @s run summon tnt ~ ~ ~ {fuse:120,explosion_power:8,block_state:{Name:"minecraft:chest"}}
execute if dimension minecraft:the_nether on leasher on passengers at @s run summon tnt ~ ~ ~ {fuse:120,explosion_power:10,block_state:{Name:"minecraft:chest"}}
execute if dimension minecraft:the_end on leasher on passengers at @s run summon tnt ~ ~ ~ {fuse:120,explosion_power:10,block_state:{Name:"minecraft:chest"}}
execute if predicate {"condition": "minecraft:inverted","term": {"condition": "minecraft:any_of","terms": [{ "condition": "minecraft:location_check","predicate": {"dimension": "minecraft:overworld"}},{"condition": "minecraft:location_check","predicate": {"dimension": "minecraft:the_end"}},{"condition": "minecraft:location_check","predicate": {"dimension": "minecraft:the_nether"}}]}} on leasher on passengers at @s run summon tnt ~ ~ ~ {fuse:120,explosion_power:10,block_state:{Name:"minecraft:chest"}}

execute if score @s santa_bombing matches 257.. run function santa_bombing:santa/kill