module gl11

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

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

pub fn init_glad() int {
	return C.gladLoadGL()
}

pub fn accum(op int, value f32) {
	C.glAccum(op, value)
}

pub fn alpha_func(func int, ref f32) {
	C.glAlphaFunc(func, ref)
}

// TODO
pub fn are_textures_resident(n int, textures []u32, residences *bool) bool {
	return C.glAreTexturesResident(n, textures.data, &residences)
}

pub fn array_element(i int) {
	C.glArrayElement(i)
}

pub fn begin(mode int) {
	C.glBegin(mode)
}

pub fn bind_texture(target int, texture int) {
	C.glBindTexture(target, texture)
}

// TODO
pub fn bitmap(width int, height int, xorig f32, yorig f32, xmove f32, ymove f32, data voidptr) {
	C.glBitmap(width, height, xorig, yorig, xmove, ymove, data)
}

pub fn blend_func(sfactor int, dfactor int) {
	C.glBlendFunc(sfactor, dfactor)
}

pub fn call_list(list int) {
	C.glCallList(list)
}

// TODO
pub fn call_lists(n int, typ int, lists voidptr) {
	C.glCallLists(n, typ, lists)
}

pub fn clear(mask int) {
	C.glClear(mask)
}

pub fn clear_accum(red f32, green f32, blue f32, alpha f32) {
	C.glClearAccum(red, green, blue, alpha)
}

pub fn clear_color(red f32, green f32, blue f32, alpha f32) {
	C.glClearColor(red, green, blue, alpha)
}

pub fn clear_depth(depth f64) {
	C.glClearDepth(depth)
}

pub fn clear_index(index f32) {
	C.glClearIndex(index)
}

pub fn clear_stencil(s int) {
	C.glClearStencil(s)
}

pub fn clip_plane(plane int, equation []f64) {
	C.glClipPlane(plane, equation.data)
}

pub fn color3b(red byte, green byte, blue byte) {
	C.glColor3b(red, green, blue)
}

pub fn color3bv(v []i8) {
	C.glColor3bv(v.data)
}

pub fn color3d(red f64, green f64, blue f64) {
	C.glColor3d(red, green, blue)
}

pub fn color3dv(v []f64) {
	C.glColor3dv(v.data)
}

pub fn color3f(red f32, green f32, blue f32) {
	C.glColor3f(red, green, blue)
}

pub fn color3fv(v []f32) {
	C.glColor3fv(v.data)
}

pub fn color3i(red int, green int, blue int) {
	C.glColor3i(red, green, blue)
}

pub fn color3iv(v []int) {
	C.glColor3iv(v.data)
}

pub fn color3s(red i16, green i16, blue i16) {
	C.glColor3s(red, green, blue)
}

pub fn color3sv(v []i16) {
	C.glColor3sv(v.data)
}

pub fn color3ub(red byte, green byte, blue byte) {
	C.glColor3ub(red, green, blue)
}

pub fn color3ubv(v []u8) {
	C.glColor3ubv(v.data)
}

pub fn color3ui(red int, green int, blue int) {
	C.glColor3ui(red, green, blue)
}

pub fn color3uiv(v []u32) {
	C.glColor3uiv(v.data)
}

pub fn color3us(red i16, green i16, blue i16) {
	C.glColor3us(red, green, blue)
}

pub fn color3usv(v []i16) {
	C.glColor3usv(v.data)
}

pub fn color4b(red byte, green byte, blue byte, alpha byte) {
	C.glColor4b(red, green, blue, alpha)
}

pub fn color4bv(v []u8) {
	C.glColor3bv(v.data)
}

pub fn color4d(red f64, green f64, blue f64, alpha f64) {
	C.glColor4d(red, green, blue, alpha)
}

pub fn color4dv(v []f64) {
	C.glColor4dv(v.data)
}

pub fn color4f(red f32, green f32, blue f32, alpha f32) {
	C.glColor4f(red, green, blue, alpha)
}

pub fn color4fv(v []f32) {
	C.glColor4fv(v.data)
}

pub fn color4i(red int, green int, blue int, alpha int) {
	C.glColor4i(red, green, blue, alpha)
}

pub fn color4iv(v []int) {
	C.glColor4iv(v.data)
}

pub fn color4s(red i16, green i16, blue i16, alpha i16) {
	C.glColor4s(red, green, blue, alpha)
}

pub fn color4sv(v []i16) {
	C.glColor4sv(v.data)
}

pub fn color4ub(red byte, green byte, blue byte, alpha byte) {
	C.glColor4ub(red, green, blue, alpha)
}

