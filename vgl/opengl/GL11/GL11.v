module GL11

import const (
	GL_2_BYTES
	GL_2D
	GL_3_BYTES
	GL_3D
	GL_3D_COLOR
	GL_3D_COLOR_TEXTURE
	GL_4_BYTES
	GL_4D_COLOR_TEXTURE
	GL_ACCUM
	GL_ACCUM_ALPHA_BITS
	GL_ACCUM_BLUE_BITS
	GL_ACCUM_BUFFER_BIT
	GL_ACCUM_CLEAR_VALUE
	GL_ACCUM_GREEN_BITS
	GL_ACCUM_RED_BITS
	GL_ADD
	GL_ALL_ATTRIB_BITS
	GL_ALPHA
	GL_ALPHA_BIAS
	GL_ALPHA_BITS
	GL_ALPHA_SCALE
	GL_ALPHA_TEST
	GL_ALPHA_TEST_FUNC
	GL_ALPHA_TEST_REF
	GL_ALPHA12
	GL_ALPHA16
	GL_ALPHA4
	GL_ALPHA8
	GL_ALWAYS
	GL_AMBIENT
	GL_AMBIENT_AND_DIFFUSE
	GL_AND
	GL_AND_INVERTED
	GL_AND_REVERSE
	GL_ATTRIB_STACK_DEPTH
	GL_AUTO_NORMAL
	GL_AUX_BUFFERS
	GL_AUX0
	GL_AUX1
	GL_AUX2
	GL_AUX3
	GL_BACK
	GL_BACK_LEFT
	GL_BACK_RIGHT
	GL_BITMAP
	GL_BITMAP_TOKEN
	GL_BLEND
	GL_BLEND_DST
	GL_BLEND_SRC
	GL_BLUE
	GL_BLUE_BIAS
	GL_BLUE_BITS
	GL_BLUE_SCALE
	GL_BYTE
	GL_C3F_V3F
	GL_C4F_N3F_V3F
	GL_C4UB_V2F
	GL_C4UB_V3F
	GL_CCW
	GL_CLAMP
	GL_CLEAR
	GL_CLIENT_ALL_ATTRIB_BITS
	GL_CLIENT_ATTRIB_STACK_DEPTH
	GL_CLIENT_PIXEL_STORE_BIT
	GL_CLIENT_VERTEX_ARRAY_BIT
	GL_CLIP_PLANE0
	GL_CLIP_PLANE1
	GL_CLIP_PLANE2
	GL_CLIP_PLANE3
	GL_CLIP_PLANE4
	GL_CLIP_PLANE5
	GL_COEFF
	GL_COLOR
	GL_COLOR_ARRAY
	GL_COLOR_ARRAY_POINTER
	GL_COLOR_ARRAY_SIZE
	GL_COLOR_ARRAY_STRIDE
	GL_COLOR_ARRAY_TYPE
	GL_COLOR_BUFFER_BIT
	GL_COLOR_CLEAR_VALUE
	GL_COLOR_INDEX
	GL_COLOR_INDEXES
	GL_COLOR_LOGIC_OP
	GL_COLOR_MATERIAL
	GL_COLOR_MATERIAL_FACE
	GL_COLOR_MATERIAL_PARAMETER
	GL_COLOR_WRITEMASK
	GL_COMPILE
	GL_COMPILE_AND_EXECUTE
	GL_CONSTANT_ATTENUATION
	GL_COPY
	GL_COPY_INVERTED
	GL_COPY_PIXEL_TOKEN
	GL_CULL_FACE
	GL_CULL_FACE_MODE
	GL_CURRENT_BIT
	GL_CURRENT_COLOR
	GL_CURRENT_INDEX
	GL_CURRENT_NORMAL
	GL_CURRENT_RASTER_COLOR
	GL_CURRENT_RASTER_DISTANCE
	GL_CURRENT_RASTER_INDEX
	GL_CURRENT_RASTER_POSITION
	GL_CURRENT_RASTER_POSITION_VALID
	GL_CURRENT_RASTER_TEXTURE_COORDS
	GL_CURRENT_TEXTURE_COORDS
	GL_CW
	GL_DECAL
	GL_DECR
	GL_DEPTH
	GL_DEPTH_BIAS
	GL_DEPTH_BITS
	GL_DEPTH_BUFFER_BIT
	GL_DEPTH_CLEAR_VALUE
	GL_DEPTH_COMPONENT
	GL_DEPTH_FUNC
	GL_DEPTH_RANGE
	GL_DEPTH_SCALE
	GL_DEPTH_TEST
	GL_DEPTH_WRITEMASK
	GL_DIFFUSE
	GL_DITHER
	GL_DOMAIN
	GL_DONT_CARE
	GL_DOUBLE
	GL_DOUBLEBUFFER
	GL_DRAW_BUFFER
	GL_DRAW_PIXEL_TOKEN
	GL_DST_ALPHA
	GL_DST_COLOR
	GL_EDGE_FLAG
	GL_EDGE_FLAG_ARRAY
	GL_EDGE_FLAG_ARRAY_POINTER
	GL_EDGE_FLAG_ARRAY_STRIDE
	GL_EMISSION
	GL_ENABLE_BIT
	GL_EQUAL
	GL_EQUIV
	GL_EVAL_BIT
	GL_EXP
	GL_EXP2
	GL_EXTENSIONS
	GL_EYE_LINEAR
	GL_EYE_PLANE
	GL_FALSE
	GL_FASTEST
	GL_FEEDBACK
	GL_FEEDBACK_BUFFER_POINTER
	GL_FEEDBACK_BUFFER_SIZE
	GL_FEEDBACK_BUFFER_TYPE
	GL_FILL
	GL_FLAT
	GL_FLOAT
	GL_FOG
	GL_FOG_BIT
	GL_FOG_COLOR
	GL_FOG_DENSITY
	GL_FOG_END
	GL_FOG_HINT
	GL_FOG_INDEX
	GL_FOG_MODE
	GL_FOG_START
	GL_FRONT
	GL_FRONT_AND_BACK
	GL_FRONT_FACE
	GL_FRONT_LEFT
	GL_FRONT_RIGHT
	GL_GEQUAL
	GL_GREATER
	GL_GREEN
	GL_GREEN_BIAS
	GL_GREEN_BITS
	GL_GREEN_SCALE
	GL_HINT_BIT
	GL_INCR
	GL_INDEX_ARRAY
	GL_INDEX_ARRAY_POINTER
	GL_INDEX_ARRAY_STRIDE
	GL_INDEX_ARRAY_TYPE
	GL_INDEX_BITS
	GL_INDEX_CLEAR_VALUE
	GL_INDEX_LOGIC_OP
	GL_INDEX_MODE
	GL_INDEX_OFFSET
	GL_INDEX_SHIFT
	GL_INDEX_WRITEMASK
	GL_INT
	GL_INTENSITY
	GL_INTENSITY12
	GL_INTENSITY16
	GL_INTENSITY4
	GL_INTENSITY8
	GL_INVALID_ENUM
	GL_INVALID_OPERATION
	GL_INVALID_VALUE
	GL_INVERT
	GL_KEEP
	GL_LEFT
	GL_LEQUAL
	GL_LESS
	GL_LIGHT_MODEL_AMBIENT
	GL_LIGHT_MODEL_LOCAL_VIEWER
	GL_LIGHT_MODEL_TWO_SIDE
	GL_LIGHT0
	GL_LIGHT1
	GL_LIGHT2
	GL_LIGHT3
	GL_LIGHT4
	GL_LIGHT5
	GL_LIGHT6
	GL_LIGHT7
	GL_LIGHTING
	GL_LIGHTING_BIT
	GL_LINE
	GL_LINE_BIT
	GL_LINE_LOOP
	GL_LINE_RESET_TOKEN
	GL_LINE_SMOOTH
	GL_LINE_SMOOTH_HINT
	GL_LINE_STIPPLE
	GL_LINE_STIPPLE_PATTERN
	GL_LINE_STIPPLE_REPEAT
	GL_LINE_STRIP
	GL_LINE_TOKEN
	GL_LINE_WIDTH
	GL_LINE_WIDTH_GRANULARITY
	GL_LINE_WIDTH_RANGE
	GL_LINEAR
	GL_LINEAR_ATTENUATION
	GL_LINEAR_MIPMAP_LINEAR
	GL_LINEAR_MIPMAP_NEAREST
	GL_LINES
	GL_LIST_BASE
	GL_LIST_BIT
	GL_LIST_INDEX
	GL_LIST_MODE
	GL_LOAD
	GL_LOGIC_OP
	GL_LOGIC_OP_MODE
	GL_LUMINANCE
	GL_LUMINANCE_ALPHA
	GL_LUMINANCE12
	GL_LUMINANCE12_ALPHA12
	GL_LUMINANCE12_ALPHA4
	GL_LUMINANCE16
	GL_LUMINANCE16_ALPHA16
	GL_LUMINANCE4
	GL_LUMINANCE4_ALPHA4
	GL_LUMINANCE6_ALPHA2
	GL_LUMINANCE8
	GL_LUMINANCE8_ALPHA8
	GL_MAP_COLOR
	GL_MAP_STENCIL
	GL_MAP1_COLOR_4
	GL_MAP1_GRID_DOMAIN
	GL_MAP1_GRID_SEGMENTS
	GL_MAP1_INDEX
	GL_MAP1_NORMAL
	GL_MAP1_TEXTURE_COORD_1
	GL_MAP1_TEXTURE_COORD_2
	GL_MAP1_TEXTURE_COORD_3
	GL_MAP1_TEXTURE_COORD_4
	GL_MAP1_VERTEX_3
	GL_MAP1_VERTEX_4
	GL_MAP2_COLOR_4
	GL_MAP2_GRID_DOMAIN
	GL_MAP2_GRID_SEGMENTS
	GL_MAP2_INDEX
	GL_MAP2_NORMAL
	GL_MAP2_TEXTURE_COORD_1
	GL_MAP2_TEXTURE_COORD_2
	GL_MAP2_TEXTURE_COORD_3
	GL_MAP2_TEXTURE_COORD_4
	GL_MAP2_VERTEX_3
	GL_MAP2_VERTEX_4
	GL_MATRIX_MODE
	GL_MAX_ATTRIB_STACK_DEPTH
	GL_MAX_CLIENT_ATTRIB_STACK_DEPTH
	GL_MAX_CLIP_PLANES
	GL_MAX_EVAL_ORDER
	GL_MAX_LIGHTS
	GL_MAX_LIST_NESTING
	GL_MAX_MODELVIEW_STACK_DEPTH
	GL_MAX_NAME_STACK_DEPTH
	GL_MAX_PIXEL_MAP_TABLE
	GL_MAX_PROJECTION_STACK_DEPTH
	GL_MAX_TEXTURE_SIZE
	GL_MAX_TEXTURE_STACK_DEPTH
	GL_MAX_VIEWPORT_DIMS
	GL_MODELVIEW
	GL_MODELVIEW_MATRIX
	GL_MODELVIEW_STACK_DEPTH
	GL_MODULATE
	GL_MULT
	GL_N3F_V3F
	GL_NAME_STACK_DEPTH
	GL_NAND
	GL_NEAREST
	GL_NEAREST_MIPMAP_LINEAR
	GL_NEAREST_MIPMAP_NEAREST
	GL_NEVER
	GL_NICEST
	GL_NO_ERROR
	GL_NONE
	GL_NOOP
	GL_NOR
	GL_NORMAL_ARRAY
	GL_NORMAL_ARRAY_POINTER
	GL_NORMAL_ARRAY_STRIDE
	GL_NORMAL_ARRAY_TYPE
	GL_NORMALIZE
	GL_NOTEQUAL
	GL_OBJECT_LINEAR
	GL_OBJECT_PLANE
	GL_ONE
	GL_ONE_MINUS_DST_ALPHA
	GL_ONE_MINUS_DST_COLOR
	GL_ONE_MINUS_SRC_ALPHA
	GL_ONE_MINUS_SRC_COLOR
	GL_OR
	GL_OR_INVERTED
	GL_OR_REVERSE
	GL_ORDER
	GL_OUT_OF_MEMORY
	GL_PACK_ALIGNMENT
	GL_PACK_LSB_FIRST
	GL_PACK_ROW_LENGTH
	GL_PACK_SKIP_PIXELS
	GL_PACK_SKIP_ROWS
	GL_PACK_SWAP_BYTES
	GL_PASS_THROUGH_TOKEN
	GL_PERSPECTIVE_CORRECTION_HINT
	GL_PIXEL_MAP_A_TO_A
	GL_PIXEL_MAP_A_TO_A_SIZE
	GL_PIXEL_MAP_B_TO_B
	GL_PIXEL_MAP_B_TO_B_SIZE
	GL_PIXEL_MAP_G_TO_G
	GL_PIXEL_MAP_G_TO_G_SIZE
	GL_PIXEL_MAP_I_TO_A
	GL_PIXEL_MAP_I_TO_A_SIZE
	GL_PIXEL_MAP_I_TO_B
	GL_PIXEL_MAP_I_TO_B_SIZE
	GL_PIXEL_MAP_I_TO_G
	GL_PIXEL_MAP_I_TO_G_SIZE
	GL_PIXEL_MAP_I_TO_I
	GL_PIXEL_MAP_I_TO_I_SIZE
	GL_PIXEL_MAP_I_TO_R
	GL_PIXEL_MAP_I_TO_R_SIZE
	GL_PIXEL_MAP_R_TO_R
	GL_PIXEL_MAP_R_TO_R_SIZE
	GL_PIXEL_MAP_S_TO_S
	GL_PIXEL_MAP_S_TO_S_SIZE
	GL_PIXEL_MODE_BIT
	GL_POINT
	GL_POINT_BIT
	GL_POINT_SIZE
	GL_POINT_SIZE_GRANULARITY
	GL_POINT_SIZE_RANGE
	GL_POINT_SMOOTH
	GL_POINT_SMOOTH_HINT
	GL_POINT_TOKEN
	GL_POINTS
	GL_POLYGON
	GL_POLYGON_BIT
	GL_POLYGON_MODE
	GL_POLYGON_OFFSET_FACTOR
	GL_POLYGON_OFFSET_FILL
	GL_POLYGON_OFFSET_LINE
	GL_POLYGON_OFFSET_POINT
	GL_POLYGON_OFFSET_UNITS
	GL_POLYGON_SMOOTH
	GL_POLYGON_SMOOTH_HINT
	GL_POLYGON_STIPPLE
	GL_POLYGON_STIPPLE_BIT
	GL_POLYGON_TOKEN
	GL_POSITION
	GL_PROJECTION
	GL_PROJECTION_MATRIX
	GL_PROJECTION_STACK_DEPTH
	GL_PROXY_TEXTURE_1D
	GL_PROXY_TEXTURE_2D
	GL_Q
	GL_QUAD_STRIP
	GL_QUADRATIC_ATTENUATION
	GL_QUADS
	GL_R
	GL_R3_G3_B2
	GL_READ_BUFFER
	GL_RED
	GL_RED_BIAS
	GL_RED_BITS
	GL_RED_SCALE
	GL_RENDER
	GL_RENDER_MODE
	GL_RENDERER
	GL_REPEAT
	GL_REPLACE
	GL_RETURN
	GL_RGB
	GL_RGB10
	GL_RGB10_A2
	GL_RGB12
	GL_RGB16
	GL_RGB4
	GL_RGB5
	GL_RGB5_A1
	GL_RGB8
	GL_RGBA
	GL_RGBA_MODE
	GL_RGBA12
	GL_RGBA16
	GL_RGBA2
	GL_RGBA4
	GL_RGBA8
	GL_RIGHT
	GL_S
	GL_SCISSOR_BIT
	GL_SCISSOR_BOX
	GL_SCISSOR_TEST
	GL_SELECT
	GL_SELECTION_BUFFER_POINTER
	GL_SELECTION_BUFFER_SIZE
	GL_SET
	GL_SHADE_MODEL
	GL_SHININESS
	GL_SHORT
	GL_SMOOTH
	GL_SPECULAR
	GL_SPHERE_MAP
	GL_SPOT_CUTOFF
	GL_SPOT_DIRECTION
	GL_SPOT_EXPONENT
	GL_SRC_ALPHA
	GL_SRC_ALPHA_SATURATE
	GL_SRC_COLOR
	GL_STACK_OVERFLOW
	GL_STACK_UNDERFLOW
	GL_STENCIL
	GL_STENCIL_BITS
	GL_STENCIL_BUFFER_BIT
	GL_STENCIL_CLEAR_VALUE
	GL_STENCIL_FAIL
	GL_STENCIL_FUNC
	GL_STENCIL_INDEX
	GL_STENCIL_PASS_DEPTH_FAIL
	GL_STENCIL_PASS_DEPTH_PASS
	GL_STENCIL_REF
	GL_STENCIL_TEST
	GL_STENCIL_VALUE_MASK
	GL_STENCIL_WRITEMASK
	GL_STEREO
	GL_SUBPIXEL_BITS
	GL_T
	GL_T2F_C3F_V3F
	GL_T2F_C4F_N3F_V3F
	GL_T2F_C4UB_V3F
	GL_T2F_N3F_V3F
	GL_T2F_V3F
	GL_T4F_C4F_N3F_V4F
	GL_T4F_V4F
	GL_TEXTURE
	GL_TEXTURE_1D
	GL_TEXTURE_2D
	GL_TEXTURE_ALPHA_SIZE
	GL_TEXTURE_BINDING_1D
	GL_TEXTURE_BINDING_2D
	GL_TEXTURE_BIT
	GL_TEXTURE_BLUE_SIZE
	GL_TEXTURE_BORDER
	GL_TEXTURE_BORDER_COLOR
	GL_TEXTURE_COMPONENTS
	GL_TEXTURE_COORD_ARRAY
	GL_TEXTURE_COORD_ARRAY_POINTER
	GL_TEXTURE_COORD_ARRAY_SIZE
	GL_TEXTURE_COORD_ARRAY_STRIDE
	GL_TEXTURE_COORD_ARRAY_TYPE
	GL_TEXTURE_ENV
	GL_TEXTURE_ENV_COLOR
	GL_TEXTURE_ENV_MODE
	GL_TEXTURE_GEN_MODE
	GL_TEXTURE_GEN_Q
	GL_TEXTURE_GEN_R
	GL_TEXTURE_GEN_S
	GL_TEXTURE_GEN_T
	GL_TEXTURE_GREEN_SIZE
	GL_TEXTURE_HEIGHT
	GL_TEXTURE_INTENSITY_SIZE
	GL_TEXTURE_INTERNAL_FORMAT
	GL_TEXTURE_LUMINANCE_SIZE
	GL_TEXTURE_MAG_FILTER
	GL_TEXTURE_MATRIX
	GL_TEXTURE_MIN_FILTER
	GL_TEXTURE_PRIORITY
	GL_TEXTURE_RED_SIZE
	GL_TEXTURE_RESIDENT
	GL_TEXTURE_STACK_DEPTH
	GL_TEXTURE_WIDTH
	GL_TEXTURE_WRAP_S
	GL_TEXTURE_WRAP_T
	GL_TRANSFORM_BIT
	GL_TRIANGLE_FAN
	GL_TRIANGLE_STRIP
	GL_TRIANGLES
	GL_TRUE
	GL_UNPACK_ALIGNMENT
	GL_UNPACK_LSB_FIRST
	GL_UNPACK_ROW_LENGTH
	GL_UNPACK_SKIP_PIXELS
	GL_UNPACK_SKIP_ROWS
	GL_UNPACK_SWAP_BYTES
	GL_UNSIGNED_BYTE
	GL_UNSIGNED_INT
	GL_UNSIGNED_SHORT
	GL_V2F
	GL_V3F
	GL_VENDOR
	GL_VERSION
	GL_VERTEX_ARRAY
	GL_VERTEX_ARRAY_POINTER
	GL_VERTEX_ARRAY_SIZE
	GL_VERTEX_ARRAY_STRIDE
	GL_VERTEX_ARRAY_TYPE
	GL_VIEWPORT
	GL_VIEWPORT_BIT
	GL_XOR
	GL_ZERO
	GL_ZOOM_X
	GL_ZOOM_Y
)

