#> text_particle:tick
#
# Tick処理
#
# @within tag/function minecraft:tick

# パーティクルにTick処理を行う
    execute as @e[type=text_display,tag=TextParticle] at @s run function text_particle:particle/tick