pub fn color4ubv(v []u8) {
	C.glColor4ubv(v.data)
}

pub fn color4ui(red int, green int, blue int, alpha int) {
	C.glColor4ui(red, green, blue, alpha)
}

pub fn color4uiv(v []int) {
	C.glColor4uiv(v.data)
}

pub fn color4us(red i16, green i16, blue i16, alpha i16) {
	C.glColor4us(red, green, blue, alpha)
}

pub fn color4usv(v []i16) {
	C.glColor4usv(v.data)
}

pub fn color_mask(red bool, green bool, blue bool, alpha bool) {
	C.glColorMask(red, green, blue, alpha)
}

pub fn color_material(face int, mode int) {
	C.glColorMaterial(face, mode)
}

pub fn color_pointer(size int, typ int, stride int, pointer voidptr) {
	C.glColorPointer(size, typ, stride, pointer)
}

pub fn copy_pixels(x int, y int, width int, height int, typ int) {
	C.glCopyPixels(x, y, width, height, typ)
}

pub fn copy_tex_image1d(target int, level int, internal_format int, x int, y int, width int, border int) {
	C.glCopyTexImage1D(target, level, internal_format, x, y, width, border)
}

pub fn copy_tex_image2d(target int, level int, internal_format int, x int, y int, width int, height int, border int) {
	C.glCopyTexImage2D(target, level, internal_format, x, y, width, height, border)
}

pub fn copy_tex_sub_image1d(target int, level int, xoffset int, x int, y int, width int) {
	C.glCopyTexSubImage1D(target, level, xoffset, x, y, width)
}

pub fn copy_tex_sub_image2d(target int, level int, xoffset int, yoffset int, x int, y int, width int, height int) {
	C.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
}

pub fn cull_face(mode int) {
	C.glCullFace(mode)
}

pub fn delete_lists(list int, range int) {
	C.glDeleteLists(list, range)
}

pub fn delete_textures(textures []u32) {
	C.glDeleteTextures(textures.len, textures.data)
}

pub fn depth_func(func int) {
	C.glDepthFunc(func)
}

pub fn depth_mask(flag bool) {
	C.glDepthMask(flag)
}

pub fn depth_range(z_near f64, z_far f64) {
	C.glDepthRange(z_near, z_far)
}

pub fn disable(target int) {
	C.glDisable(target)
}

pub fn disable_client_state(cap int) {
	C.glDisableClientState(cap)
}

pub fn draw_arrays(mode int, first int, count int) {
	C.glDrawArrays(mode, first, count)
}

pub fn draw_buffer(buf int) {
	C.glDrawBuffer(buf)
}

pub fn draw_elements(mode int, count int, typ int, indices voidptr) {
	C.glDrawElements(mode, count, typ, indices)
}

pub fn draw_pixels(width int, height int, format int, typ int, pixels voidptr) {
	C.glDrawPixels(width, height, format, typ, pixels)
}

pub fn edge_flag(flag bool) {
	C.glEdgeFlag(flag)
}

pub fn edge_flag_pointer(stride int, pointer voidptr) {
	C.glEdgeFlagPointer(stride, pointer)
}

pub fn edge_flagv(flag voidptr) {
	C.glEdgeFlagv(flag)
}

pub fn enable(target int) {
	C.glEnable(target)
}

pub fn enable_client_state(cap int) {
	C.glEnableClientState(cap)
}

pub fn end() {
	C.glEnd()
}

pub fn end_list() {
	C.glEndList()
}

pub fn eval_coord1d(u f64) {
	C.glEvalCoord1d(u)
}

pub fn eval_coord1dv(u []f64) {
	C.glEvalCoord1dv(u.data)
}

pub fn eval_coord1f(u f32) {
	C.glEvalCoord1f(u)
}

pub fn eval_coord1fv(u []f32) {
	C.glEvalCoord1fv(u.data)
}

pub fn eval_coord2d(u f64, v f64) {
	C.glEvalCoord2d(u, v)
}

pub fn eval_coord2dv(u []f64) {
	C.glEvalCoord2dv(u.data)
}

pub fn eval_coord2f(u f32, v f32) {
	C.glEvalCoord2f(u, v)
}

pub fn eval_coord2fv(u []f32) {
	C.glEvalCoord2fv(u.data)
}

pub fn eval_mesh1(mode int, i1 int, i2 int) {
	C.glEvalMesh1(mode, i1, i2)
}

pub fn eval_mesh2(mode int, i1 int, i2 int, j1 int, j2 int) {
	C.glEvalMesh2(mode, i1, i2, j1, j2)
}