pub fn gl_accum(op int, value f32) {
	C.glAccum(op, value)
}

pub fn gl_alpha_func(func int, ref f32) {
	C.glAlphaFunc(func, ref)
}

pub fn gl_are_textures_resident(textures []int, residences voidptr) bool {
	return C.glAreTexturesResident(textures, residences)
}

pub fn gl_are_textures_resident(texture int, residences voidptr) bool {
	return C.glAreTexturesResident(texture, residences)
}

pub fn gl_are_textures_resident(textures voidptr, residences voidptr) bool {
	return C.glAreTexturesResident(textures, residences)
}

pub fn gl_array_element(i int) {
	C.glArrayElement(i)
}

pub fn gl_begin(mode int) {
	C.glBegin(mode)
}

pub fn gl_bind_texture(target int, texture int) {
	C.glBindTexture(target, texture)
}

pub fn gl_bitmap(w int, h int, x_orig f32, y_orig f32, x_inc f32, y_inc f32, data i64) {
	C.glBitmap(w, h, x_orig, y_orig, x_inc, y_inc, data)
}

pub fn gl_bitmap(w int, h int, x_orig f32, y_orig f32, x_inc f32, y_inc f32, data voidptr) {
	C.glBitmap(w, h, x_orig, y_orig, x_inc, y_inc, data)
}

pub fn gl_blend_func(sfactor int, dfactor int) {
	C.glBlendFunc(sfactor, dfactor)
}

pub fn gl_call_list(list int) {
	C.glCallList(list)
}

pub fn gl_call_lists(type int, lists voidptr) {
	C.glCallLists(type, lists)
}

pub fn gl_call_lists(lists voidptr) {
	C.glCallLists(lists)
}

pub fn gl_call_lists(lists voidptr) {
	C.glCallLists(lists)
}

pub fn gl_call_lists(lists voidptr) {
	C.glCallLists(lists)
}

pub fn gl_clear(mask int) {
	C.glClear(mask)
}

pub fn gl_clear_accum(red f32, green f32, blue f32, alpha f32) {
	C.glClearAccum(red, green, blue, alpha)
}

pub fn gl_clear_color(red f32, green f32, blue f32, alpha f32) {
	C.glClearColor(red, green, blue, alpha)
}

pub fn gl_clear_depth(depth f64) {
	C.glClearDepth(depth)
}

pub fn gl_clear_index(index f32) {
	C.glClearIndex(index)
}

pub fn gl_clear_stencil(s int) {
	C.glClearStencil(s)
}

pub fn gl_clip_plane(plane int, equation []f64) {
	C.glClipPlane(plane, equation)
}

pub fn gl_clip_plane(plane int, equation voidptr) {
	C.glClipPlane(plane, equation)
}

pub fn gl_color3b(red byte, green byte, blue byte) {
	C.glColor3b(red, green, blue)
}

pub fn gl_color3bv(v voidptr) {
	C.glColor3bv(v)
}

pub fn gl_color3d(red f64, green f64, blue f64) {
	C.glColor3d(red, green, blue)
}

pub fn gl_color3dv(v []f64) {
	C.glColor3dv(v)
}

pub fn gl_color3dv(v voidptr) {
	C.glColor3dv(v)
}

pub fn gl_color3f(red f32, green f32, blue f32) {
	C.glColor3f(red, green, blue)
}

pub fn gl_color3fv(v []f32) {
	C.glColor3fv(v)
}

pub fn gl_color3fv(v voidptr) {
	C.glColor3fv(v)
}

pub fn gl_color3i(red int, green int, blue int) {
	C.glColor3i(red, green, blue)
}

pub fn gl_color3iv(v []int) {
	C.glColor3iv(v)
}

pub fn gl_color3iv(v voidptr) {
	C.glColor3iv(v)
}

pub fn gl_color3s(red i16, green i16, blue i16) {
	C.glColor3s(red, green, blue)
}

pub fn gl_color3sv(v []i16) {
	C.glColor3sv(v)
}

pub fn gl_color3sv(v voidptr) {
	C.glColor3sv(v)
}

pub fn gl_color3ub(red byte, green byte, blue byte) {
	C.glColor3ub(red, green, blue)
}

pub fn gl_color3ubv(v voidptr) {
	C.glColor3ubv(v)
}

pub fn gl_color3ui(red int, green int, blue int) {
	C.glColor3ui(red, green, blue)
}

pub fn gl_color3uiv(v []int) {
	C.glColor3uiv(v)
}

pub fn gl_color3uiv(v voidptr) {
	C.glColor3uiv(v)
}

pub fn gl_color3us(red i16, green i16, blue i16) {
	C.glColor3us(red, green, blue)
}

pub fn gl_color3usv(v []i16) {
	C.glColor3usv(v)
}

pub fn gl_color3usv(v voidptr) {
	C.glColor3usv(v)
}

pub fn gl_color4b(red byte, green byte, blue byte, alpha byte) {
	C.glColor4b(red, green, blue, alpha)
}

pub fn gl_color4bv(v voidptr) {
	C.glColor4bv(v)
}

pub fn gl_color4d(red f64, green f64, blue f64, alpha f64) {
	C.glColor4d(red, green, blue, alpha)
}

pub fn gl_color4dv(v []f64) {
	C.glColor4dv(v)
}

pub fn gl_color4dv(v voidptr) {
	C.glColor4dv(v)
}

pub fn gl_color4f(red f32, green f32, blue f32, alpha f32) {
	C.glColor4f(red, green, blue, alpha)
}

pub fn gl_color4fv(v []f32) {
	C.glColor4fv(v)
}

pub fn gl_color4fv(v voidptr) {
	C.glColor4fv(v)
}

pub fn gl_color4i(red int, green int, blue int, alpha int) {
	C.glColor4i(red, green, blue, alpha)
}

pub fn gl_color4iv(v []int) {
	C.glColor4iv(v)
}

pub fn gl_color4iv(v voidptr) {
	C.glColor4iv(v)
}

