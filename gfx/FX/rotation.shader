# ##########
# EaW Team #
# ##########
# Description
# This shader implements a way to rotate texture using a variable
# It features : - Pivot point selection
#               - Dynamic rotation
# Limitations : - The Pivot Point is static and cannotbe change through variable
#               - The image size is limited to 999. (Though there are way to bypass that limitation, ask the EaW team if needed. Or check the maths that come next)
# ##########
# GFX definition :
# progressbartype = {
# 	name = "GFX_exemple_rotation"
# 	color = { 0.5 1 0.5 } # Pivot point position and scaling { <x> <y> <scaling> }
# 	colortwo = { 0.080 0.080 0.0 } # Size of the texture in pixel divided by 1000
# 	textureFile1 = "gfx/debug_rotation.dds" # Only the first texture is used
# 	textureFile2 = "gfx/debug_rotation.dds"
# 	size = { x = 80 y = 80 } # Set the value to the actual size of the texture
# 	steps = 360 # The step 0 correspond to 0°, the max step is 360.
# 	effectFile = "gfx/FX/rotation.lua"
# }
# Input : angle - the angle is pass to the shader through the frame variable in the scripted GUI.
# All the computation are done in the Vertex Shader. The main thing to do is set up correctly the Pivot Point in the GFX definition.
# Pivot Point coordinates, with the origin set at the center of the texture :
#	((color[0] - 0.5)*scaling*texture_size_x, (color[1] - 0.5)*scaling*texture_size_y)
# color[0] - The first field in color, determines x position of the pivot ranging from 0 to 1 (0: Left, 1: Right)
# color[1] - The second field in color, determines y position of the pivot ranging from 0 to 1 (0: Top, 1: Bottom)
# 	For example: (0, 0) is the top left corner, (1, 1) is the bottom right corner, (0.5, 0.5) is dead center.
# scaling  - Scaling factor, allowing to place the pivot point out of the texture boundaries if needed. Equals to 1 + 2.f*color[2].
# The texture_size variable are set using the colorTwo as explained in the GFX definition.
#
# Using the scaling, it is then possible to position the Pivot Point outside the texture boundaries.
# ##########

#TASSEN TASSEN, HOW ABOUT YOU NOTIFY ME EARLIER