pub fn eval_point1(i int) {
	C.glEvalPoint1(i)
}

pub fn eval_point2(i int, j int) {
	C.glEvalPoint2(i, j)
}

pub fn feedback_buffer(size int, typ int) []f32 {
	buffer := [f32(0); size]
	C.glFeedbackBuffer(size, typ, buffer.data)
	return buffer
}

pub fn finish() {
	C.glFinish()
}

pub fn flush() {
	C.glFlush()
}

pub fn fogf(pname int, param f32) {
	C.glFogf(pname, param)
}

pub fn fogfv(pname int, params []f32) {
	C.glFogfv(pname, params.data)
}

pub fn fogi(pname int, param int) {
	C.glFogi(pname, param)
}

pub fn fogiv(pname int, params []int) {
	C.glFogiv(pname, params.data)
}

pub fn front_face(dir int) {
	C.glFrontFace(dir)
}

pub fn frustum(l f64, r f64, b f64, t f64, n f64, f f64) {
	C.glFrustum(l, r, b, t, n, f)
}

pub fn gen_lists(s int) int {
	return C.glGenLists(s)
}

// TODO
pub fn gen_textures(n int) []u32 {
	textures := [u32(0); n]
	C.glGenTextures(n, textures.data)
	return textures
}

// TODO
pub fn get_booleanv(pname int, params voidptr) {
	C.glGetBooleanv(pname, params)
}

pub fn get_clip_plane(plane int) []f64 {
	equation := [f64(0), f64(0), f64(0), f64(0)]
	C.glGetClipPlane(plane, equation.data)
	return equation
}

// TODO
pub fn get_doublev(pname int, params voidptr) {
	C.glGetBooleanv(pname, params)
}


pub fn get_error() int {
	return C.glGetError()
}

// TODO
pub fn get_floatv(pname int, params voidptr) {
	C.glGetFloatv(pname, params)
}

// TODO
pub fn get_integerv(pname int, params voidptr) {
	C.glGetIntegerv(pname, params)
}

// TODO
pub fn get_lightfv(light int, pname int, data voidptr) {
	C.glGetLightfv(light, pname, data)
}

// TODO
pub fn get_lightiv(light int, pname int, data voidptr) {
	C.glGetLightiv(light, pname, data)
}

// TODO
pub fn get_mapdv(target int, query int, data voidptr) {
	C.glGetMapdv(target, query, data)
}

// TODO
pub fn get_mapfv(target int, query int, data voidptr) {
	C.glGetMapfv(target, query, data)
}

// TODO
pub fn get_mapiv(target int, query int, data voidptr) {
	C.glGetMapiv(target, query, data)
}

// TODO
pub fn get_materialfv(face int, pname int, data voidptr) {
	C.glGetMaterialfv(face, pname, data)
}

// TODO
pub fn get_materialiv(face int, pname int, data voidptr) {
	C.glGetMaterialiv(face, pname, data)
}

// TODO
pub fn get_pixel_mapfv(map int, data voidptr) {
	C.glGetPixelMapfv(map, data)
}

// TODO
pub fn get_pixel_mapuiv(map int, data voidptr) {
	C.glGetPixelMapuiv(map, data)
}

// TODO
pub fn get_pixel_mapusv(map int, data voidptr) {
	C.glGetPixelMapusv(map, data)
}

// TODO
pub fn get_pointerv(pname int, params *voidptr) {
	C.glGetPointerv(pname, params)
}

// TODO
pub fn get_polygon_stipple(pattern voidptr) {
	C.glGetPolygonStipple(pattern)
}

pub fn get_string(name int) string {
	ret := C.glGetString(name)
	return tos(ret, strlen(ret))
}

// TODO
pub fn get_tex_envfv(env int, pname int, data voidptr) {
	C.glGetTexEnvfv(env, pname, data)
}

// TODO
pub fn get_tex_enviv(env int, pname int, data voidptr) {
	C.glGetTexEnviv(env, pname, data)
}

// TODO
pub fn get_tex_gendv(coord int, pname int, data voidptr) {
	C.glGetTexGendv(coord, pname, data)
}

// TODO
pub fn get_tex_genfv(coord int, pname int, data voidptr) {
	C.glGetTexGenfv(coord, pname, data)
}

// TODO
pub fn get_tex_geniv(coord int, pname int, data voidptr) {
	C.glGetTexGeniv(coord, pname, data)
}

pub fn get_tex_image(tex int, level int, format int, typ int, pixels voidptr) {
	C.glGetTexImage(tex, level, format, typ, pixels)
}