pub fn gl_color4s(red i16, green i16, blue i16, alpha i16) {
	C.glColor4s(red, green, blue, alpha)
}

pub fn gl_color4sv(v []i16) {
	C.glColor4sv(v)
}

pub fn gl_color4sv(v voidptr) {
	C.glColor4sv(v)
}

pub fn gl_color4ub(red byte, green byte, blue byte, alpha byte) {
	C.glColor4ub(red, green, blue, alpha)
}

pub fn gl_color4ubv(v voidptr) {
	C.glColor4ubv(v)
}

pub fn gl_color4ui(red int, green int, blue int, alpha int) {
	C.glColor4ui(red, green, blue, alpha)
}

pub fn gl_color4uiv(v []int) {
	C.glColor4uiv(v)
}

pub fn gl_color4uiv(v voidptr) {
	C.glColor4uiv(v)
}

pub fn gl_color4us(red i16, green i16, blue i16, alpha i16) {
	C.glColor4us(red, green, blue, alpha)
}

pub fn gl_color4usv(v []i16) {
	C.glColor4usv(v)
}

pub fn gl_color4usv(v voidptr) {
	C.glColor4usv(v)
}

pub fn gl_color_mask(red bool, green bool, blue bool, alpha bool) {
	C.glColorMask(red, green, blue, alpha)
}

pub fn gl_color_material(face int, mode int) {
	C.glColorMaterial(face, mode)
}

pub fn gl_color_pointer(size int, type int, stride int, pointer i64) {
	C.glColorPointer(size, type, stride, pointer)
}

pub fn gl_color_pointer(size int, type int, stride int, pointer voidptr) {
	C.glColorPointer(size, type, stride, pointer)
}

pub fn gl_color_pointer(size int, type int, stride int, pointer voidptr) {
	C.glColorPointer(size, type, stride, pointer)
}

pub fn gl_color_pointer(size int, type int, stride int, pointer voidptr) {
	C.glColorPointer(size, type, stride, pointer)
}

pub fn gl_color_pointer(size int, type int, stride int, pointer voidptr) {
	C.glColorPointer(size, type, stride, pointer)
}

pub fn gl_copy_pixels(x int, y int, width int, height int, type int) {
	C.glCopyPixels(x, y, width, height, type)
}

pub fn gl_copy_tex_image1d(target int, level int, internal_format int, x int, y int, width int, border int) {
	C.glCopyTexImage1D(target, level, internal_format, x, y, width, border)
}

pub fn gl_copy_tex_image2d(target int, level int, internal_format int, x int, y int, width int, height int, border int) {
	C.glCopyTexImage2D(target, level, internal_format, x, y, width, height, border)
}

pub fn gl_copy_tex_sub_image1d(target int, level int, xoffset int, x int, y int, width int) {
	C.glCopyTexSubImage1D(target, level, xoffset, x, y, width)
}

pub fn gl_copy_tex_sub_image2d(target int, level int, xoffset int, yoffset int, x int, y int, width int, height int) {
	C.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
}

pub fn gl_cull_face(mode int) {
	C.glCullFace(mode)
}

pub fn gl_delete_lists(list int, range int) {
	C.glDeleteLists(list, range)
}

pub fn gl_delete_textures(texture int) {
	C.glDeleteTextures(texture)
}

pub fn gl_delete_textures(textures []int) {
	C.glDeleteTextures(textures)
}

pub fn gl_delete_textures(textures voidptr) {
	C.glDeleteTextures(textures)
}

pub fn gl_depth_func(func int) {
	C.glDepthFunc(func)
}

pub fn gl_depth_mask(flag bool) {
	C.glDepthMask(flag)
}

pub fn gl_depth_range(z_near f64, z_far f64) {
	C.glDepthRange(z_near, z_far)
}

pub fn gl_disable(target int) {
	C.glDisable(target)
}

pub fn gl_disable_client_state(cap int) {
	C.glDisableClientState(cap)
}

pub fn gl_draw_arrays(mode int, first int, count int) {
	C.glDrawArrays(mode, first, count)
}

pub fn gl_draw_buffer(buf int) {
	C.glDrawBuffer(buf)
}

pub fn gl_draw_elements(mode int, count int, type int, indices i64) {
	C.glDrawElements(mode, count, type, indices)
}

pub fn gl_draw_elements(mode int, type int, indices voidptr) {
	C.glDrawElements(mode, type, indices)
}

pub fn gl_draw_elements(mode int, indices voidptr) {
	C.glDrawElements(mode, indices)
}

pub fn gl_draw_elements(mode int, indices voidptr) {
	C.glDrawElements(mode, indices)
}

pub fn gl_draw_elements(mode int, indices voidptr) {
	C.glDrawElements(mode, indices)
}

pub fn gl_draw_pixels(width int, height int, format int, type int, pixels []f32) {
	C.glDrawPixels(width, height, format, type, pixels)
}

pub fn gl_draw_pixels(width int, height int, format int, type int, pixels []int) {
	C.glDrawPixels(width, height, format, type, pixels)
}

pub fn gl_draw_pixels(width int, height int, format int, type int, pixels i64) {
	C.glDrawPixels(width, height, format, type, pixels)
}

pub fn gl_draw_pixels(width int, height int, format int, type int, pixels []i16) {
	C.glDrawPixels(width, height, format, type, pixels)
}

pub fn gl_draw_pixels(width int, height int, format int, type int, pixels voidptr) {
	C.glDrawPixels(width, height, format, type, pixels)
}

pub fn gl_draw_pixels(width int, height int, format int, type int, pixels voidptr) {
	C.glDrawPixels(width, height, format, type, pixels)
}

pub fn gl_draw_pixels(width int, height int, format int, type int, pixels voidptr) {
	C.glDrawPixels(width, height, format, type, pixels)
}

pub fn gl_draw_pixels(width int, height int, format int, type int, pixels voidptr) {
	C.glDrawPixels(width, height, format, type, pixels)
}

pub fn gl_edge_flag(flag bool) {
	C.glEdgeFlag(flag)
}

pub fn gl_edge_flag_pointer(stride int, pointer i64) {
	C.glEdgeFlagPointer(stride, pointer)
}

pub fn gl_edge_flag_pointer(stride int, pointer voidptr) {
	C.glEdgeFlagPointer(stride, pointer)
}

pub fn gl_edge_flagv(flag voidptr) {
	C.glEdgeFlagv(flag)
}

pub fn gl_enable(target int) {
	C.glEnable(target)
}

pub fn gl_enable_client_state(cap int) {
	C.glEnableClientState(cap)
}

pub fn gl_end() {
	C.glEnd()
}

pub fn gl_end_list() {
	C.glEndList()
}

pub fn gl_eval_coord1d(u f64) {
	C.glEvalCoord1d(u)
}

pub fn gl_eval_coord1dv(u []f64) {
	C.glEvalCoord1dv(u)
}

pub fn gl_eval_coord1dv(u voidptr) {
	C.glEvalCoord1dv(u)
}

pub fn gl_eval_coord1f(u f32) {
	C.glEvalCoord1f(u)
}

pub fn gl_eval_coord1fv(u []f32) {
	C.glEvalCoord1fv(u)
}

pub fn gl_eval_coord1fv(u voidptr) {
	C.glEvalCoord1fv(u)
}

pub fn gl_eval_coord2d(u f64, v f64) {
	C.glEvalCoord2d(u, v)
}

pub fn gl_eval_coord2dv(u []f64) {
	C.glEvalCoord2dv(u)
}

pub fn gl_eval_coord2dv(u voidptr) {
	C.glEvalCoord2dv(u)
}

pub fn gl_eval_coord2f(u f32, v f32) {
	C.glEvalCoord2f(u, v)
}

pub fn gl_eval_coord2fv(u []f32) {
	C.glEvalCoord2fv(u)
}

pub fn gl_eval_coord2fv(u voidptr) {
	C.glEvalCoord2fv(u)
}

pub fn gl_eval_mesh1(mode int, i1 int, i2 int) {
	C.glEvalMesh1(mode, i1, i2)
}

pub fn gl_eval_mesh2(mode int, i1 int, i2 int, j1 int, j2 int) {
	C.glEvalMesh2(mode, i1, i2, j1, j2)
}

pub fn gl_eval_point1(i int) {
	C.glEvalPoint1(i)
}

pub fn gl_eval_point2(i int, j int) {
	C.glEvalPoint2(i, j)
}

pub fn gl_feedback_buffer(type int, buffer []f32) {
	C.glFeedbackBuffer(type, buffer)
}

pub fn gl_feedback_buffer(type int, buffer voidptr) {
	C.glFeedbackBuffer(type, buffer)
}

pub fn gl_finish() {
	C.glFinish()
}

pub fn gl_flush() {
	C.glFlush()
}

pub fn gl_fogf(pname int, param f32) {
	C.glFogf(pname, param)
}

pub fn gl_fogfv(pname int, params []f32) {
	C.glFogfv(pname, params)
}

pub fn gl_fogfv(pname int, params voidptr) {
	C.glFogfv(pname, params)
}

pub fn gl_fogi(pname int, param int) {
	C.glFogi(pname, param)
}

pub fn gl_fogiv(pname int, params []int) {
	C.glFogiv(pname, params)
}

pub fn gl_fogiv(pname int, params voidptr) {
	C.glFogiv(pname, params)
}

pub fn gl_front_face(dir int) {
	C.glFrontFace(dir)
}

pub fn gl_frustum(l f64, r f64, b f64, t f64, n f64, f f64) {
	C.glFrustum(l, r, b, t, n, f)
}

pub fn gl_gen_lists(s int) int {
	return C.glGenLists(s)
}

pub fn gl_gen_textures() int {
	return C.glGenTextures()
}

pub fn gl_gen_textures(textures []int) {
	C.glGenTextures(textures)
}

pub fn gl_gen_textures(textures voidptr) {
	C.glGenTextures(textures)
}

pub fn gl_get_boolean(pname int) bool {
	return C.glGetBoolean(pname)
}

pub fn gl_get_booleanv(pname int, params voidptr) {
	C.glGetBooleanv(pname, params)
}

pub fn gl_get_clip_plane(plane int, equation []f64) {
	C.glGetClipPlane(plane, equation)
}

pub fn gl_get_clip_plane(plane int, equation voidptr) {
	C.glGetClipPlane(plane, equation)
}

pub fn gl_get_double(pname int) f64 {
	return C.glGetDouble(pname)
}

pub fn gl_get_doublev(pname int, params []f64) {
	C.glGetDoublev(pname, params)
}

pub fn gl_get_doublev(pname int, params voidptr) {
	C.glGetDoublev(pname, params)
}

pub fn gl_get_error() int {
	return C.glGetError()
}

pub fn gl_get_float(pname int) f32 {
	return C.glGetFloat(pname)
}

pub fn gl_get_floatv(pname int, params []f32) {
	C.glGetFloatv(pname, params)
}

pub fn gl_get_floatv(pname int, params voidptr) {
	C.glGetFloatv(pname, params)
}

pub fn gl_get_integer(pname int) int {
	return C.glGetInteger(pname)
}

pub fn gl_get_integerv(pname int, params []int) {
	C.glGetIntegerv(pname, params)
}

pub fn gl_get_integerv(pname int, params voidptr) {
	C.glGetIntegerv(pname, params)
}

pub fn gl_get_lightf(light int, pname int) f32 {
	return C.glGetLightf(light, pname)
}

pub fn gl_get_lightfv(light int, pname int, data []f32) {
	C.glGetLightfv(light, pname, data)
}

pub fn gl_get_lightfv(light int, pname int, data voidptr) {
	C.glGetLightfv(light, pname, data)
}

pub fn gl_get_lighti(light int, pname int) int {
	return C.glGetLighti(light, pname)
}

pub fn gl_get_lightiv(light int, pname int, data []int) {
	C.glGetLightiv(light, pname, data)
}

pub fn gl_get_lightiv(light int, pname int, data voidptr) {
	C.glGetLightiv(light, pname, data)
}

pub fn gl_get_mapd(target int, query int) f64 {
	return C.glGetMapd(target, query)
}

pub fn gl_get_mapdv(target int, query int, data []f64) {
	C.glGetMapdv(target, query, data)
}

pub fn gl_get_mapdv(target int, query int, data voidptr) {
	C.glGetMapdv(target, query, data)
}

pub fn gl_get_mapf(target int, query int) f32 {
	return C.glGetMapf(target, query)
}

pub fn gl_get_mapfv(target int, query int, data []f32) {
	C.glGetMapfv(target, query, data)
}

pub fn gl_get_mapfv(target int, query int, data voidptr) {
	C.glGetMapfv(target, query, data)
}

pub fn gl_get_mapi(target int, query int) int {
	return C.glGetMapi(target, query)
}

pub fn gl_get_mapiv(target int, query int, data []int) {
	C.glGetMapiv(target, query, data)
}

pub fn gl_get_mapiv(target int, query int, data voidptr) {
	C.glGetMapiv(target, query, data)
}

pub fn gl_get_materialfv(face int, pname int, data []f32) {
	C.glGetMaterialfv(face, pname, data)
}

