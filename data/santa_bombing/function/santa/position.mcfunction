#
tellraw @a {"text": "サンタが来たぞ！！"}
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
execute store result storage rotate 0 int 1 run random value 0..364
execute at @a[limit=1,sort=random] run function santa_bombing:santa/summon with storage rotate
data remove storage rotate 0