// TODO
pub fn get_tex_level_parameterfv(target int, level int, pname int, params voidptr) {
	C.glGetTexLevelParameterfv(target, level, pname, params)
}

// TODO
pub fn get_tex_level_parameteriv(target int, level int, pname int, params voidptr) {
	C.glGetTexLevelParameteriv(target, level, pname, params)
}

// TODO
pub fn get_tex_parameterfv(target int, pname int, params voidptr) {
	C.glGetTexParameterfv(target, pname, params)
}

// TODO
pub fn get_tex_parameteriv(target int, pname int, params voidptr) {
	C.glGetTexParameteriv(target, pname, params)
}

pub fn hint(target int, hint int) {
	C.glHint(target, hint)
}

pub fn indexd(index f64) {
	C.glIndexd(index)
}

// TODO
pub fn indexdv(index voidptr) {
	C.glIndexdv(index)
}

pub fn indexf(index f32) {
	C.glIndexf(index)
}

// TODO
pub fn indexfv(index voidptr) {
	C.glIndexfv(index)
}

pub fn indexi(index int) {
	C.glIndexi(index)
}

// TODO
pub fn indexiv(index voidptr) {
	C.glIndexiv(index)
}

pub fn index_mask(mask int) {
	C.glIndexMask(mask)
}

// TODO
pub fn index_pointer(typ int, stride int, pointer voidptr) {
	C.glIndexPointer(typ, stride, pointer)
}

pub fn indexs(index i16) {
	C.glIndexs(index)
}

// TODO
pub fn indexsv(index voidptr) {
	C.glIndexsv(index)
}

pub fn indexub(index byte) {
	C.glIndexub(index)
}

// TODO
pub fn indexubv(index voidptr) {
	C.glIndexubv(index)
}

pub fn init_names() {
	C.glInitNames()
}

// TODO
pub fn interleaved_arrays(format int, stride int, pointer voidptr) {
	C.glInterleavedArrays(format, stride, pointer)
}

pub fn is_enabled(cap int) bool {
	return C.glIsEnabled(cap)
}

pub fn is_list(list int) bool {
	return C.glIsList(list)
}

pub fn is_texture(texture int) bool {
	return C.glIsTexture(texture)
}

pub fn lightf(light int, pname int, param f32) {
	C.glLightf(light, pname, param)
}

// TODO
pub fn lightfv(light int, pname int, params voidptr) {
	C.glLightfv(light, pname, params)
}

pub fn lighti(light int, pname int, param int) {
	C.glLighti(light, pname, param)
}

// TODO
pub fn lightiv(light int, pname int, params voidptr) {
	C.glLightiv(light, pname, params)
}

pub fn light_modelf(pname int, param f32) {
	C.glLightModelf(pname, param)
}

// TODO
pub fn light_modelfv(pname int, params voidptr) {
	C.glLightModelfv(pname, params)
}

pub fn light_modeli(pname int, param int) {
	C.glLightModeli(pname, param)
}

// TODO
pub fn light_modeliv(pname int, params voidptr) {
	C.glLightModeliv(pname, params)
}

pub fn line_stipple(factor int, pattern i16) {
	C.glLineStipple(factor, pattern)
}

pub fn line_width(width f32) {
	C.glLineWidth(width)
}

pub fn list_base(base int) {
	C.glListBase(base)
}

pub fn load_identity() {
	C.glLoadIdentity()
}

pub fn load_matrixd(m []f64) {
	C.glLoadMatrixd(m.data)
}

pub fn load_matrixf(m []f32) {
	C.glLoadMatrixf(m.data)
}

pub fn load_name(name int) {
	C.glLoadName(name)
}

pub fn logic_op(op int) {
	C.glLogicOp(op)
}

pub fn map1d(target int, u1 f64, u2 f64, stride int, order int, points []f64) {
	C.glMap1d(target, u1, u2, stride, order, points.data)
}

pub fn map1f(target int, u1 f32, u2 f32, stride int, order int, points []f32) {
	C.glMap1f(target, u1, u2, stride, order, points.data)
}

pub fn map2d(target int, u1 f64, u2 f64, ustride int, uorder int, v1 f64, v2 f64, vstride int, vorder int, points []f64) {
	C.glMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points.data)
}

pub fn map2f(target int, u1 f32, u2 f32, ustride int, uorder int, v1 f32, v2 f32, vstride int, vorder int, points []f32) {
	C.glMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points.data)
}

pub fn map_grid1d(n int, u1 f64, u2 f64) {
	C.glMapGrid1d(n, u1, u2)
}