pub fn gl_get_materialfv(face int, pname int, data voidptr) {
	C.glGetMaterialfv(face, pname, data)
}

pub fn gl_get_materialiv(face int, pname int, data []int) {
	C.glGetMaterialiv(face, pname, data)
}

pub fn gl_get_materialiv(face int, pname int, data voidptr) {
	C.glGetMaterialiv(face, pname, data)
}

pub fn gl_get_pixel_mapfv(map int, data []f32) {
	C.glGetPixelMapfv(map, data)
}

pub fn gl_get_pixel_mapfv(map int, data i64) {
	C.glGetPixelMapfv(map, data)
}

pub fn gl_get_pixel_mapfv(map int, data voidptr) {
	C.glGetPixelMapfv(map, data)
}

pub fn gl_get_pixel_mapuiv(map int, data []int) {
	C.glGetPixelMapuiv(map, data)
}

pub fn gl_get_pixel_mapuiv(map int, data i64) {
	C.glGetPixelMapuiv(map, data)
}

pub fn gl_get_pixel_mapuiv(map int, data voidptr) {
	C.glGetPixelMapuiv(map, data)
}

pub fn gl_get_pixel_mapusv(map int, data i64) {
	C.glGetPixelMapusv(map, data)
}

pub fn gl_get_pixel_mapusv(map int, data []i16) {
	C.glGetPixelMapusv(map, data)
}

pub fn gl_get_pixel_mapusv(map int, data voidptr) {
	C.glGetPixelMapusv(map, data)
}

pub fn gl_get_pointer(pname int) i64 {
	return C.glGetPointer(pname)
}

pub fn gl_get_pointerv(pname int, params *voidptr) {
	C.glGetPointerv(pname, params)
}

pub fn gl_get_polygon_stipple(pattern i64) {
	C.glGetPolygonStipple(pattern)
}

pub fn gl_get_polygon_stipple(pattern voidptr) {
	C.glGetPolygonStipple(pattern)
}

pub fn gl_get_string(name int) string {
	return C.glGetString(name)
}

pub fn gl_get_tex_envf(env int, pname int) f32 {
	return C.glGetTexEnvf(env, pname)
}

pub fn gl_get_tex_envfv(env int, pname int, data []f32) {
	C.glGetTexEnvfv(env, pname, data)
}

pub fn gl_get_tex_envfv(env int, pname int, data voidptr) {
	C.glGetTexEnvfv(env, pname, data)
}

pub fn gl_get_tex_envi(env int, pname int) int {
	return C.glGetTexEnvi(env, pname)
}

pub fn gl_get_tex_enviv(env int, pname int, data []int) {
	C.glGetTexEnviv(env, pname, data)
}

pub fn gl_get_tex_enviv(env int, pname int, data voidptr) {
	C.glGetTexEnviv(env, pname, data)
}

pub fn gl_get_tex_gend(coord int, pname int) f64 {
	return C.glGetTexGend(coord, pname)
}

pub fn gl_get_tex_gendv(coord int, pname int, data []f64) {
	C.glGetTexGendv(coord, pname, data)
}

pub fn gl_get_tex_gendv(coord int, pname int, data voidptr) {
	C.glGetTexGendv(coord, pname, data)
}

pub fn gl_get_tex_genf(coord int, pname int) f32 {
	return C.glGetTexGenf(coord, pname)
}

pub fn gl_get_tex_genfv(coord int, pname int, data []f32) {
	C.glGetTexGenfv(coord, pname, data)
}

pub fn gl_get_tex_genfv(coord int, pname int, data voidptr) {
	C.glGetTexGenfv(coord, pname, data)
}

pub fn gl_get_tex_geni(coord int, pname int) int {
	return C.glGetTexGeni(coord, pname)
}

pub fn gl_get_tex_geniv(coord int, pname int, data []int) {
	C.glGetTexGeniv(coord, pname, data)
}

pub fn gl_get_tex_geniv(coord int, pname int, data voidptr) {
	C.glGetTexGeniv(coord, pname, data)
}

pub fn gl_get_tex_image(tex int, level int, format int, type int, pixels []f64) {
	C.glGetTexImage(tex, level, format, type, pixels)
}

pub fn gl_get_tex_image(tex int, level int, format int, type int, pixels []f32) {
	C.glGetTexImage(tex, level, format, type, pixels)
}

pub fn gl_get_tex_image(tex int, level int, format int, type int, pixels []int) {
	C.glGetTexImage(tex, level, format, type, pixels)
}

pub fn gl_get_tex_image(tex int, level int, format int, type int, pixels i64) {
	C.glGetTexImage(tex, level, format, type, pixels)
}

pub fn gl_get_tex_image(tex int, level int, format int, type int, pixels []i16) {
	C.glGetTexImage(tex, level, format, type, pixels)
}

pub fn gl_get_tex_image(tex int, level int, format int, type int, pixels voidptr) {
	C.glGetTexImage(tex, level, format, type, pixels)
}

pub fn gl_get_tex_image(tex int, level int, format int, type int, pixels voidptr) {
	C.glGetTexImage(tex, level, format, type, pixels)
}

pub fn gl_get_tex_image(tex int, level int, format int, type int, pixels voidptr) {
	C.glGetTexImage(tex, level, format, type, pixels)
}

pub fn gl_get_tex_image(tex int, level int, format int, type int, pixels voidptr) {
	C.glGetTexImage(tex, level, format, type, pixels)
}

pub fn gl_get_tex_image(tex int, level int, format int, type int, pixels voidptr) {
	C.glGetTexImage(tex, level, format, type, pixels)
}

pub fn gl_get_tex_level_parameterf(target int, level int, pname int) f32 {
	return C.glGetTexLevelParameterf(target, level, pname)
}

pub fn gl_get_tex_level_parameterfv(target int, level int, pname int, params []f32) {
	C.glGetTexLevelParameterfv(target, level, pname, params)
}

pub fn gl_get_tex_level_parameterfv(target int, level int, pname int, params voidptr) {
	C.glGetTexLevelParameterfv(target, level, pname, params)
}

pub fn gl_get_tex_level_parameteri(target int, level int, pname int) int {
	return C.glGetTexLevelParameteri(target, level, pname)
}

pub fn gl_get_tex_level_parameteriv(target int, level int, pname int, params []int) {
	C.glGetTexLevelParameteriv(target, level, pname, params)
}

pub fn gl_get_tex_level_parameteriv(target int, level int, pname int, params voidptr) {
	C.glGetTexLevelParameteriv(target, level, pname, params)
}

pub fn gl_get_tex_parameterf(target int, pname int) f32 {
	return C.glGetTexParameterf(target, pname)
}

pub fn gl_get_tex_parameterfv(target int, pname int, params []f32) {
	C.glGetTexParameterfv(target, pname, params)
}

pub fn gl_get_tex_parameterfv(target int, pname int, params voidptr) {
	C.glGetTexParameterfv(target, pname, params)
}

pub fn gl_get_tex_parameteri(target int, pname int) int {
	return C.glGetTexParameteri(target, pname)
}

pub fn gl_get_tex_parameteriv(target int, pname int, params []int) {
	C.glGetTexParameteriv(target, pname, params)
}

pub fn gl_get_tex_parameteriv(target int, pname int, params voidptr) {
	C.glGetTexParameteriv(target, pname, params)
}

pub fn gl_hint(target int, hint int) {
	C.glHint(target, hint)
}

pub fn gl_indexd(index f64) {
	C.glIndexd(index)
}

pub fn gl_indexdv(index []f64) {
	C.glIndexdv(index)
}

pub fn gl_indexdv(index voidptr) {
	C.glIndexdv(index)
}

pub fn gl_indexf(index f32) {
	C.glIndexf(index)
}

pub fn gl_indexfv(index []f32) {
	C.glIndexfv(index)
}

pub fn gl_indexfv(index voidptr) {
	C.glIndexfv(index)
}

pub fn gl_indexi(index int) {
	C.glIndexi(index)
}

pub fn gl_indexiv(index []int) {
	C.glIndexiv(index)
}

pub fn gl_indexiv(index voidptr) {
	C.glIndexiv(index)
}

pub fn gl_index_mask(mask int) {
	C.glIndexMask(mask)
}

pub fn gl_index_pointer(type int, stride int, pointer i64) {
	C.glIndexPointer(type, stride, pointer)
}

pub fn gl_index_pointer(type int, stride int, pointer voidptr) {
	C.glIndexPointer(type, stride, pointer)
}

pub fn gl_index_pointer(stride int, pointer voidptr) {
	C.glIndexPointer(stride, pointer)
}

pub fn gl_index_pointer(stride int, pointer voidptr) {
	C.glIndexPointer(stride, pointer)
}

pub fn gl_index_pointer(stride int, pointer voidptr) {
	C.glIndexPointer(stride, pointer)
}

pub fn gl_indexs(index i16) {
	C.glIndexs(index)
}

pub fn gl_indexsv(index []i16) {
	C.glIndexsv(index)
}

pub fn gl_indexsv(index voidptr) {
	C.glIndexsv(index)
}

pub fn gl_indexub(index byte) {
	C.glIndexub(index)
}

pub fn gl_indexubv(index voidptr) {
	C.glIndexubv(index)
}

pub fn gl_init_names() {
	C.glInitNames()
}

pub fn gl_interleaved_arrays(format int, stride int, pointer []f64) {
	C.glInterleavedArrays(format, stride, pointer)
}

pub fn gl_interleaved_arrays(format int, stride int, pointer []f32) {
	C.glInterleavedArrays(format, stride, pointer)
}

pub fn gl_interleaved_arrays(format int, stride int, pointer []int) {
	C.glInterleavedArrays(format, stride, pointer)
}

pub fn gl_interleaved_arrays(format int, stride int, pointer i64) {
	C.glInterleavedArrays(format, stride, pointer)
}

pub fn gl_interleaved_arrays(format int, stride int, pointer []i16) {
	C.glInterleavedArrays(format, stride, pointer)
}

pub fn gl_interleaved_arrays(format int, stride int, pointer voidptr) {
	C.glInterleavedArrays(format, stride, pointer)
}

pub fn gl_interleaved_arrays(format int, stride int, pointer voidptr) {
	C.glInterleavedArrays(format, stride, pointer)
}

pub fn gl_interleaved_arrays(format int, stride int, pointer voidptr) {
	C.glInterleavedArrays(format, stride, pointer)
}

pub fn gl_interleaved_arrays(format int, stride int, pointer voidptr) {
	C.glInterleavedArrays(format, stride, pointer)
}

pub fn gl_interleaved_arrays(format int, stride int, pointer voidptr) {
	C.glInterleavedArrays(format, stride, pointer)
}

pub fn gl_is_enabled(cap int) bool {
	return C.glIsEnabled(cap)
}

pub fn gl_is_list(list int) bool {
	return C.glIsList(list)
}

pub fn gl_is_texture(texture int) bool {
	return C.glIsTexture(texture)
}

pub fn gl_lightf(light int, pname int, param f32) {
	C.glLightf(light, pname, param)
}

pub fn gl_lightfv(light int, pname int, params []f32) {
	C.glLightfv(light, pname, params)
}

pub fn gl_lightfv(light int, pname int, params voidptr) {
	C.glLightfv(light, pname, params)
}

pub fn gl_lighti(light int, pname int, param int) {
	C.glLighti(light, pname, param)
}

pub fn gl_lightiv(light int, pname int, params []int) {
	C.glLightiv(light, pname, params)
}

pub fn gl_lightiv(light int, pname int, params voidptr) {
	C.glLightiv(light, pname, params)
}

pub fn gl_light_modelf(pname int, param f32) {
	C.glLightModelf(pname, param)
}

pub fn gl_light_modelfv(pname int, params []f32) {
	C.glLightModelfv(pname, params)
}

pub fn gl_light_modelfv(pname int, params voidptr) {
	C.glLightModelfv(pname, params)
}

pub fn gl_light_modeli(pname int, param int) {
	C.glLightModeli(pname, param)
}

pub fn gl_light_modeliv(pname int, params []int) {
	C.glLightModeliv(pname, params)
}

pub fn gl_light_modeliv(pname int, params voidptr) {
	C.glLightModeliv(pname, params)
}

pub fn gl_line_stipple(factor int, pattern i16) {
	C.glLineStipple(factor, pattern)
}

pub fn gl_line_width(width f32) {
	C.glLineWidth(width)
}

pub fn gl_list_base(base int) {
	C.glListBase(base)
}

pub fn gl_load_identity() {
	C.glLoadIdentity()
}

pub fn gl_load_matrixd(m []f64) {
	C.glLoadMatrixd(m)
}

pub fn gl_load_matrixd(m voidptr) {
	C.glLoadMatrixd(m)
}

pub fn gl_load_matrixf(m []f32) {
	C.glLoadMatrixf(m)
}

pub fn gl_load_matrixf(m voidptr) {
	C.glLoadMatrixf(m)
}

pub fn gl_load_name(name int) {
	C.glLoadName(name)
}

pub fn gl_logic_op(op int) {
	C.glLogicOp(op)
}

