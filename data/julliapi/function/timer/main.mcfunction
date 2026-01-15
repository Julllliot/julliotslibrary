# ## creates a scoreboard timer to the target entity, repeats timer n times and returns a tag when over
#
# @context any entity
# @macros
#   ticks: int
#   repeat: int
#   temp: string
# @output
#   tag @s julliapi.timer.end when repeat = 0 && ticks = 0

execute if entity @s[tag=julliapi.timer.end] run return fail

$execute if data storage julliapi:timer args.$(temp) if entity @s[tag=julliapi.timer.running] run return run function julliapi:timer/loop with storage julliapi:timer args.$(temp)

$execute unless data storage julliapi:timer args.$(temp) run data merge storage julliapi:timer \
{\
    args:{\
        $(temp):{\
            ticks:$(ticks),\
            repeat:$(repeat),\
	    custom_cmd:'$(custom_cmd)',\
            temp:'$(temp)'\
        }\
    }\
}

$function julliot:timer/set_scores with storage julliapi:timer args.$(temp)

$function julliapi:timer/loop with storage julliapi:timer args.$(temp)