pub fn map_grid1f(n int, u1 f32, u2 f32) {
	C.glMapGrid1f(n, u1, u2)
}

pub fn map_grid2d(un int, u1 f64, u2 f64, vn int, v1 f64, v2 f64) {
	C.glMapGrid2d(un, u1, u2, vn, v1, v2)
}

pub fn map_grid2f(un int, u1 f32, u2 f32, vn int, v1 f32, v2 f32) {
	C.glMapGrid2f(un, u1, u2, vn, v1, v2)
}

pub fn materialf(face int, pname int, param f32) {
	C.glMaterialf(face, pname, param)
}

pub fn materialfv(face int, pname int, params []f32) {
	C.glMaterialfv(face, pname, params.data)
}

pub fn materiali(face int, pname int, param int) {
	C.glMateriali(face, pname, param)
}

pub fn materialiv(face int, pname int, params []int) {
	C.glMaterialiv(face, pname, params.data)
}

pub fn matrix_mode(mode int) {
	C.glMatrixMode(mode)
}

pub fn mult_matrixd(m []f64) {
	C.glMultMatrixd(m.data)
}

pub fn mult_matrixf(m []f32) {
	C.glMultMatrixf(m.data)
}

pub fn new_list(n int, mode int) {
	C.glNewList(n, mode)
}

pub fn normal3b(nx byte, ny byte, nz byte) {
	C.glNormal3b(nx, ny, nz)
}

pub fn normal3bv(v []i8) {
	C.glNormal3bv(v.data)
}

pub fn normal3d(nx f64, ny f64, nz f64) {
	C.glNormal3d(nx, ny, nz)
}

pub fn normal3dv(v []f64) {
	C.glNormal3dv(v.data)
}

pub fn normal3f(nx f32, ny f32, nz f32) {
	C.glNormal3f(nx, ny, nz)
}

pub fn normal3fv(v []f32) {
	C.glNormal3fv(v.data)
}

pub fn normal3i(nx int, ny int, nz int) {
	C.glNormal3i(nx, ny, nz)
}

pub fn normal3iv(v []int) {
	C.glNormal3iv(v.data)
}

pub fn normal3s(nx i16, ny i16, nz i16) {
	C.glNormal3s(nx, ny, nz)
}

pub fn normal3sv(v []i16) {
	C.glNormal3sv(v.data)
}

// TODO
pub fn normal_pointer(typ int, stride int, pointer voidptr) {
	C.glNormalPointer(typ, stride, pointer)
}

pub fn ortho(l f64, r f64, b f64, t f64, n f64, f f64) {
	C.glOrtho(l, r, b, t, n, f)
}

pub fn pass_through(token f32) {
	C.glPassThrough(token)
}

pub fn pixel_mapfv(map int, values []f32) {
	C.glPixelMapfv(map, values.len, values.data)
}

pub fn pixel_mapuiv(map int, values []u32) {
	C.glPixelMapuiv(map, values.len, values.data)
}

pub fn pixel_mapusv(map int, values []u16) {
	C.glPixelMapusv(map, values.len, values.data)
}

pub fn pixel_storef(pname int, param f32) {
	C.glPixelStoref(pname, param)
}

pub fn pixel_storei(pname int, param int) {
	C.glPixelStorei(pname, param)
}

pub fn pixel_transferf(pname int, param f32) {
	C.glPixelTransferf(pname, param)
}

pub fn pixel_transferi(pname int, param int) {
	C.glPixelTransferi(pname, param)
}

pub fn pixel_zoom(xfactor f32, yfactor f32) {
	C.glPixelZoom(xfactor, yfactor)
}

pub fn point_size(size f32) {
	C.glPointSize(size)
}

pub fn polygon_mode(face int, mode int) {
	C.glPolygonMode(face, mode)
}

pub fn polygon_offset(factor f32, units f32) {
	C.glPolygonOffset(factor, units)
}

pub fn polygon_stipple(pattern u8) {
	C.glPolygonStipple(pattern)
}

pub fn pop_attrib() {
	C.glPopAttrib()
}

pub fn pop_client_attrib() {
	C.glPopClientAttrib()
}

pub fn pop_matrix() {
	C.glPopMatrix()
}

pub fn pop_name() {
	C.glPopName()
}

// TODO
pub fn prioritize_textures(textures []u32, priorities voidptr) {
	C.glPrioritizeTextures(textures.len, textures.data, priorities)
}

pub fn push_attrib(mask int) {
	C.glPushAttrib(mask)
}

pub fn push_client_attrib(mask int) {
	C.glPushClientAttrib(mask)
}