pub fn gl_map1d(target int, u1 f64, u2 f64, stride int, order int, points []f64) {
	C.glMap1d(target, u1, u2, stride, order, points)
}

pub fn gl_map1d(target int, u1 f64, u2 f64, stride int, order int, points voidptr) {
	C.glMap1d(target, u1, u2, stride, order, points)
}

pub fn gl_map1f(target int, u1 f32, u2 f32, stride int, order int, points []f32) {
	C.glMap1f(target, u1, u2, stride, order, points)
}

pub fn gl_map1f(target int, u1 f32, u2 f32, stride int, order int, points voidptr) {
	C.glMap1f(target, u1, u2, stride, order, points)
}

pub fn gl_map2d(target int, u1 f64, u2 f64, ustride int, uorder int, v1 f64, v2 f64, vstride int, vorder int, points []f64) {
	C.glMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points)
}

pub fn gl_map2d(target int, u1 f64, u2 f64, ustride int, uorder int, v1 f64, v2 f64, vstride int, vorder int, points voidptr) {
	C.glMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points)
}

pub fn gl_map2f(target int, u1 f32, u2 f32, ustride int, uorder int, v1 f32, v2 f32, vstride int, vorder int, points []f32) {
	C.glMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points)
}

pub fn gl_map2f(target int, u1 f32, u2 f32, ustride int, uorder int, v1 f32, v2 f32, vstride int, vorder int, points voidptr) {
	C.glMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points)
}

pub fn gl_map_grid1d(n int, u1 f64, u2 f64) {
	C.glMapGrid1d(n, u1, u2)
}

pub fn gl_map_grid1f(n int, u1 f32, u2 f32) {
	C.glMapGrid1f(n, u1, u2)
}

pub fn gl_map_grid2d(un int, u1 f64, u2 f64, vn int, v1 f64, v2 f64) {
	C.glMapGrid2d(un, u1, u2, vn, v1, v2)
}

pub fn gl_map_grid2f(un int, u1 f32, u2 f32, vn int, v1 f32, v2 f32) {
	C.glMapGrid2f(un, u1, u2, vn, v1, v2)
}

pub fn gl_materialf(face int, pname int, param f32) {
	C.glMaterialf(face, pname, param)
}

pub fn gl_materialfv(face int, pname int, params []f32) {
	C.glMaterialfv(face, pname, params)
}

pub fn gl_materialfv(face int, pname int, params voidptr) {
	C.glMaterialfv(face, pname, params)
}

pub fn gl_materiali(face int, pname int, param int) {
	C.glMateriali(face, pname, param)
}

pub fn gl_materialiv(face int, pname int, params []int) {
	C.glMaterialiv(face, pname, params)
}

pub fn gl_materialiv(face int, pname int, params voidptr) {
	C.glMaterialiv(face, pname, params)
}

pub fn gl_matrix_mode(mode int) {
	C.glMatrixMode(mode)
}

pub fn gl_mult_matrixd(m []f64) {
	C.glMultMatrixd(m)
}

pub fn gl_mult_matrixd(m voidptr) {
	C.glMultMatrixd(m)
}

pub fn gl_mult_matrixf(m []f32) {
	C.glMultMatrixf(m)
}

pub fn gl_mult_matrixf(m voidptr) {
	C.glMultMatrixf(m)
}

pub fn gl_new_list(n int, mode int) {
	C.glNewList(n, mode)
}

pub fn gl_normal3b(nx byte, ny byte, nz byte) {
	C.glNormal3b(nx, ny, nz)
}

pub fn gl_normal3bv(v voidptr) {
	C.glNormal3bv(v)
}

pub fn gl_normal3d(nx f64, ny f64, nz f64) {
	C.glNormal3d(nx, ny, nz)
}

pub fn gl_normal3dv(v []f64) {
	C.glNormal3dv(v)
}

pub fn gl_normal3dv(v voidptr) {
	C.glNormal3dv(v)
}

pub fn gl_normal3f(nx f32, ny f32, nz f32) {
	C.glNormal3f(nx, ny, nz)
}

pub fn gl_normal3fv(v []f32) {
	C.glNormal3fv(v)
}

pub fn gl_normal3fv(v voidptr) {
	C.glNormal3fv(v)
}

pub fn gl_normal3i(nx int, ny int, nz int) {
	C.glNormal3i(nx, ny, nz)
}

pub fn gl_normal3iv(v []int) {
	C.glNormal3iv(v)
}

pub fn gl_normal3iv(v voidptr) {
	C.glNormal3iv(v)
}

pub fn gl_normal3s(nx i16, ny i16, nz i16) {
	C.glNormal3s(nx, ny, nz)
}

pub fn gl_normal3sv(v []i16) {
	C.glNormal3sv(v)
}

pub fn gl_normal3sv(v voidptr) {
	C.glNormal3sv(v)
}

pub fn gl_normal_pointer(type int, stride int, pointer i64) {
	C.glNormalPointer(type, stride, pointer)
}

pub fn gl_normal_pointer(type int, stride int, pointer voidptr) {
	C.glNormalPointer(type, stride, pointer)
}

pub fn gl_normal_pointer(type int, stride int, pointer voidptr) {
	C.glNormalPointer(type, stride, pointer)
}

pub fn gl_normal_pointer(type int, stride int, pointer voidptr) {
	C.glNormalPointer(type, stride, pointer)
}

pub fn gl_normal_pointer(type int, stride int, pointer voidptr) {
	C.glNormalPointer(type, stride, pointer)
}

pub fn gl_ortho(l f64, r f64, b f64, t f64, n f64, f f64) {
	C.glOrtho(l, r, b, t, n, f)
}

pub fn gl_pass_through(token f32) {
	C.glPassThrough(token)
}

pub fn gl_pixel_mapfv(map int, values []f32) {
	C.glPixelMapfv(map, values)
}

pub fn gl_pixel_mapfv(map int, size int, values i64) {
	C.glPixelMapfv(map, size, values)
}

pub fn gl_pixel_mapfv(map int, values voidptr) {
	C.glPixelMapfv(map, values)
}

pub fn gl_pixel_mapuiv(map int, values []int) {
	C.glPixelMapuiv(map, values)
}

pub fn gl_pixel_mapuiv(map int, size int, values i64) {
	C.glPixelMapuiv(map, size, values)
}

pub fn gl_pixel_mapuiv(map int, values voidptr) {
	C.glPixelMapuiv(map, values)
}

pub fn gl_pixel_mapusv(map int, size int, values i64) {
	C.glPixelMapusv(map, size, values)
}

pub fn gl_pixel_mapusv(map int, values []i16) {
	C.glPixelMapusv(map, values)
}

pub fn gl_pixel_mapusv(map int, values voidptr) {
	C.glPixelMapusv(map, values)
}

pub fn gl_pixel_storef(pname int, param f32) {
	C.glPixelStoref(pname, param)
}

pub fn gl_pixel_storei(pname int, param int) {
	C.glPixelStorei(pname, param)
}

pub fn gl_pixel_transferf(pname int, param f32) {
	C.glPixelTransferf(pname, param)
}

pub fn gl_pixel_transferi(pname int, param int) {
	C.glPixelTransferi(pname, param)
}

pub fn gl_pixel_zoom(xfactor f32, yfactor f32) {
	C.glPixelZoom(xfactor, yfactor)
}

pub fn gl_point_size(size f32) {
	C.glPointSize(size)
}

pub fn gl_polygon_mode(face int, mode int) {
	C.glPolygonMode(face, mode)
}

pub fn gl_polygon_offset(factor f32, units f32) {
	C.glPolygonOffset(factor, units)
}

pub fn gl_polygon_stipple(pattern i64) {
	C.glPolygonStipple(pattern)
}

pub fn gl_polygon_stipple(pattern voidptr) {
	C.glPolygonStipple(pattern)
}

pub fn gl_pop_attrib() {
	C.glPopAttrib()
}

pub fn gl_pop_client_attrib() {
	C.glPopClientAttrib()
}

pub fn gl_pop_matrix() {
	C.glPopMatrix()
}

pub fn gl_pop_name() {
	C.glPopName()
}

pub fn gl_prioritize_textures(textures []int, priorities []f32) {
	C.glPrioritizeTextures(textures, priorities)
}

pub fn gl_prioritize_textures(textures voidptr, priorities voidptr) {
	C.glPrioritizeTextures(textures, priorities)
}

pub fn gl_push_attrib(mask int) {
	C.glPushAttrib(mask)
}

pub fn gl_push_client_attrib(mask int) {
	C.glPushClientAttrib(mask)
}

pub fn gl_push_matrix() {
	C.glPushMatrix()
}

pub fn gl_push_name(name int) {
	C.glPushName(name)
}

pub fn gl_raster_pos2d(x f64, y f64) {
	C.glRasterPos2d(x, y)
}

pub fn gl_raster_pos2dv(coords []f64) {
	C.glRasterPos2dv(coords)
}

pub fn gl_raster_pos2dv(coords voidptr) {
	C.glRasterPos2dv(coords)
}

pub fn gl_raster_pos2f(x f32, y f32) {
	C.glRasterPos2f(x, y)
}

pub fn gl_raster_pos2fv(coords []f32) {
	C.glRasterPos2fv(coords)
}

pub fn gl_raster_pos2fv(coords voidptr) {
	C.glRasterPos2fv(coords)
}

pub fn gl_raster_pos2i(x int, y int) {
	C.glRasterPos2i(x, y)
}

pub fn gl_raster_pos2iv(coords []int) {
	C.glRasterPos2iv(coords)
}

pub fn gl_raster_pos2iv(coords voidptr) {
	C.glRasterPos2iv(coords)
}

pub fn gl_raster_pos2s(x i16, y i16) {
	C.glRasterPos2s(x, y)
}

pub fn gl_raster_pos2sv(coords []i16) {
	C.glRasterPos2sv(coords)
}

pub fn gl_raster_pos2sv(coords voidptr) {
	C.glRasterPos2sv(coords)
}

pub fn gl_raster_pos3d(x f64, y f64, z f64) {
	C.glRasterPos3d(x, y, z)
}

pub fn gl_raster_pos3dv(coords []f64) {
	C.glRasterPos3dv(coords)
}

pub fn gl_raster_pos3dv(coords voidptr) {
	C.glRasterPos3dv(coords)
}

pub fn gl_raster_pos3f(x f32, y f32, z f32) {
	C.glRasterPos3f(x, y, z)
}

pub fn gl_raster_pos3fv(coords []f32) {
	C.glRasterPos3fv(coords)
}

pub fn gl_raster_pos3fv(coords voidptr) {
	C.glRasterPos3fv(coords)
}

pub fn gl_raster_pos3i(x int, y int, z int) {
	C.glRasterPos3i(x, y, z)
}

pub fn gl_raster_pos3iv(coords []int) {
	C.glRasterPos3iv(coords)
}

pub fn gl_raster_pos3iv(coords voidptr) {
	C.glRasterPos3iv(coords)
}

pub fn gl_raster_pos3s(x i16, y i16, z i16) {
	C.glRasterPos3s(x, y, z)
}

pub fn gl_raster_pos3sv(coords []i16) {
	C.glRasterPos3sv(coords)
}

pub fn gl_raster_pos3sv(coords voidptr) {
	C.glRasterPos3sv(coords)
}

pub fn gl_raster_pos4d(x f64, y f64, z f64, w f64) {
	C.glRasterPos4d(x, y, z, w)
}

pub fn gl_raster_pos4dv(coords []f64) {
	C.glRasterPos4dv(coords)
}

pub fn gl_raster_pos4dv(coords voidptr) {
	C.glRasterPos4dv(coords)
}

pub fn gl_raster_pos4f(x f32, y f32, z f32, w f32) {
	C.glRasterPos4f(x, y, z, w)
}

pub fn gl_raster_pos4fv(coords []f32) {
	C.glRasterPos4fv(coords)
}

pub fn gl_raster_pos4fv(coords voidptr) {
	C.glRasterPos4fv(coords)
}

pub fn gl_raster_pos4i(x int, y int, z int, w int) {
	C.glRasterPos4i(x, y, z, w)
}

pub fn gl_raster_pos4iv(coords []int) {
	C.glRasterPos4iv(coords)
}

pub fn gl_raster_pos4iv(coords voidptr) {
	C.glRasterPos4iv(coords)
}

pub fn gl_raster_pos4s(x i16, y i16, z i16, w i16) {
	C.glRasterPos4s(x, y, z, w)
}

pub fn gl_raster_pos4sv(coords []i16) {
	C.glRasterPos4sv(coords)
}

pub fn gl_raster_pos4sv(coords voidptr) {
	C.glRasterPos4sv(coords)
}

pub fn gl_read_buffer(src int) {
	C.glReadBuffer(src)
}

pub fn gl_read_pixels(x int, y int, width int, height int, format int, type int, pixels []f32) {
	C.glReadPixels(x, y, width, height, format, type, pixels)
}

pub fn gl_read_pixels(x int, y int, width int, height int, format int, type int, pixels []int) {
	C.glReadPixels(x, y, width, height, format, type, pixels)
}

pub fn gl_read_pixels(x int, y int, width int, height int, format int, type int, pixels i64) {
	C.glReadPixels(x, y, width, height, format, type, pixels)
}

