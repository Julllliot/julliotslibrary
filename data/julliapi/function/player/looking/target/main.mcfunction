# ## checks if a player is looking at a entity
#
# MUST insert in target components:
# [type=foo, tag=bar, distance=..foo]
# the target entity MUST have "ray.target" tag
#
# THIS FUNCTION IS STILL IN DEVELOPMENT AND MAY NOT WORK AS INTENDED
# ENTITIES THAT I'VE TESTED THIS WITH: ENDERMAN (BEST ONE), AND VILLAGER
# WARNING: HIGH JANKINESS AHEAD
#
# @context any
# @macros
#   player_selector: (string); desired player to check
#   target_selector: (string); target entity
#   target_center: (float); target's vertical center
#   ray_length: (int); blocks that the raycast will travel
#   ray_args: (string); custom arguments/rules for the raycast travelling. leave blank if any.
#   temp: (string); temporary storage path name

$data merge storage julliapi:player {\
  looking: {\
    $(temp): {\
      player_selector:"$(player_selector)",\
      target_selector:"$(target_selector)",\
      target_center:"$(target_center)",\
      ray_length:$(ray_length),\
      ray_args:'$(ray_args)',\
      temp:"$(temp)"\
    }\
  }\
}

$execute as $(player_selector) at @s run function julliapi:player/looking/target/set with storage julliapi:player looking.$(temp)

$data remove storage julliapi:player looking.$(temp)