pub fn push_matrix() {
	C.glPushMatrix()
}

pub fn push_name(name int) {
	C.glPushName(name)
}

pub fn raster_pos2d(x f64, y f64) {
	C.glRasterPos2d(x, y)
}

//pub fn raster_pos2dv(coords []f64) {
//	C.glRasterPos2dv(coords)
//}

pub fn raster_pos2dv(coords voidptr) {
	C.glRasterPos2dv(coords)
}

pub fn raster_pos2f(x f32, y f32) {
	C.glRasterPos2f(x, y)
}

pub fn raster_pos2fv(v []f32) {
	C.glRasterPos2fv(v.data)
}

pub fn raster_pos2i(x int, y int) {
	C.glRasterPos2i(x, y)
}

pub fn raster_pos2iv(v []int) {
	C.glRasterPos2iv(v.data)
}

pub fn raster_pos2s(x i16, y i16) {
	C.glRasterPos2s(x, y)
}

pub fn raster_pos2sv(v []i16) {
	C.glRasterPos2sv(v.data)
}

pub fn raster_pos3d(x f64, y f64, z f64) {
	C.glRasterPos3d(x, y, z)
}

pub fn raster_pos3dv(v []f64) {
	C.glRasterPos3dv(v.data)
}

pub fn raster_pos3f(x f32, y f32, z f32) {
	C.glRasterPos3f(x, y, z)
}

pub fn raster_pos3fv(v []f32) {
	C.glRasterPos3fv(v.data)
}

pub fn raster_pos3i(x int, y int, z int) {
	C.glRasterPos3i(x, y, z)
}

pub fn raster_pos3iv(v []int) {
	C.glRasterPos3iv(v.data)
}

pub fn raster_pos3s(x i16, y i16, z i16) {
	C.glRasterPos3s(x, y, z)
}

pub fn raster_pos3sv(v []i16) {
	C.glRasterPos3sv(v.data)
}

pub fn raster_pos4d(x f64, y f64, z f64, w f64) {
	C.glRasterPos4d(x, y, z, w)
}

pub fn raster_pos4dv(v []f64) {
	C.glRasterPos4dv(v.data)
}

pub fn raster_pos4f(x f32, y f32, z f32, w f32) {
	C.glRasterPos4f(x, y, z, w)
}

pub fn raster_pos4fv(v []f32) {
	C.glRasterPos4fv(v.data)
}

pub fn raster_pos4i(x int, y int, z int, w int) {
	C.glRasterPos4i(x, y, z, w)
}

pub fn raster_pos4iv(v []int) {
	C.glRasterPos4iv(v.data)
}

pub fn raster_pos4s(x i16, y i16, z i16, w i16) {
	C.glRasterPos4s(x, y, z, w)
}

pub fn raster_pos4sv(v []i16) {
	C.glRasterPos4sv(v.data)
}

pub fn read_buffer(src int) {
	C.glReadBuffer(src)
}

pub fn read_pixels(x int, y int, width int, height int, format int, typ int, pixels voidptr) {
	C.glReadPixels(x, y, width, height, format, typ, pixels)
}

pub fn rectd(x1 f64, y1 f64, x2 f64, y2 f64) {
	C.glRectd(x1, y1, x2, y2)
}

pub fn rectdv(v1 []f64, v2 []f64) {
	C.glRectdv(v1.data, v2.data)
}

pub fn rectf(x1 f32, y1 f32, x2 f32, y2 f32) {
	C.glRectf(x1, y1, x2, y2)
}

pub fn rectfv(v1 []f32, v2 []f32) {
	C.glRectfv(v1.data, v2.data)
}

pub fn recti(x1 int, y1 int, x2 int, y2 int) {
	C.glRecti(x1, y1, x2, y2)
}

pub fn rectiv(v1 []int, v2 []int) {
	C.glRectiv(v1.data, v2.data)
}

pub fn rects(x1 i16, y1 i16, x2 i16, y2 i16) {
	C.glRects(x1, y1, x2, y2)
}

pub fn rectsv(v1 []i16, v2 []i16) {
	C.glRectsv(v1.data, v2.data)
}

pub fn render_mode(mode int) int {
	return C.glRenderMode(mode)
}

pub fn rotated(angle f64, x f64, y f64, z f64) {
	C.glRotated(angle, x, y, z)
}

pub fn rotatef(angle f32, x f32, y f32, z f32) {
	C.glRotatef(angle, x, y, z)
}

pub fn scaled(x f64, y f64, z f64) {
	C.glScaled(x, y, z)
}

pub fn scalef(x f32, y f32, z f32) {
	C.glScalef(x, y, z)
}