pub fn gl_read_pixels(x int, y int, width int, height int, format int, type int, pixels []i16) {
	C.glReadPixels(x, y, width, height, format, type, pixels)
}

pub fn gl_read_pixels(x int, y int, width int, height int, format int, type int, pixels voidptr) {
	C.glReadPixels(x, y, width, height, format, type, pixels)
}

pub fn gl_read_pixels(x int, y int, width int, height int, format int, type int, pixels voidptr) {
	C.glReadPixels(x, y, width, height, format, type, pixels)
}

pub fn gl_read_pixels(x int, y int, width int, height int, format int, type int, pixels voidptr) {
	C.glReadPixels(x, y, width, height, format, type, pixels)
}

pub fn gl_read_pixels(x int, y int, width int, height int, format int, type int, pixels voidptr) {
	C.glReadPixels(x, y, width, height, format, type, pixels)
}

pub fn gl_rectd(x1 f64, y1 f64, x2 f64, y2 f64) {
	C.glRectd(x1, y1, x2, y2)
}

pub fn gl_rectdv(v1 []f64, v2 []f64) {
	C.glRectdv(v1, v2)
}

pub fn gl_rectdv(v1 voidptr, v2 voidptr) {
	C.glRectdv(v1, v2)
}

pub fn gl_rectf(x1 f32, y1 f32, x2 f32, y2 f32) {
	C.glRectf(x1, y1, x2, y2)
}

pub fn gl_rectfv(v1 []f32, v2 []f32) {
	C.glRectfv(v1, v2)
}

pub fn gl_rectfv(v1 voidptr, v2 voidptr) {
	C.glRectfv(v1, v2)
}

pub fn gl_recti(x1 int, y1 int, x2 int, y2 int) {
	C.glRecti(x1, y1, x2, y2)
}

pub fn gl_rectiv(v1 []int, v2 []int) {
	C.glRectiv(v1, v2)
}

pub fn gl_rectiv(v1 voidptr, v2 voidptr) {
	C.glRectiv(v1, v2)
}

pub fn gl_rects(x1 i16, y1 i16, x2 i16, y2 i16) {
	C.glRects(x1, y1, x2, y2)
}

pub fn gl_rectsv(v1 []i16, v2 []i16) {
	C.glRectsv(v1, v2)
}

pub fn gl_rectsv(v1 voidptr, v2 voidptr) {
	C.glRectsv(v1, v2)
}

pub fn gl_render_mode(mode int) int {
	return C.glRenderMode(mode)
}

pub fn gl_rotated(angle f64, x f64, y f64, z f64) {
	C.glRotated(angle, x, y, z)
}

pub fn gl_rotatef(angle f32, x f32, y f32, z f32) {
	C.glRotatef(angle, x, y, z)
}

pub fn gl_scaled(x f64, y f64, z f64) {
	C.glScaled(x, y, z)
}

pub fn gl_scalef(x f32, y f32, z f32) {
	C.glScalef(x, y, z)
}

pub fn gl_scissor(x int, y int, width int, height int) {
	C.glScissor(x, y, width, height)
}

pub fn gl_select_buffer(buffer []int) {
	C.glSelectBuffer(buffer)
}

pub fn gl_select_buffer(buffer voidptr) {
	C.glSelectBuffer(buffer)
}

pub fn gl_shade_model(mode int) {
	C.glShadeModel(mode)
}

pub fn gl_stencil_func(func int, ref int, mask int) {
	C.glStencilFunc(func, ref, mask)
}

pub fn gl_stencil_mask(mask int) {
	C.glStencilMask(mask)
}

pub fn gl_stencil_op(sfail int, dpfail int, dppass int) {
	C.glStencilOp(sfail, dpfail, dppass)
}

pub fn gl_tex_coord1d(s f64) {
	C.glTexCoord1d(s)
}

pub fn gl_tex_coord1dv(v []f64) {
	C.glTexCoord1dv(v)
}

pub fn gl_tex_coord1dv(v voidptr) {
	C.glTexCoord1dv(v)
}

pub fn gl_tex_coord1f(s f32) {
	C.glTexCoord1f(s)
}

pub fn gl_tex_coord1fv(v []f32) {
	C.glTexCoord1fv(v)
}

pub fn gl_tex_coord1fv(v voidptr) {
	C.glTexCoord1fv(v)
}

pub fn gl_tex_coord1i(s int) {
	C.glTexCoord1i(s)
}

pub fn gl_tex_coord1iv(v []int) {
	C.glTexCoord1iv(v)
}

pub fn gl_tex_coord1iv(v voidptr) {
	C.glTexCoord1iv(v)
}

pub fn gl_tex_coord1s(s i16) {
	C.glTexCoord1s(s)
}

pub fn gl_tex_coord1sv(v []i16) {
	C.glTexCoord1sv(v)
}

pub fn gl_tex_coord1sv(v voidptr) {
	C.glTexCoord1sv(v)
}

pub fn gl_tex_coord2d(s f64, t f64) {
	C.glTexCoord2d(s, t)
}

pub fn gl_tex_coord2dv(v []f64) {
	C.glTexCoord2dv(v)
}

pub fn gl_tex_coord2dv(v voidptr) {
	C.glTexCoord2dv(v)
}

pub fn gl_tex_coord2f(s f32, t f32) {
	C.glTexCoord2f(s, t)
}

pub fn gl_tex_coord2fv(v []f32) {
	C.glTexCoord2fv(v)
}

pub fn gl_tex_coord2fv(v voidptr) {
	C.glTexCoord2fv(v)
}

pub fn gl_tex_coord2i(s int, t int) {
	C.glTexCoord2i(s, t)
}

pub fn gl_tex_coord2iv(v []int) {
	C.glTexCoord2iv(v)
}

pub fn gl_tex_coord2iv(v voidptr) {
	C.glTexCoord2iv(v)
}

pub fn gl_tex_coord2s(s i16, t i16) {
	C.glTexCoord2s(s, t)
}

pub fn gl_tex_coord2sv(v []i16) {
	C.glTexCoord2sv(v)
}

pub fn gl_tex_coord2sv(v voidptr) {
	C.glTexCoord2sv(v)
}

pub fn gl_tex_coord3d(s f64, t f64, r f64) {
	C.glTexCoord3d(s, t, r)
}

pub fn gl_tex_coord3dv(v []f64) {
	C.glTexCoord3dv(v)
}

pub fn gl_tex_coord3dv(v voidptr) {
	C.glTexCoord3dv(v)
}

pub fn gl_tex_coord3f(s f32, t f32, r f32) {
	C.glTexCoord3f(s, t, r)
}

pub fn gl_tex_coord3fv(v []f32) {
	C.glTexCoord3fv(v)
}

pub fn gl_tex_coord3fv(v voidptr) {
	C.glTexCoord3fv(v)
}

pub fn gl_tex_coord3i(s int, t int, r int) {
	C.glTexCoord3i(s, t, r)
}

pub fn gl_tex_coord3iv(v []int) {
	C.glTexCoord3iv(v)
}

pub fn gl_tex_coord3iv(v voidptr) {
	C.glTexCoord3iv(v)
}

pub fn gl_tex_coord3s(s i16, t i16, r i16) {
	C.glTexCoord3s(s, t, r)
}

pub fn gl_tex_coord3sv(v []i16) {
	C.glTexCoord3sv(v)
}

pub fn gl_tex_coord3sv(v voidptr) {
	C.glTexCoord3sv(v)
}

pub fn gl_tex_coord4d(s f64, t f64, r f64, q f64) {
	C.glTexCoord4d(s, t, r, q)
}

pub fn gl_tex_coord4dv(v []f64) {
	C.glTexCoord4dv(v)
}

pub fn gl_tex_coord4dv(v voidptr) {
	C.glTexCoord4dv(v)
}

pub fn gl_tex_coord4f(s f32, t f32, r f32, q f32) {
	C.glTexCoord4f(s, t, r, q)
}

pub fn gl_tex_coord4fv(v []f32) {
	C.glTexCoord4fv(v)
}

pub fn gl_tex_coord4fv(v voidptr) {
	C.glTexCoord4fv(v)
}

pub fn gl_tex_coord4i(s int, t int, r int, q int) {
	C.glTexCoord4i(s, t, r, q)
}

pub fn gl_tex_coord4iv(v []int) {
	C.glTexCoord4iv(v)
}

pub fn gl_tex_coord4iv(v voidptr) {
	C.glTexCoord4iv(v)
}

pub fn gl_tex_coord4s(s i16, t i16, r i16, q i16) {
	C.glTexCoord4s(s, t, r, q)
}

pub fn gl_tex_coord4sv(v []i16) {
	C.glTexCoord4sv(v)
}

pub fn gl_tex_coord4sv(v voidptr) {
	C.glTexCoord4sv(v)
}

pub fn gl_tex_coord_pointer(size int, type int, stride int, pointer i64) {
	C.glTexCoordPointer(size, type, stride, pointer)
}

pub fn gl_tex_coord_pointer(size int, type int, stride int, pointer voidptr) {
	C.glTexCoordPointer(size, type, stride, pointer)
}

pub fn gl_tex_coord_pointer(size int, type int, stride int, pointer voidptr) {
	C.glTexCoordPointer(size, type, stride, pointer)
}

pub fn gl_tex_coord_pointer(size int, type int, stride int, pointer voidptr) {
	C.glTexCoordPointer(size, type, stride, pointer)
}

pub fn gl_tex_coord_pointer(size int, type int, stride int, pointer voidptr) {
	C.glTexCoordPointer(size, type, stride, pointer)
}

pub fn gl_tex_envf(target int, pname int, param f32) {
	C.glTexEnvf(target, pname, param)
}

pub fn gl_tex_envfv(target int, pname int, params []f32) {
	C.glTexEnvfv(target, pname, params)
}

pub fn gl_tex_envfv(target int, pname int, params voidptr) {
	C.glTexEnvfv(target, pname, params)
}

pub fn gl_tex_envi(target int, pname int, param int) {
	C.glTexEnvi(target, pname, param)
}

pub fn gl_tex_enviv(target int, pname int, params []int) {
	C.glTexEnviv(target, pname, params)
}

pub fn gl_tex_enviv(target int, pname int, params voidptr) {
	C.glTexEnviv(target, pname, params)
}

pub fn gl_tex_gend(coord int, pname int, param f64) {
	C.glTexGend(coord, pname, param)
}

pub fn gl_tex_gendv(coord int, pname int, params []f64) {
	C.glTexGendv(coord, pname, params)
}

pub fn gl_tex_gendv(coord int, pname int, params voidptr) {
	C.glTexGendv(coord, pname, params)
}

pub fn gl_tex_genf(coord int, pname int, param f32) {
	C.glTexGenf(coord, pname, param)
}

pub fn gl_tex_genfv(coord int, pname int, params []f32) {
	C.glTexGenfv(coord, pname, params)
}

pub fn gl_tex_genfv(coord int, pname int, params voidptr) {
	C.glTexGenfv(coord, pname, params)
}

pub fn gl_tex_geni(coord int, pname int, param int) {
	C.glTexGeni(coord, pname, param)
}

pub fn gl_tex_geniv(coord int, pname int, params []int) {
	C.glTexGeniv(coord, pname, params)
}

pub fn gl_tex_geniv(coord int, pname int, params voidptr) {
	C.glTexGeniv(coord, pname, params)
}

pub fn gl_tex_image1d(target int, level int, internalformat int, width int, border int, format int, type int, pixels []f64) {
	C.glTexImage1D(target, level, internalformat, width, border, format, type, pixels)
}

pub fn gl_tex_image1d(target int, level int, internalformat int, width int, border int, format int, type int, pixels []f32) {
	C.glTexImage1D(target, level, internalformat, width, border, format, type, pixels)
}

pub fn gl_tex_image1d(target int, level int, internalformat int, width int, border int, format int, type int, pixels []int) {
	C.glTexImage1D(target, level, internalformat, width, border, format, type, pixels)
}

pub fn gl_tex_image1d(target int, level int, internalformat int, width int, border int, format int, type int, pixels i64) {
	C.glTexImage1D(target, level, internalformat, width, border, format, type, pixels)
}

pub fn gl_tex_image1d(target int, level int, internalformat int, width int, border int, format int, type int, pixels []i16) {
	C.glTexImage1D(target, level, internalformat, width, border, format, type, pixels)
}

pub fn gl_tex_image1d(target int, level int, internalformat int, width int, border int, format int, type int, pixels voidptr) {
	C.glTexImage1D(target, level, internalformat, width, border, format, type, pixels)
}

pub fn gl_tex_image1d(target int, level int, internalformat int, width int, border int, format int, type int, pixels voidptr) {
	C.glTexImage1D(target, level, internalformat, width, border, format, type, pixels)
}

pub fn gl_tex_image1d(target int, level int, internalformat int, width int, border int, format int, type int, pixels voidptr) {
	C.glTexImage1D(target, level, internalformat, width, border, format, type, pixels)
}