pub fn scissor(x int, y int, width int, height int) {
	C.glScissor(x, y, width, height)
}

// TODO
pub fn select_buffer(size int) []u32 {
	buffer := [u32(0); size]
	C.glSelectBuffer(size, buffer.data)
	return buffer
}

pub fn shade_model(mode int) {
	C.glShadeModel(mode)
}

pub fn stencil_func(func int, ref int, mask int) {
	C.glStencilFunc(func, ref, mask)
}

pub fn stencil_mask(mask int) {
	C.glStencilMask(mask)
}

pub fn stencil_op(sfail int, dpfail int, dppass int) {
	C.glStencilOp(sfail, dpfail, dppass)
}

pub fn tex_coord1d(s f64) {
	C.glTexCoord1d(s)
}

pub fn tex_coord1f(s f32) {
	C.glTexCoord1f(s)
}

pub fn tex_coord1fv(v []f32) {
	C.glTexCoord1fv(v.data)
}

pub fn tex_coord1i(s int) {
	C.glTexCoord1i(s)
}

pub fn tex_coord1iv(v []int) {
	C.glTexCoord1iv(v.data)
}

pub fn tex_coord1s(s i16) {
	C.glTexCoord1s(s)
}

pub fn tex_coord1sv(v []i16) {
	C.glTexCoord1sv(v.data)
}

pub fn tex_coord2d(s f64, t f64) {
	C.glTexCoord2d(s, t)
}

pub fn tex_coord2dv(v []f64) {
	C.glTexCoord2dv(v.data)
}

pub fn tex_coord2f(s f32, t f32) {
	C.glTexCoord2f(s, t)
}

pub fn tex_coord2fv(v []f32) {
	C.glTexCoord2fv(v.data)
}

pub fn tex_coord2i(s int, t int) {
	C.glTexCoord2i(s, t)
}

pub fn tex_coord2iv(v []int) {
	C.glTexCoord2iv(v.data)
}

pub fn tex_coord2s(s i16, t i16) {
	C.glTexCoord2s(s, t)
}

pub fn tex_coord3d(s f64, t f64, r f64) {
	C.glTexCoord3d(s, t, r)
}

pub fn tex_coord3dv(v []f64) {
	C.glTexCoord3dv(v.data)
}

pub fn tex_coord3f(s f32, t f32, r f32) {
	C.glTexCoord3f(s, t, r)
}

pub fn tex_coord3fv(v []f32) {
	C.glTexCoord3fv(v.data)
}

pub fn tex_coord3i(s int, t int, r int) {
	C.glTexCoord3i(s, t, r)
}

pub fn tex_coord3iv(v []int) {
	C.glTexCoord3iv(v.data)
}

pub fn tex_coord3s(s i16, t i16, r i16) {
	C.glTexCoord3s(s, t, r)
}

pub fn tex_coord3sv(v []i16) {
	C.glTexCoord3sv(v.data)
}

pub fn tex_coord4d(s f64, t f64, r f64, q f64) {
	C.glTexCoord4d(s, t, r, q)
}

pub fn tex_coord4dv(v []f64) {
	C.glTexCoord4dv(v.data)
}

pub fn tex_coord4f(s f32, t f32, r f32, q f32) {
	C.glTexCoord4f(s, t, r, q)
}

pub fn tex_coord4fv(v []f32) {
	C.glTexCoord4fv(v.data)
}

pub fn tex_coord4i(s int, t int, r int, q int) {
	C.glTexCoord4i(s, t, r, q)
}

pub fn tex_coord4iv(v []int) {
	C.glTexCoord4iv(v.data)
}

pub fn tex_coord4s(s i16, t i16, r i16, q i16) {
	C.glTexCoord4s(s, t, r, q)
}

pub fn tex_coord4sv(v []i16) {
	C.glTexCoord4sv(v.data)
}

// TODO
pub fn tex_coord_pointer(size int, typ int, stride int, pointer voidptr) {
	C.glTexCoordPointer(size, typ, stride, pointer)
}

pub fn tex_envf(target int, pname int, param f32) {
	C.glTexEnvf(target, pname, param)
}

pub fn tex_envfv(target int, pname int, params []f32) {
	C.glTexEnvfv(target, pname, params.data)
}

pub fn tex_envi(target int, pname int, param int) {
	C.glTexEnvi(target, pname, param)
}

pub fn tex_enviv(target int, pname int, params []int) {
	C.glTexEnviv(target, pname, params.data)
}

pub fn tex_gend(coord int, pname int, param f64) {
	C.glTexGend(coord, pname, param)
}

pub fn tex_gendv(coord int, pname int, params []f64) {
	C.glTexGendv(coord, pname, params.data)
}

pub fn tex_genf(coord int, pname int, param f32) {
	C.glTexGenf(coord, pname, param)
}

pub fn tex_genfv(coord int, pname int, params []f32) {
	C.glTexGenfv(coord, pname, params.data)
}

pub fn tex_geni(coord int, pname int, param int) {
	C.glTexGeni(coord, pname, param)
}

pub fn tex_geniv(coord int, pname int, params []int) {
	C.glTexGeniv(coord, pname, params.data)
}

pub fn tex_image1d(target int, level int, internalformat int, width int, border int, format int, typ int, pixels voidptr) {
	C.glTexImage1D(target, level, internalformat, width, border, format, typ, pixels)
}

pub fn tex_image2d(target int, level int, internalformat int, width int, height int, border int, format int, typ int, pixels voidptr) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, typ, pixels)
}

pub fn tex_parameterf(target int, pname int, param f32) {
	C.glTexParameterf(target, pname, param)
}

pub fn tex_parameterfv(target int, pname int, params []f32) {
	C.glTexParameterfv(target, pname, params.data)
}

pub fn tex_parameteri(target int, pname int, param int) {
	C.glTexParameteri(target, pname, param)
}

pub fn tex_parameteriv(target int, pname int, params []int) {
	C.glTexParameteriv(target, pname, params.data)
}

pub fn tex_sub_image1d(target int, level int, xoffset int, width int, format int, typ int, pixels voidptr) {
	C.glTexSubImage1D(target, level, xoffset, width, format, typ, pixels)
}

pub fn tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, typ int, pixels voidptr) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, typ, pixels)
}

pub fn translated(x f64, y f64, z f64) {
	C.glTranslated(x, y, z)
}

pub fn translatef(x f32, y f32, z f32) {
	C.glTranslatef(x, y, z)
}

pub fn vertex2d(x f64, y f64) {
	C.glVertex2d(x, y)
}

pub fn vertex2dv(v []f64) {
	C.glVertex2dv(v.data)
}

pub fn vertex2f(x f32, y f32) {
	C.glVertex2f(x, y)
}

pub fn vertex2fv(v []f32) {
	C.glVertex2fv(v.data)
}

pub fn vertex2i(x int, y int) {
	C.glVertex2i(x, y)
}

pub fn vertex2iv(v []int) {
	C.glVertex2iv(v.data)
}

pub fn vertex2s(x i16, y i16) {
	C.glVertex2s(x, y)
}

pub fn vertex2sv(v []i16) {
	C.glVertex2sv(v.data)
}

pub fn vertex3d(x f64, y f64, z f64) {
	C.glVertex3d(x, y, z)
}

pub fn vertex3dv(v []f64) {
	C.glVertex3dv(v.data)
}

pub fn vertex3f(x f32, y f32, z f32) {
	C.glVertex3f(x, y, z)
}

pub fn vertex3fv(v []f32) {
	C.glVertex3fv(v.data)
}

pub fn vertex3i(x int, y int, z int) {
	C.glVertex3i(x, y, z)
}

pub fn vertex3iv(v []int) {
	C.glVertex3iv(v.data)
}

pub fn vertex3s(x i16, y i16, z i16) {
	C.glVertex3s(x, y, z)
}

pub fn vertex3sv(v []i16) {
	C.glVertex3sv(v.data)
}

pub fn vertex4d(x f64, y f64, z f64, w f64) {
	C.glVertex4d(x, y, z, w)
}

pub fn vertex4dv(v []f64) {
	C.glVertex4dv(v.data)
}

pub fn vertex4f(x f32, y f32, z f32, w f32) {
	C.glVertex4f(x, y, z, w)
}

pub fn vertex4fv(v []f32) {
	C.glVertex4fv(v.data)
}

pub fn vertex4i(x int, y int, z int, w int) {
	C.glVertex4i(x, y, z, w)
}

pub fn vertex4iv(v []int) {
	C.glVertex4iv(v.data)
}

pub fn vertex4s(x i16, y i16, z i16, w i16) {
	C.glVertex4s(x, y, z, w)
}

pub fn vertex4sv(v []i16) {
	C.glVertex4sv(v.data)
}

// TODO
pub fn vertex_pointer(size int, typ int, stride int, pointer voidptr) {
	C.glVertexPointer(size, typ, stride, pointer)
}

pub fn viewport(x int, y int, w int, h int) {
	C.glViewport(x, y, w, h)
}