pub fn gl_tex_image1d(target int, level int, internalformat int, width int, border int, format int, type int, pixels voidptr) {
	C.glTexImage1D(target, level, internalformat, width, border, format, type, pixels)
}

pub fn gl_tex_image1d(target int, level int, internalformat int, width int, border int, format int, type int, pixels voidptr) {
	C.glTexImage1D(target, level, internalformat, width, border, format, type, pixels)
}

pub fn gl_tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, type int, pixels []f64) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
}

pub fn gl_tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, type int, pixels []f32) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
}

pub fn gl_tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, type int, pixels []int) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
}

pub fn gl_tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, type int, pixels i64) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
}

pub fn gl_tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, type int, pixels []i16) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
}

pub fn gl_tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, type int, pixels voidptr) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
}

pub fn gl_tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, type int, pixels voidptr) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
}

pub fn gl_tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, type int, pixels voidptr) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
}

pub fn gl_tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, type int, pixels voidptr) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
}

pub fn gl_tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, type int, pixels voidptr) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
}

pub fn gl_tex_parameterf(target int, pname int, param f32) {
	C.glTexParameterf(target, pname, param)
}

pub fn gl_tex_parameterfv(target int, pname int, params []f32) {
	C.glTexParameterfv(target, pname, params)
}

pub fn gl_tex_parameterfv(target int, pname int, params voidptr) {
	C.glTexParameterfv(target, pname, params)
}

pub fn gl_tex_parameteri(target int, pname int, param int) {
	C.glTexParameteri(target, pname, param)
}

pub fn gl_tex_parameteriv(target int, pname int, params []int) {
	C.glTexParameteriv(target, pname, params)
}

pub fn gl_tex_parameteriv(target int, pname int, params voidptr) {
	C.glTexParameteriv(target, pname, params)
}

pub fn gl_tex_sub_image1d(target int, level int, xoffset int, width int, format int, type int, pixels []f64) {
	C.glTexSubImage1D(target, level, xoffset, width, format, type, pixels)
}

pub fn gl_tex_sub_image1d(target int, level int, xoffset int, width int, format int, type int, pixels []f32) {
	C.glTexSubImage1D(target, level, xoffset, width, format, type, pixels)
}

pub fn gl_tex_sub_image1d(target int, level int, xoffset int, width int, format int, type int, pixels []int) {
	C.glTexSubImage1D(target, level, xoffset, width, format, type, pixels)
}

pub fn gl_tex_sub_image1d(target int, level int, xoffset int, width int, format int, type int, pixels i64) {
	C.glTexSubImage1D(target, level, xoffset, width, format, type, pixels)
}

pub fn gl_tex_sub_image1d(target int, level int, xoffset int, width int, format int, type int, pixels []i16) {
	C.glTexSubImage1D(target, level, xoffset, width, format, type, pixels)
}

pub fn gl_tex_sub_image1d(target int, level int, xoffset int, width int, format int, type int, pixels voidptr) {
	C.glTexSubImage1D(target, level, xoffset, width, format, type, pixels)
}

pub fn gl_tex_sub_image1d(target int, level int, xoffset int, width int, format int, type int, pixels voidptr) {
	C.glTexSubImage1D(target, level, xoffset, width, format, type, pixels)
}

pub fn gl_tex_sub_image1d(target int, level int, xoffset int, width int, format int, type int, pixels voidptr) {
	C.glTexSubImage1D(target, level, xoffset, width, format, type, pixels)
}

pub fn gl_tex_sub_image1d(target int, level int, xoffset int, width int, format int, type int, pixels voidptr) {
	C.glTexSubImage1D(target, level, xoffset, width, format, type, pixels)
}

pub fn gl_tex_sub_image1d(target int, level int, xoffset int, width int, format int, type int, pixels voidptr) {
	C.glTexSubImage1D(target, level, xoffset, width, format, type, pixels)
}

pub fn gl_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels []f64) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn gl_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels []f32) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn gl_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels []int) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn gl_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels i64) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn gl_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels []i16) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn gl_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels voidptr) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn gl_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels voidptr) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn gl_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels voidptr) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn gl_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels voidptr) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn gl_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels voidptr) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn gl_translated(x f64, y f64, z f64) {
	C.glTranslated(x, y, z)
}

pub fn gl_translatef(x f32, y f32, z f32) {
	C.glTranslatef(x, y, z)
}

pub fn gl_vertex2d(x f64, y f64) {
	C.glVertex2d(x, y)
}

pub fn gl_vertex2dv(coords []f64) {
	C.glVertex2dv(coords)
}

pub fn gl_vertex2dv(coords voidptr) {
	C.glVertex2dv(coords)
}

pub fn gl_vertex2f(x f32, y f32) {
	C.glVertex2f(x, y)
}

pub fn gl_vertex2fv(coords []f32) {
	C.glVertex2fv(coords)
}

pub fn gl_vertex2fv(coords voidptr) {
	C.glVertex2fv(coords)
}

pub fn gl_vertex2i(x int, y int) {
	C.glVertex2i(x, y)
}

pub fn gl_vertex2iv(coords []int) {
	C.glVertex2iv(coords)
}

pub fn gl_vertex2iv(coords voidptr) {
	C.glVertex2iv(coords)
}

pub fn gl_vertex2s(x i16, y i16) {
	C.glVertex2s(x, y)
}

pub fn gl_vertex2sv(coords []i16) {
	C.glVertex2sv(coords)
}

pub fn gl_vertex2sv(coords voidptr) {
	C.glVertex2sv(coords)
}

pub fn gl_vertex3d(x f64, y f64, z f64) {
	C.glVertex3d(x, y, z)
}

pub fn gl_vertex3dv(coords []f64) {
	C.glVertex3dv(coords)
}

pub fn gl_vertex3dv(coords voidptr) {
	C.glVertex3dv(coords)
}

pub fn gl_vertex3f(x f32, y f32, z f32) {
	C.glVertex3f(x, y, z)
}

pub fn gl_vertex3fv(coords []f32) {
	C.glVertex3fv(coords)
}

pub fn gl_vertex3fv(coords voidptr) {
	C.glVertex3fv(coords)
}

pub fn gl_vertex3i(x int, y int, z int) {
	C.glVertex3i(x, y, z)
}

pub fn gl_vertex3iv(coords []int) {
	C.glVertex3iv(coords)
}

pub fn gl_vertex3iv(coords voidptr) {
	C.glVertex3iv(coords)
}

pub fn gl_vertex3s(x i16, y i16, z i16) {
	C.glVertex3s(x, y, z)
}

pub fn gl_vertex3sv(coords []i16) {
	C.glVertex3sv(coords)
}

pub fn gl_vertex3sv(coords voidptr) {
	C.glVertex3sv(coords)
}

pub fn gl_vertex4d(x f64, y f64, z f64, w f64) {
	C.glVertex4d(x, y, z, w)
}

pub fn gl_vertex4dv(coords []f64) {
	C.glVertex4dv(coords)
}

pub fn gl_vertex4dv(coords voidptr) {
	C.glVertex4dv(coords)
}

pub fn gl_vertex4f(x f32, y f32, z f32, w f32) {
	C.glVertex4f(x, y, z, w)
}

pub fn gl_vertex4fv(coords []f32) {
	C.glVertex4fv(coords)
}

pub fn gl_vertex4fv(coords voidptr) {
	C.glVertex4fv(coords)
}

pub fn gl_vertex4i(x int, y int, z int, w int) {
	C.glVertex4i(x, y, z, w)
}

pub fn gl_vertex4iv(coords []int) {
	C.glVertex4iv(coords)
}

pub fn gl_vertex4iv(coords voidptr) {
	C.glVertex4iv(coords)
}

pub fn gl_vertex4s(x i16, y i16, z i16, w i16) {
	C.glVertex4s(x, y, z, w)
}

pub fn gl_vertex4sv(coords []i16) {
	C.glVertex4sv(coords)
}

pub fn gl_vertex4sv(coords voidptr) {
	C.glVertex4sv(coords)
}

pub fn gl_vertex_pointer(size int, type int, stride int, pointer i64) {
	C.glVertexPointer(size, type, stride, pointer)
}

pub fn gl_vertex_pointer(size int, type int, stride int, pointer voidptr) {
	C.glVertexPointer(size, type, stride, pointer)
}

pub fn gl_vertex_pointer(size int, type int, stride int, pointer voidptr) {
	C.glVertexPointer(size, type, stride, pointer)
}

pub fn gl_vertex_pointer(size int, type int, stride int, pointer voidptr) {
	C.glVertexPointer(size, type, stride, pointer)
}

pub fn gl_vertex_pointer(size int, type int, stride int, pointer voidptr) {
	C.glVertexPointer(size, type, stride, pointer)
}

pub fn gl_viewport(x int, y int, w int, h int) {
	C.glViewport(x, y, w, h)
}

pub fn ngl_are_textures_resident(n int, textures i64, residences i64) bool {
	return C.nglAreTexturesResident(n, textures, residences)
}

pub fn ngl_bitmap(w int, h int, x_orig f32, y_orig f32, x_inc f32, y_inc f32, data i64) {
	C.nglBitmap(w, h, x_orig, y_orig, x_inc, y_inc, data)
}

pub fn ngl_call_lists(n int, type int, lists i64) {
	C.nglCallLists(n, type, lists)
}

pub fn ngl_clip_plane(plane int, equation i64) {
	C.nglClipPlane(plane, equation)
}

pub fn ngl_color3bv(v i64) {
	C.nglColor3bv(v)
}

pub fn ngl_color3dv(v i64) {
	C.nglColor3dv(v)
}

pub fn ngl_color3fv(v i64) {
	C.nglColor3fv(v)
}

pub fn ngl_color3iv(v i64) {
	C.nglColor3iv(v)
}

pub fn ngl_color3sv(v i64) {
	C.nglColor3sv(v)
}

pub fn ngl_color3ubv(v i64) {
	C.nglColor3ubv(v)
}

pub fn ngl_color3uiv(v i64) {
	C.nglColor3uiv(v)
}

pub fn ngl_color3usv(v i64) {
	C.nglColor3usv(v)
}

pub fn ngl_color4bv(v i64) {
	C.nglColor4bv(v)
}

pub fn ngl_color4dv(v i64) {
	C.nglColor4dv(v)
}

pub fn ngl_color4fv(v i64) {
	C.nglColor4fv(v)
}

pub fn ngl_color4iv(v i64) {
	C.nglColor4iv(v)
}

pub fn ngl_color4sv(v i64) {
	C.nglColor4sv(v)
}

pub fn ngl_color4ubv(v i64) {
	C.nglColor4ubv(v)
}

pub fn ngl_color4uiv(v i64) {
	C.nglColor4uiv(v)
}

pub fn ngl_color4usv(v i64) {
	C.nglColor4usv(v)
}

pub fn ngl_color_pointer(size int, type int, stride int, pointer i64) {
	C.nglColorPointer(size, type, stride, pointer)
}

pub fn ngl_delete_textures(n int, textures i64) {
	C.nglDeleteTextures(n, textures)
}

pub fn ngl_draw_elements(mode int, count int, type int, indices i64) {
	C.nglDrawElements(mode, count, type, indices)
}

pub fn ngl_draw_pixels(width int, height int, format int, type int, pixels i64) {
	C.nglDrawPixels(width, height, format, type, pixels)
}

pub fn ngl_edge_flag_pointer(stride int, pointer i64) {
	C.nglEdgeFlagPointer(stride, pointer)
}

pub fn ngl_edge_flagv(flag i64) {
	C.nglEdgeFlagv(flag)
}

pub fn ngl_eval_coord1dv(u i64) {
	C.nglEvalCoord1dv(u)
}

pub fn ngl_eval_coord1fv(u i64) {
	C.nglEvalCoord1fv(u)
}

pub fn ngl_eval_coord2dv(u i64) {
	C.nglEvalCoord2dv(u)
}

pub fn ngl_eval_coord2fv(u i64) {
	C.nglEvalCoord2fv(u)
}

pub fn ngl_feedback_buffer(size int, type int, buffer i64) {
	C.nglFeedbackBuffer(size, type, buffer)
}

pub fn ngl_fogfv(pname int, params i64) {
	C.nglFogfv(pname, params)
}

pub fn ngl_fogiv(pname int, params i64) {
	C.nglFogiv(pname, params)
}

pub fn ngl_gen_textures(n int, textures i64) {
	C.nglGenTextures(n, textures)
}

pub fn ngl_get_booleanv(pname int, params i64) {
	C.nglGetBooleanv(pname, params)
}

pub fn ngl_get_clip_plane(plane int, equation i64) {
	C.nglGetClipPlane(plane, equation)
}

pub fn ngl_get_doublev(pname int, params i64) {
	C.nglGetDoublev(pname, params)
}

pub fn ngl_get_floatv(pname int, params i64) {
	C.nglGetFloatv(pname, params)
}

pub fn ngl_get_integerv(pname int, params i64) {
	C.nglGetIntegerv(pname, params)
}

pub fn ngl_get_lightfv(light int, pname int, data i64) {
	C.nglGetLightfv(light, pname, data)
}

pub fn ngl_get_lightiv(light int, pname int, data i64) {
	C.nglGetLightiv(light, pname, data)
}

pub fn ngl_get_mapdv(target int, query int, data i64) {
	C.nglGetMapdv(target, query, data)
}

pub fn ngl_get_mapfv(target int, query int, data i64) {
	C.nglGetMapfv(target, query, data)
}

pub fn ngl_get_mapiv(target int, query int, data i64) {
	C.nglGetMapiv(target, query, data)
}

pub fn ngl_get_materialfv(face int, pname int, data i64) {
	C.nglGetMaterialfv(face, pname, data)
}

pub fn ngl_get_materialiv(face int, pname int, data i64) {
	C.nglGetMaterialiv(face, pname, data)
}

pub fn ngl_get_pixel_mapfv(map int, data i64) {
	C.nglGetPixelMapfv(map, data)
}

pub fn ngl_get_pixel_mapuiv(map int, data i64) {
	C.nglGetPixelMapuiv(map, data)
}

pub fn ngl_get_pixel_mapusv(map int, data i64) {
	C.nglGetPixelMapusv(map, data)
}

pub fn ngl_get_pointerv(pname int, params i64) {
	C.nglGetPointerv(pname, params)
}

pub fn ngl_get_polygon_stipple(pattern i64) {
	C.nglGetPolygonStipple(pattern)
}

pub fn ngl_get_string(name int) i64 {
	return C.nglGetString(name)
}

pub fn ngl_get_tex_envfv(env int, pname int, data i64) {
	C.nglGetTexEnvfv(env, pname, data)
}

pub fn ngl_get_tex_enviv(env int, pname int, data i64) {
	C.nglGetTexEnviv(env, pname, data)
}

pub fn ngl_get_tex_gendv(coord int, pname int, data i64) {
	C.nglGetTexGendv(coord, pname, data)
}

pub fn ngl_get_tex_genfv(coord int, pname int, data i64) {
	C.nglGetTexGenfv(coord, pname, data)
}

pub fn ngl_get_tex_geniv(coord int, pname int, data i64) {
	C.nglGetTexGeniv(coord, pname, data)
}

pub fn ngl_get_tex_image(tex int, level int, format int, type int, pixels i64) {
	C.nglGetTexImage(tex, level, format, type, pixels)
}

pub fn ngl_get_tex_level_parameterfv(target int, level int, pname int, params i64) {
	C.nglGetTexLevelParameterfv(target, level, pname, params)
}

pub fn ngl_get_tex_level_parameteriv(target int, level int, pname int, params i64) {
	C.nglGetTexLevelParameteriv(target, level, pname, params)
}

pub fn ngl_get_tex_parameterfv(target int, pname int, params i64) {
	C.nglGetTexParameterfv(target, pname, params)
}

pub fn ngl_get_tex_parameteriv(target int, pname int, params i64) {
	C.nglGetTexParameteriv(target, pname, params)
}

pub fn ngl_indexdv(index i64) {
	C.nglIndexdv(index)
}

pub fn ngl_indexfv(index i64) {
	C.nglIndexfv(index)
}

pub fn ngl_indexiv(index i64) {
	C.nglIndexiv(index)
}

pub fn ngl_index_pointer(type int, stride int, pointer i64) {
	C.nglIndexPointer(type, stride, pointer)
}

pub fn ngl_indexsv(index i64) {
	C.nglIndexsv(index)
}

pub fn ngl_indexubv(index i64) {
	C.nglIndexubv(index)
}

pub fn ngl_interleaved_arrays(format int, stride int, pointer i64) {
	C.nglInterleavedArrays(format, stride, pointer)
}

pub fn ngl_lightfv(light int, pname int, params i64) {
	C.nglLightfv(light, pname, params)
}

pub fn ngl_lightiv(light int, pname int, params i64) {
	C.nglLightiv(light, pname, params)
}

pub fn ngl_light_modelfv(pname int, params i64) {
	C.nglLightModelfv(pname, params)
}

pub fn ngl_light_modeliv(pname int, params i64) {
	C.nglLightModeliv(pname, params)
}

pub fn ngl_load_matrixd(m i64) {
	C.nglLoadMatrixd(m)
}

pub fn ngl_load_matrixf(m i64) {
	C.nglLoadMatrixf(m)
}

pub fn ngl_map1d(target int, u1 f64, u2 f64, stride int, order int, points i64) {
	C.nglMap1d(target, u1, u2, stride, order, points)
}

pub fn ngl_map1f(target int, u1 f32, u2 f32, stride int, order int, points i64) {
	C.nglMap1f(target, u1, u2, stride, order, points)
}

pub fn ngl_map2d(target int, u1 f64, u2 f64, ustride int, uorder int, v1 f64, v2 f64, vstride int, vorder int, points i64) {
	C.nglMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points)
}

pub fn ngl_map2f(target int, u1 f32, u2 f32, ustride int, uorder int, v1 f32, v2 f32, vstride int, vorder int, points i64) {
	C.nglMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points)
}

pub fn ngl_materialfv(face int, pname int, params i64) {
	C.nglMaterialfv(face, pname, params)
}

pub fn ngl_materialiv(face int, pname int, params i64) {
	C.nglMaterialiv(face, pname, params)
}

pub fn ngl_mult_matrixd(m i64) {
	C.nglMultMatrixd(m)
}

pub fn ngl_mult_matrixf(m i64) {
	C.nglMultMatrixf(m)
}

pub fn ngl_normal3bv(v i64) {
	C.nglNormal3bv(v)
}

pub fn ngl_normal3dv(v i64) {
	C.nglNormal3dv(v)
}

pub fn ngl_normal3fv(v i64) {
	C.nglNormal3fv(v)
}

pub fn ngl_normal3iv(v i64) {
	C.nglNormal3iv(v)
}

pub fn ngl_normal3sv(v i64) {
	C.nglNormal3sv(v)
}

pub fn ngl_normal_pointer(type int, stride int, pointer i64) {
	C.nglNormalPointer(type, stride, pointer)
}

pub fn ngl_pixel_mapfv(map int, size int, values i64) {
	C.nglPixelMapfv(map, size, values)
}

pub fn ngl_pixel_mapuiv(map int, size int, values i64) {
	C.nglPixelMapuiv(map, size, values)
}

pub fn ngl_pixel_mapusv(map int, size int, values i64) {
	C.nglPixelMapusv(map, size, values)
}

pub fn ngl_polygon_stipple(pattern i64) {
	C.nglPolygonStipple(pattern)
}

pub fn ngl_prioritize_textures(n int, textures i64, priorities i64) {
	C.nglPrioritizeTextures(n, textures, priorities)
}

pub fn ngl_raster_pos2dv(coords i64) {
	C.nglRasterPos2dv(coords)
}

pub fn ngl_raster_pos2fv(coords i64) {
	C.nglRasterPos2fv(coords)
}

pub fn ngl_raster_pos2iv(coords i64) {
	C.nglRasterPos2iv(coords)
}

pub fn ngl_raster_pos2sv(coords i64) {
	C.nglRasterPos2sv(coords)
}

pub fn ngl_raster_pos3dv(coords i64) {
	C.nglRasterPos3dv(coords)
}

pub fn ngl_raster_pos3fv(coords i64) {
	C.nglRasterPos3fv(coords)
}

pub fn ngl_raster_pos3iv(coords i64) {
	C.nglRasterPos3iv(coords)
}

pub fn ngl_raster_pos3sv(coords i64) {
	C.nglRasterPos3sv(coords)
}

pub fn ngl_raster_pos4dv(coords i64) {
	C.nglRasterPos4dv(coords)
}

pub fn ngl_raster_pos4fv(coords i64) {
	C.nglRasterPos4fv(coords)
}

pub fn ngl_raster_pos4iv(coords i64) {
	C.nglRasterPos4iv(coords)
}

pub fn ngl_raster_pos4sv(coords i64) {
	C.nglRasterPos4sv(coords)
}

pub fn ngl_read_pixels(x int, y int, width int, height int, format int, type int, pixels i64) {
	C.nglReadPixels(x, y, width, height, format, type, pixels)
}

pub fn ngl_rectdv(v1 i64, v2 i64) {
	C.nglRectdv(v1, v2)
}

pub fn ngl_rectfv(v1 i64, v2 i64) {
	C.nglRectfv(v1, v2)
}

pub fn ngl_rectiv(v1 i64, v2 i64) {
	C.nglRectiv(v1, v2)
}

pub fn ngl_rectsv(v1 i64, v2 i64) {
	C.nglRectsv(v1, v2)
}

pub fn ngl_select_buffer(size int, buffer i64) {
	C.nglSelectBuffer(size, buffer)
}

pub fn ngl_tex_coord1dv(v i64) {
	C.nglTexCoord1dv(v)
}

pub fn ngl_tex_coord1fv(v i64) {
	C.nglTexCoord1fv(v)
}

pub fn ngl_tex_coord1iv(v i64) {
	C.nglTexCoord1iv(v)
}

pub fn ngl_tex_coord1sv(v i64) {
	C.nglTexCoord1sv(v)
}

pub fn ngl_tex_coord2dv(v i64) {
	C.nglTexCoord2dv(v)
}

pub fn ngl_tex_coord2fv(v i64) {
	C.nglTexCoord2fv(v)
}

pub fn ngl_tex_coord2iv(v i64) {
	C.nglTexCoord2iv(v)
}

pub fn ngl_tex_coord2sv(v i64) {
	C.nglTexCoord2sv(v)
}

pub fn ngl_tex_coord3dv(v i64) {
	C.nglTexCoord3dv(v)
}

pub fn ngl_tex_coord3fv(v i64) {
	C.nglTexCoord3fv(v)
}

pub fn ngl_tex_coord3iv(v i64) {
	C.nglTexCoord3iv(v)
}

pub fn ngl_tex_coord3sv(v i64) {
	C.nglTexCoord3sv(v)
}

pub fn ngl_tex_coord4dv(v i64) {
	C.nglTexCoord4dv(v)
}

pub fn ngl_tex_coord4fv(v i64) {
	C.nglTexCoord4fv(v)
}

pub fn ngl_tex_coord4iv(v i64) {
	C.nglTexCoord4iv(v)
}

pub fn ngl_tex_coord4sv(v i64) {
	C.nglTexCoord4sv(v)
}

pub fn ngl_tex_coord_pointer(size int, type int, stride int, pointer i64) {
	C.nglTexCoordPointer(size, type, stride, pointer)
}

pub fn ngl_tex_envfv(target int, pname int, params i64) {
	C.nglTexEnvfv(target, pname, params)
}

pub fn ngl_tex_enviv(target int, pname int, params i64) {
	C.nglTexEnviv(target, pname, params)
}

pub fn ngl_tex_gendv(coord int, pname int, params i64) {
	C.nglTexGendv(coord, pname, params)
}

pub fn ngl_tex_genfv(coord int, pname int, params i64) {
	C.nglTexGenfv(coord, pname, params)
}

pub fn ngl_tex_geniv(coord int, pname int, params i64) {
	C.nglTexGeniv(coord, pname, params)
}

pub fn ngl_tex_image1d(target int, level int, internalformat int, width int, border int, format int, type int, pixels i64) {
	C.nglTexImage1D(target, level, internalformat, width, border, format, type, pixels)
}

pub fn ngl_tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, type int, pixels i64) {
	C.nglTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
}

pub fn ngl_tex_parameterfv(target int, pname int, params i64) {
	C.nglTexParameterfv(target, pname, params)
}

pub fn ngl_tex_parameteriv(target int, pname int, params i64) {
	C.nglTexParameteriv(target, pname, params)
}

pub fn ngl_tex_sub_image1d(target int, level int, xoffset int, width int, format int, type int, pixels i64) {
	C.nglTexSubImage1D(target, level, xoffset, width, format, type, pixels)
}

pub fn ngl_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels i64) {
	C.nglTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn ngl_vertex2dv(coords i64) {
	C.nglVertex2dv(coords)
}

pub fn ngl_vertex2fv(coords i64) {
	C.nglVertex2fv(coords)
}

pub fn ngl_vertex2iv(coords i64) {
	C.nglVertex2iv(coords)
}

pub fn ngl_vertex2sv(coords i64) {
	C.nglVertex2sv(coords)
}

pub fn ngl_vertex3dv(coords i64) {
	C.nglVertex3dv(coords)
}

pub fn ngl_vertex3fv(coords i64) {
	C.nglVertex3fv(coords)
}

pub fn ngl_vertex3iv(coords i64) {
	C.nglVertex3iv(coords)
}

pub fn ngl_vertex3sv(coords i64) {
	C.nglVertex3sv(coords)
}

pub fn ngl_vertex4dv(coords i64) {
	C.nglVertex4dv(coords)
}

pub fn ngl_vertex4fv(coords i64) {
	C.nglVertex4fv(coords)
}

pub fn ngl_vertex4iv(coords i64) {
	C.nglVertex4iv(coords)
}

pub fn ngl_vertex4sv(coords i64) {
	C.nglVertex4sv(coords)
}

pub fn ngl_vertex_pointer(size int, type int, stride int, pointer i64) {
	C.nglVertexPointer(size, type, stride, pointer)
}
