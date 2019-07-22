module gl10

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_DEPTH_BUFFER_BIT
	GL_STENCIL_BUFFER_BIT
	GL_COLOR_BUFFER_BIT
	GL_FALSE
	GL_TRUE
	GL_POINTS
	GL_LINES
	GL_LINE_LOOP
	GL_LINE_STRIP
	GL_TRIANGLES
	GL_TRIANGLE_STRIP
	GL_TRIANGLE_FAN
	GL_QUADS
	GL_NEVER
	GL_LESS
	GL_EQUAL
	GL_LEQUAL
	GL_GREATER
	GL_NOTEQUAL
	GL_GEQUAL
	GL_ALWAYS
	GL_ZERO
	GL_ONE
	GL_SRC_COLOR
	GL_ONE_MINUS_SRC_COLOR
	GL_SRC_ALPHA
	GL_ONE_MINUS_SRC_ALPHA
	GL_DST_ALPHA
	GL_ONE_MINUS_DST_ALPHA
	GL_DST_COLOR
	GL_ONE_MINUS_DST_COLOR
	GL_SRC_ALPHA_SATURATE
	GL_NONE
	GL_FRONT_LEFT
	GL_FRONT_RIGHT
	GL_BACK_LEFT
	GL_BACK_RIGHT
	GL_FRONT
	GL_BACK
	GL_LEFT
	GL_RIGHT
	GL_FRONT_AND_BACK
	GL_NO_ERROR
	GL_INVALID_ENUM
	GL_INVALID_VALUE
	GL_INVALID_OPERATION
	GL_OUT_OF_MEMORY
	GL_CW
	GL_CCW
	GL_POINT_SIZE
	GL_POINT_SIZE_RANGE
	GL_POINT_SIZE_GRANULARITY
	GL_LINE_SMOOTH
	GL_LINE_WIDTH
	GL_LINE_WIDTH_RANGE
	GL_LINE_WIDTH_GRANULARITY
	GL_POLYGON_MODE
	GL_POLYGON_SMOOTH
	GL_CULL_FACE
	GL_CULL_FACE_MODE
	GL_FRONT_FACE
	GL_DEPTH_RANGE
	GL_DEPTH_TEST
	GL_DEPTH_WRITEMASK
	GL_DEPTH_CLEAR_VALUE
	GL_DEPTH_FUNC
	GL_STENCIL_TEST
	GL_STENCIL_CLEAR_VALUE
	GL_STENCIL_FUNC
	GL_STENCIL_VALUE_MASK
	GL_STENCIL_FAIL
	GL_STENCIL_PASS_DEPTH_FAIL
	GL_STENCIL_PASS_DEPTH_PASS
	GL_STENCIL_REF
	GL_STENCIL_WRITEMASK
	GL_VIEWPORT
	GL_DITHER
	GL_BLEND_DST
	GL_BLEND_SRC
	GL_BLEND
	GL_LOGIC_OP_MODE
	GL_DRAW_BUFFER
	GL_READ_BUFFER
	GL_SCISSOR_BOX
	GL_SCISSOR_TEST
	GL_COLOR_CLEAR_VALUE
	GL_COLOR_WRITEMASK
	GL_DOUBLEBUFFER
	GL_STEREO
	GL_LINE_SMOOTH_HINT
	GL_POLYGON_SMOOTH_HINT
	GL_UNPACK_SWAP_BYTES
	GL_UNPACK_LSB_FIRST
	GL_UNPACK_ROW_LENGTH
	GL_UNPACK_SKIP_ROWS
	GL_UNPACK_SKIP_PIXELS
	GL_UNPACK_ALIGNMENT
	GL_PACK_SWAP_BYTES
	GL_PACK_LSB_FIRST
	GL_PACK_ROW_LENGTH
	GL_PACK_SKIP_ROWS
	GL_PACK_SKIP_PIXELS
	GL_PACK_ALIGNMENT
	GL_MAX_TEXTURE_SIZE
	GL_MAX_VIEWPORT_DIMS
	GL_SUBPIXEL_BITS
	GL_TEXTURE_1D
	GL_TEXTURE_2D
	GL_TEXTURE_WIDTH
	GL_TEXTURE_HEIGHT
	GL_TEXTURE_BORDER_COLOR
	GL_DONT_CARE
	GL_FASTEST
	GL_NICEST
	GL_BYTE
	GL_UNSIGNED_BYTE
	GL_SHORT
	GL_UNSIGNED_SHORT
	GL_INT
	GL_UNSIGNED_INT
	GL_FLOAT
	GL_STACK_OVERFLOW
	GL_STACK_UNDERFLOW
	GL_CLEAR
	GL_AND
	GL_AND_REVERSE
	GL_COPY
	GL_AND_INVERTED
	GL_NOOP
	GL_XOR
	GL_OR
	GL_NOR
	GL_EQUIV
	GL_INVERT
	GL_OR_REVERSE
	GL_COPY_INVERTED
	GL_OR_INVERTED
	GL_NAND
	GL_SET
	GL_TEXTURE
	GL_COLOR
	GL_DEPTH
	GL_STENCIL
	GL_STENCIL_INDEX
	GL_DEPTH_COMPONENT
	GL_RED
	GL_GREEN
	GL_BLUE
	GL_ALPHA
	GL_RGB
	GL_RGBA
	GL_POINT
	GL_LINE
	GL_FILL
	GL_KEEP
	GL_REPLACE
	GL_INCR
	GL_DECR
	GL_VENDOR
	GL_RENDERER
	GL_VERSION
	GL_EXTENSIONS
	GL_NEAREST
	GL_LINEAR
	GL_NEAREST_MIPMAP_NEAREST
	GL_LINEAR_MIPMAP_NEAREST
	GL_NEAREST_MIPMAP_LINEAR
	GL_LINEAR_MIPMAP_LINEAR
	GL_TEXTURE_MAG_FILTER
	GL_TEXTURE_MIN_FILTER
	GL_TEXTURE_WRAP_S
	GL_TEXTURE_WRAP_T
	GL_REPEAT
	GL_CURRENT_BIT
	GL_POINT_BIT
	GL_LINE_BIT
	GL_POLYGON_BIT
	GL_POLYGON_STIPPLE_BIT
	GL_PIXEL_MODE_BIT
	GL_LIGHTING_BIT
	GL_FOG_BIT
	GL_ACCUM_BUFFER_BIT
	GL_VIEWPORT_BIT
	GL_TRANSFORM_BIT
	GL_ENABLE_BIT
	GL_HINT_BIT
	GL_EVAL_BIT
	GL_LIST_BIT
	GL_TEXTURE_BIT
	GL_SCISSOR_BIT
	GL_ALL_ATTRIB_BITS
	GL_QUAD_STRIP
	GL_POLYGON
	GL_ACCUM
	GL_LOAD
	GL_RETURN
	GL_MULT
	GL_ADD
	GL_AUX0
	GL_AUX1
	GL_AUX2
	GL_AUX3
	GL_2D
	GL_3D
	GL_3D_COLOR
	GL_3D_COLOR_TEXTURE
	GL_4D_COLOR_TEXTURE
	GL_PASS_THROUGH_TOKEN
	GL_POINT_TOKEN
	GL_LINE_TOKEN
	GL_POLYGON_TOKEN
	GL_BITMAP_TOKEN
	GL_DRAW_PIXEL_TOKEN
	GL_COPY_PIXEL_TOKEN
	GL_LINE_RESET_TOKEN
	GL_EXP
	GL_EXP2
	GL_COEFF
	GL_ORDER
	GL_DOMAIN
	GL_PIXEL_MAP_I_TO_I
	GL_PIXEL_MAP_S_TO_S
	GL_PIXEL_MAP_I_TO_R
	GL_PIXEL_MAP_I_TO_G
	GL_PIXEL_MAP_I_TO_B
	GL_PIXEL_MAP_I_TO_A
	GL_PIXEL_MAP_R_TO_R
	GL_PIXEL_MAP_G_TO_G
	GL_PIXEL_MAP_B_TO_B
	GL_PIXEL_MAP_A_TO_A
	GL_CURRENT_COLOR
	GL_CURRENT_INDEX
	GL_CURRENT_NORMAL
	GL_CURRENT_TEXTURE_COORDS
	GL_CURRENT_RASTER_COLOR
	GL_CURRENT_RASTER_INDEX
	GL_CURRENT_RASTER_TEXTURE_COORDS
	GL_CURRENT_RASTER_POSITION
	GL_CURRENT_RASTER_POSITION_VALID
	GL_CURRENT_RASTER_DISTANCE
	GL_POINT_SMOOTH
	GL_LINE_STIPPLE
	GL_LINE_STIPPLE_PATTERN
	GL_LINE_STIPPLE_REPEAT
	GL_LIST_MODE
	GL_MAX_LIST_NESTING
	GL_LIST_BASE
	GL_LIST_INDEX
	GL_POLYGON_STIPPLE
	GL_EDGE_FLAG
	GL_LIGHTING
	GL_LIGHT_MODEL_LOCAL_VIEWER
	GL_LIGHT_MODEL_TWO_SIDE
	GL_LIGHT_MODEL_AMBIENT
	GL_SHADE_MODEL
	GL_COLOR_MATERIAL_FACE
	GL_COLOR_MATERIAL_PARAMETER
	GL_COLOR_MATERIAL
	GL_FOG
	GL_FOG_INDEX
	GL_FOG_DENSITY
	GL_FOG_START
	GL_FOG_END
	GL_FOG_MODE
	GL_FOG_COLOR
	GL_ACCUM_CLEAR_VALUE
	GL_MATRIX_MODE
	GL_NORMALIZE
	GL_MODELVIEW_STACK_DEPTH
	GL_PROJECTION_STACK_DEPTH
	GL_TEXTURE_STACK_DEPTH
	GL_MODELVIEW_MATRIX
	GL_PROJECTION_MATRIX
	GL_TEXTURE_MATRIX
	GL_ATTRIB_STACK_DEPTH
	GL_ALPHA_TEST
	GL_ALPHA_TEST_FUNC
	GL_ALPHA_TEST_REF
	GL_LOGIC_OP
	GL_AUX_BUFFERS
	GL_INDEX_CLEAR_VALUE
	GL_INDEX_WRITEMASK
	GL_INDEX_MODE
	GL_RGBA_MODE
	GL_RENDER_MODE
	GL_PERSPECTIVE_CORRECTION_HINT
	GL_POINT_SMOOTH_HINT
	GL_FOG_HINT
	GL_TEXTURE_GEN_S
	GL_TEXTURE_GEN_T
	GL_TEXTURE_GEN_R
	GL_TEXTURE_GEN_Q
	GL_PIXEL_MAP_I_TO_I_SIZE
	GL_PIXEL_MAP_S_TO_S_SIZE
	GL_PIXEL_MAP_I_TO_R_SIZE
	GL_PIXEL_MAP_I_TO_G_SIZE
	GL_PIXEL_MAP_I_TO_B_SIZE
	GL_PIXEL_MAP_I_TO_A_SIZE
	GL_PIXEL_MAP_R_TO_R_SIZE
	GL_PIXEL_MAP_G_TO_G_SIZE
	GL_PIXEL_MAP_B_TO_B_SIZE
	GL_PIXEL_MAP_A_TO_A_SIZE
	GL_MAP_COLOR
	GL_MAP_STENCIL
	GL_INDEX_SHIFT
	GL_INDEX_OFFSET
	GL_RED_SCALE
	GL_RED_BIAS
	GL_ZOOM_X
	GL_ZOOM_Y
	GL_GREEN_SCALE
	GL_GREEN_BIAS
	GL_BLUE_SCALE
	GL_BLUE_BIAS
	GL_ALPHA_SCALE
	GL_ALPHA_BIAS
	GL_DEPTH_SCALE
	GL_DEPTH_BIAS
	GL_MAX_EVAL_ORDER
	GL_MAX_LIGHTS
	GL_MAX_CLIP_PLANES
	GL_MAX_PIXEL_MAP_TABLE
	GL_MAX_ATTRIB_STACK_DEPTH
	GL_MAX_MODELVIEW_STACK_DEPTH
	GL_MAX_NAME_STACK_DEPTH
	GL_MAX_PROJECTION_STACK_DEPTH
	GL_MAX_TEXTURE_STACK_DEPTH
	GL_INDEX_BITS
	GL_RED_BITS
	GL_GREEN_BITS
	GL_BLUE_BITS
	GL_ALPHA_BITS
	GL_DEPTH_BITS
	GL_STENCIL_BITS
	GL_ACCUM_RED_BITS
	GL_ACCUM_GREEN_BITS
	GL_ACCUM_BLUE_BITS
	GL_ACCUM_ALPHA_BITS
	GL_NAME_STACK_DEPTH
	GL_AUTO_NORMAL
	GL_MAP1_COLOR_4
	GL_MAP1_INDEX
	GL_MAP1_NORMAL
	GL_MAP1_TEXTURE_COORD_1
	GL_MAP1_TEXTURE_COORD_2
	GL_MAP1_TEXTURE_COORD_3
	GL_MAP1_TEXTURE_COORD_4
	GL_MAP1_VERTEX_3
	GL_MAP1_VERTEX_4
	GL_MAP2_COLOR_4
	GL_MAP2_INDEX
	GL_MAP2_NORMAL
	GL_MAP2_TEXTURE_COORD_1
	GL_MAP2_TEXTURE_COORD_2
	GL_MAP2_TEXTURE_COORD_3
	GL_MAP2_TEXTURE_COORD_4
	GL_MAP2_VERTEX_3
	GL_MAP2_VERTEX_4
	GL_MAP1_GRID_DOMAIN
	GL_MAP1_GRID_SEGMENTS
	GL_MAP2_GRID_DOMAIN
	GL_MAP2_GRID_SEGMENTS
	GL_TEXTURE_COMPONENTS
	GL_TEXTURE_BORDER
	GL_AMBIENT
	GL_DIFFUSE
	GL_SPECULAR
	GL_POSITION
	GL_SPOT_DIRECTION
	GL_SPOT_EXPONENT
	GL_SPOT_CUTOFF
	GL_CONSTANT_ATTENUATION
	GL_LINEAR_ATTENUATION
	GL_QUADRATIC_ATTENUATION
	GL_COMPILE
	GL_COMPILE_AND_EXECUTE
	GL_2_BYTES
	GL_3_BYTES
	GL_4_BYTES
	GL_EMISSION
	GL_SHININESS
	GL_AMBIENT_AND_DIFFUSE
	GL_COLOR_INDEXES
	GL_MODELVIEW
	GL_PROJECTION
	GL_COLOR_INDEX
	GL_LUMINANCE
	GL_LUMINANCE_ALPHA
	GL_BITMAP
	GL_RENDER
	GL_FEEDBACK
	GL_SELECT
	GL_FLAT
	GL_SMOOTH
	GL_S
	GL_T
	GL_R
	GL_Q
	GL_MODULATE
	GL_DECAL
	GL_TEXTURE_ENV_MODE
	GL_TEXTURE_ENV_COLOR
	GL_TEXTURE_ENV
	GL_EYE_LINEAR
	GL_OBJECT_LINEAR
	GL_SPHERE_MAP
	GL_TEXTURE_GEN_MODE
	GL_OBJECT_PLANE
	GL_EYE_PLANE
	GL_CLAMP
	GL_CLIP_PLANE0
	GL_CLIP_PLANE1
	GL_CLIP_PLANE2
	GL_CLIP_PLANE3
	GL_CLIP_PLANE4
	GL_CLIP_PLANE5
	GL_LIGHT0
	GL_LIGHT1
	GL_LIGHT2
	GL_LIGHT3
	GL_LIGHT4
	GL_LIGHT5
	GL_LIGHT6
	GL_LIGHT7
)

pub fn init_glad() int {
	return C.gladLoadGL()
}

pub fn cull_face(mode u32) {
	C.glCullFace(mode)
}

pub fn front_face(mode u32) {
	C.glFrontFace(mode)
}

pub fn hint(target u32, mode u32) {
	C.glHint(target, mode)
}

pub fn line_width(width f32) {
	C.glLineWidth(width)
}

pub fn point_size(size f32) {
	C.glPointSize(size)
}

pub fn polygon_mode(face u32, mode u32) {
	C.glPolygonMode(face, mode)
}

pub fn scissor(x int, y int, width int, height int) {
	C.glScissor(x, y, width, height)
}

pub fn tex_parameterf(target u32, pname u32, param f32) {
	C.glTexParameterf(target, pname, param)
}

// TODO
pub fn tex_parameterfv(target u32, pname u32, params []f32) {
	C.glTexParameterfv(target, pname, params.data)
}

pub fn tex_parameteri(target u32, pname u32, param int) {
	C.glTexParameteri(target, pname, param)
}

// TODO
pub fn tex_parameteriv(target u32, pname u32, params []int) {
	C.glTexParameteriv(target, pname, params.data)
}

// TODO
pub fn tex_image1_d(target u32, level int, internalformat int, width int, border int, format u32, type_ u32, pixels voidptr) {
	C.glTexImage1D(target, level, internalformat, width, border, format, type_, pixels)
}

// TODO
pub fn tex_image2_d(target u32, level int, internalformat int, width int, height int, border int, format u32, type_ u32, pixels voidptr) {
	C.glTexImage2D(target, level, internalformat, width, height, border, format, type_, pixels)
}

pub fn draw_buffer(buf u32) {
	C.glDrawBuffer(buf)
}

pub fn clear(mask u32) {
	C.glClear(mask)
}

pub fn clear_color(red f32, green f32, blue f32, alpha f32) {
	C.glClearColor(red, green, blue, alpha)
}

pub fn clear_stencil(s int) {
	C.glClearStencil(s)
}

pub fn clear_depth(depth f64) {
	C.glClearDepth(depth)
}

pub fn stencil_mask(mask u32) {
	C.glStencilMask(mask)
}

pub fn color_mask(red bool, green bool, blue bool, alpha bool) {
	C.glColorMask(red, green, blue, alpha)
}

pub fn depth_mask(flag bool) {
	C.glDepthMask(flag)
}

pub fn disable(cap u32) {
	C.glDisable(cap)
}

pub fn enable(cap u32) {
	C.glEnable(cap)
}

pub fn finish() {
	C.glFinish()
}

pub fn flush() {
	C.glFlush()
}

pub fn blend_func(sfactor u32, dfactor u32) {
	C.glBlendFunc(sfactor, dfactor)
}

pub fn logic_op(opcode u32) {
	C.glLogicOp(opcode)
}

pub fn stencil_func(func u32, ref int, mask u32) {
	C.glStencilFunc(func, ref, mask)
}

pub fn stencil_op(fail u32, zfail u32, zpass u32) {
	C.glStencilOp(fail, zfail, zpass)
}

pub fn depth_func(func u32) {
	C.glDepthFunc(func)
}

pub fn pixel_storef(pname u32, param f32) {
	C.glPixelStoref(pname, param)
}

pub fn pixel_storei(pname u32, param int) {
	C.glPixelStorei(pname, param)
}

pub fn read_buffer(src u32) {
	C.glReadBuffer(src)
}

// TODO
pub fn read_pixels(x int, y int, width int, height int, format u32, type_ u32, pixels voidptr) {
	C.glReadPixels(x, y, width, height, format, type_, pixels)
}

// TODO
pub fn get_booleanv(pname u32, data []bool) {
	C.glGetBooleanv(pname, data.data)
}

// TODO
pub fn get_doublev(pname u32, data []f64) {
	C.glGetDoublev(pname, data.data)
}

pub fn get_error() u32 {
	return C.glGetError()
}

// TODO
pub fn get_floatv(pname u32, data []f32) {
	C.glGetFloatv(pname, data.data)
}

// TODO
pub fn get_integerv(pname u32, data []int) {
	C.glGetIntegerv(pname, data.data)
}

// TODO
pub fn get_string(name u32) voidptr {
	return C.glGetString(name)
}

// TODO
pub fn get_tex_image(target u32, level int, format u32, type_ u32, pixels voidptr) {
	C.glGetTexImage(target, level, format, type_, pixels)
}

// TODO
pub fn get_tex_parameterfv(target u32, pname u32, params []f32) {
	C.glGetTexParameterfv(target, pname, params.data)
}

// TODO
pub fn get_tex_parameteriv(target u32, pname u32, params []int) {
	C.glGetTexParameteriv(target, pname, params.data)
}

// TODO
pub fn get_tex_level_parameterfv(target u32, level int, pname u32, params []f32) {
	C.glGetTexLevelParameterfv(target, level, pname, params.data)
}

// TODO
pub fn get_tex_level_parameteriv(target u32, level int, pname u32, params []int) {
	C.glGetTexLevelParameteriv(target, level, pname, params.data)
}

pub fn is_enabled(cap u32) bool {
	return C.glIsEnabled(cap)
}

pub fn depth_range(n f64, f f64) {
	C.glDepthRange(n, f)
}

pub fn viewport(x int, y int, width int, height int) {
	C.glViewport(x, y, width, height)
}

pub fn new_list(list u32, mode u32) {
	C.glNewList(list, mode)
}

pub fn end_list() {
	C.glEndList()
}

pub fn call_list(list u32) {
	C.glCallList(list)
}

// TODO
pub fn call_lists(n int, type_ u32, lists voidptr) {
	C.glCallLists(n, type_, lists)
}

pub fn delete_lists(list u32, range int) {
	C.glDeleteLists(list, range)
}

pub fn gen_lists(range int) u32 {
	return C.glGenLists(range)
}

pub fn list_base(base u32) {
	C.glListBase(base)
}

pub fn begin(mode u32) {
	C.glBegin(mode)
}

// TODO
pub fn bitmap(width int, height int, xorig f32, yorig f32, xmove f32, ymove f32, bitmap []u8) {
	C.glBitmap(width, height, xorig, yorig, xmove, ymove, bitmap.data)
}

pub fn color3b(red i8, green i8, blue i8) {
	C.glColor3b(red, green, blue)
}

// TODO
pub fn color3bv(v []i8) {
	C.glColor3bv(v.data)
}

pub fn color3d(red f64, green f64, blue f64) {
	C.glColor3d(red, green, blue)
}

// TODO
pub fn color3dv(v []f64) {
	C.glColor3dv(v.data)
}

pub fn color3f(red f32, green f32, blue f32) {
	C.glColor3f(red, green, blue)
}

// TODO
pub fn color3fv(v []f32) {
	C.glColor3fv(v.data)
}

pub fn color3i(red int, green int, blue int) {
	C.glColor3i(red, green, blue)
}

// TODO
pub fn color3iv(v []int) {
	C.glColor3iv(v.data)
}

pub fn color3s(red i16, green i16, blue i16) {
	C.glColor3s(red, green, blue)
}

// TODO
pub fn color3sv(v []i16) {
	C.glColor3sv(v.data)
}

pub fn color3ub(red u8, green u8, blue u8) {
	C.glColor3ub(red, green, blue)
}

// TODO
pub fn color3ubv(v []u8) {
	C.glColor3ubv(v.data)
}

pub fn color3ui(red u32, green u32, blue u32) {
	C.glColor3ui(red, green, blue)
}

// TODO
pub fn color3uiv(v []u32) {
	C.glColor3uiv(v.data)
}

pub fn color3us(red u16, green u16, blue u16) {
	C.glColor3us(red, green, blue)
}

// TODO
pub fn color3usv(v []u16) {
	C.glColor3usv(v.data)
}

pub fn color4b(red i8, green i8, blue i8, alpha i8) {
	C.glColor4b(red, green, blue, alpha)
}

// TODO
pub fn color4bv(v []i8) {
	C.glColor4bv(v.data)
}

pub fn color4d(red f64, green f64, blue f64, alpha f64) {
	C.glColor4d(red, green, blue, alpha)
}

// TODO
pub fn color4dv(v []f64) {
	C.glColor4dv(v.data)
}

pub fn color4f(red f32, green f32, blue f32, alpha f32) {
	C.glColor4f(red, green, blue, alpha)
}

// TODO
pub fn color4fv(v []f32) {
	C.glColor4fv(v.data)
}

pub fn color4i(red int, green int, blue int, alpha int) {
	C.glColor4i(red, green, blue, alpha)
}

// TODO
pub fn color4iv(v []int) {
	C.glColor4iv(v.data)
}

pub fn color4s(red i16, green i16, blue i16, alpha i16) {
	C.glColor4s(red, green, blue, alpha)
}

// TODO
pub fn color4sv(v []i16) {
	C.glColor4sv(v.data)
}

pub fn color4ub(red u8, green u8, blue u8, alpha u8) {
	C.glColor4ub(red, green, blue, alpha)
}

// TODO
pub fn color4ubv(v []u8) {
	C.glColor4ubv(v.data)
}

pub fn color4ui(red u32, green u32, blue u32, alpha u32) {
	C.glColor4ui(red, green, blue, alpha)
}

// TODO
pub fn color4uiv(v []u32) {
	C.glColor4uiv(v.data)
}

pub fn color4us(red u16, green u16, blue u16, alpha u16) {
	C.glColor4us(red, green, blue, alpha)
}

// TODO
pub fn color4usv(v []u16) {
	C.glColor4usv(v.data)
}

pub fn edge_flag(flag bool) {
	C.glEdgeFlag(flag)
}

// TODO
pub fn edge_flagv(flag []bool) {
	C.glEdgeFlagv(flag.data)
}

pub fn end() {
	C.glEnd()
}

pub fn indexd(c f64) {
	C.glIndexd(c)
}

// TODO
pub fn indexdv(c []f64) {
	C.glIndexdv(c.data)
}

pub fn indexf(c f32) {
	C.glIndexf(c)
}

// TODO
pub fn indexfv(c []f32) {
	C.glIndexfv(c.data)
}

pub fn indexi(c int) {
	C.glIndexi(c)
}

// TODO
pub fn indexiv(c []int) {
	C.glIndexiv(c.data)
}

pub fn indexs(c i16) {
	C.glIndexs(c)
}

// TODO
pub fn indexsv(c []i16) {
	C.glIndexsv(c.data)
}

pub fn normal3b(nx i8, ny i8, nz i8) {
	C.glNormal3b(nx, ny, nz)
}

// TODO
pub fn normal3bv(v []i8) {
	C.glNormal3bv(v.data)
}

pub fn normal3d(nx f64, ny f64, nz f64) {
	C.glNormal3d(nx, ny, nz)
}

// TODO
pub fn normal3dv(v []f64) {
	C.glNormal3dv(v.data)
}

pub fn normal3f(nx f32, ny f32, nz f32) {
	C.glNormal3f(nx, ny, nz)
}

// TODO
pub fn normal3fv(v []f32) {
	C.glNormal3fv(v.data)
}

pub fn normal3i(nx int, ny int, nz int) {
	C.glNormal3i(nx, ny, nz)
}

// TODO
pub fn normal3iv(v []int) {
	C.glNormal3iv(v.data)
}

pub fn normal3s(nx i16, ny i16, nz i16) {
	C.glNormal3s(nx, ny, nz)
}

// TODO
pub fn normal3sv(v []i16) {
	C.glNormal3sv(v.data)
}

pub fn raster_pos2d(x f64, y f64) {
	C.glRasterPos2d(x, y)
}

// TODO
pub fn raster_pos2dv(v []f64) {
	C.glRasterPos2dv(v.data)
}

pub fn raster_pos2f(x f32, y f32) {
	C.glRasterPos2f(x, y)
}

// TODO
pub fn raster_pos2fv(v []f32) {
	C.glRasterPos2fv(v.data)
}

pub fn raster_pos2i(x int, y int) {
	C.glRasterPos2i(x, y)
}

// TODO
pub fn raster_pos2iv(v []int) {
	C.glRasterPos2iv(v.data)
}

pub fn raster_pos2s(x i16, y i16) {
	C.glRasterPos2s(x, y)
}

// TODO
pub fn raster_pos2sv(v []i16) {
	C.glRasterPos2sv(v.data)
}

pub fn raster_pos3d(x f64, y f64, z f64) {
	C.glRasterPos3d(x, y, z)
}

// TODO
pub fn raster_pos3dv(v []f64) {
	C.glRasterPos3dv(v.data)
}

pub fn raster_pos3f(x f32, y f32, z f32) {
	C.glRasterPos3f(x, y, z)
}

// TODO
pub fn raster_pos3fv(v []f32) {
	C.glRasterPos3fv(v.data)
}

pub fn raster_pos3i(x int, y int, z int) {
	C.glRasterPos3i(x, y, z)
}

// TODO
pub fn raster_pos3iv(v []int) {
	C.glRasterPos3iv(v.data)
}

pub fn raster_pos3s(x i16, y i16, z i16) {
	C.glRasterPos3s(x, y, z)
}

// TODO
pub fn raster_pos3sv(v []i16) {
	C.glRasterPos3sv(v.data)
}

pub fn raster_pos4d(x f64, y f64, z f64, w f64) {
	C.glRasterPos4d(x, y, z, w)
}

// TODO
pub fn raster_pos4dv(v []f64) {
	C.glRasterPos4dv(v.data)
}

pub fn raster_pos4f(x f32, y f32, z f32, w f32) {
	C.glRasterPos4f(x, y, z, w)
}

// TODO
pub fn raster_pos4fv(v []f32) {
	C.glRasterPos4fv(v.data)
}

pub fn raster_pos4i(x int, y int, z int, w int) {
	C.glRasterPos4i(x, y, z, w)
}

// TODO
pub fn raster_pos4iv(v []int) {
	C.glRasterPos4iv(v.data)
}

pub fn raster_pos4s(x i16, y i16, z i16, w i16) {
	C.glRasterPos4s(x, y, z, w)
}

// TODO
pub fn raster_pos4sv(v []i16) {
	C.glRasterPos4sv(v.data)
}

pub fn rectd(x1 f64, y1 f64, x2 f64, y2 f64) {
	C.glRectd(x1, y1, x2, y2)
}

// TODO
pub fn rectdv(v1 []f64, v2 []f64) {
	C.glRectdv(v1.data, v2.data)
}

pub fn rectf(x1 f32, y1 f32, x2 f32, y2 f32) {
	C.glRectf(x1, y1, x2, y2)
}

// TODO
pub fn rectfv(v1 []f32, v2 []f32) {
	C.glRectfv(v1.data, v2.data)
}

pub fn recti(x1 int, y1 int, x2 int, y2 int) {
	C.glRecti(x1, y1, x2, y2)
}

// TODO
pub fn rectiv(v1 []int, v2 []int) {
	C.glRectiv(v1.data, v2.data)
}

pub fn rects(x1 i16, y1 i16, x2 i16, y2 i16) {
	C.glRects(x1, y1, x2, y2)
}

// TODO
pub fn rectsv(v1 []i16, v2 []i16) {
	C.glRectsv(v1.data, v2.data)
}

pub fn tex_coord1d(s f64) {
	C.glTexCoord1d(s)
}

// TODO
pub fn tex_coord1dv(v []f64) {
	C.glTexCoord1dv(v.data)
}

pub fn tex_coord1f(s f32) {
	C.glTexCoord1f(s)
}

// TODO
pub fn tex_coord1fv(v []f32) {
	C.glTexCoord1fv(v.data)
}

pub fn tex_coord1i(s int) {
	C.glTexCoord1i(s)
}

// TODO
pub fn tex_coord1iv(v []int) {
	C.glTexCoord1iv(v.data)
}

pub fn tex_coord1s(s i16) {
	C.glTexCoord1s(s)
}

// TODO
pub fn tex_coord1sv(v []i16) {
	C.glTexCoord1sv(v.data)
}

pub fn tex_coord2d(s f64, t f64) {
	C.glTexCoord2d(s, t)
}

// TODO
pub fn tex_coord2dv(v []f64) {
	C.glTexCoord2dv(v.data)
}

pub fn tex_coord2f(s f32, t f32) {
	C.glTexCoord2f(s, t)
}

// TODO
pub fn tex_coord2fv(v []f32) {
	C.glTexCoord2fv(v.data)
}

pub fn tex_coord2i(s int, t int) {
	C.glTexCoord2i(s, t)
}

// TODO
pub fn tex_coord2iv(v []int) {
	C.glTexCoord2iv(v.data)
}

pub fn tex_coord2s(s i16, t i16) {
	C.glTexCoord2s(s, t)
}

// TODO
pub fn tex_coord2sv(v []i16) {
	C.glTexCoord2sv(v.data)
}

pub fn tex_coord3d(s f64, t f64, r f64) {
	C.glTexCoord3d(s, t, r)
}

// TODO
pub fn tex_coord3dv(v []f64) {
	C.glTexCoord3dv(v.data)
}

pub fn tex_coord3f(s f32, t f32, r f32) {
	C.glTexCoord3f(s, t, r)
}

// TODO
pub fn tex_coord3fv(v []f32) {
	C.glTexCoord3fv(v.data)
}

pub fn tex_coord3i(s int, t int, r int) {
	C.glTexCoord3i(s, t, r)
}

// TODO
pub fn tex_coord3iv(v []int) {
	C.glTexCoord3iv(v.data)
}

pub fn tex_coord3s(s i16, t i16, r i16) {
	C.glTexCoord3s(s, t, r)
}

// TODO
pub fn tex_coord3sv(v []i16) {
	C.glTexCoord3sv(v.data)
}

pub fn tex_coord4d(s f64, t f64, r f64, q f64) {
	C.glTexCoord4d(s, t, r, q)
}

// TODO
pub fn tex_coord4dv(v []f64) {
	C.glTexCoord4dv(v.data)
}

pub fn tex_coord4f(s f32, t f32, r f32, q f32) {
	C.glTexCoord4f(s, t, r, q)
}

// TODO
pub fn tex_coord4fv(v []f32) {
	C.glTexCoord4fv(v.data)
}

pub fn tex_coord4i(s int, t int, r int, q int) {
	C.glTexCoord4i(s, t, r, q)
}

// TODO
pub fn tex_coord4iv(v []int) {
	C.glTexCoord4iv(v.data)
}

pub fn tex_coord4s(s i16, t i16, r i16, q i16) {
	C.glTexCoord4s(s, t, r, q)
}

// TODO
pub fn tex_coord4sv(v []i16) {
	C.glTexCoord4sv(v.data)
}

pub fn vertex2d(x f64, y f64) {
	C.glVertex2d(x, y)
}

// TODO
pub fn vertex2dv(v []f64) {
	C.glVertex2dv(v.data)
}

pub fn vertex2f(x f32, y f32) {
	C.glVertex2f(x, y)
}

// TODO
pub fn vertex2fv(v []f32) {
	C.glVertex2fv(v.data)
}

pub fn vertex2i(x int, y int) {
	C.glVertex2i(x, y)
}

// TODO
pub fn vertex2iv(v []int) {
	C.glVertex2iv(v.data)
}

pub fn vertex2s(x i16, y i16) {
	C.glVertex2s(x, y)
}

// TODO
pub fn vertex2sv(v []i16) {
	C.glVertex2sv(v.data)
}

pub fn vertex3d(x f64, y f64, z f64) {
	C.glVertex3d(x, y, z)
}

// TODO
pub fn vertex3dv(v []f64) {
	C.glVertex3dv(v.data)
}

pub fn vertex3f(x f32, y f32, z f32) {
	C.glVertex3f(x, y, z)
}

// TODO
pub fn vertex3fv(v []f32) {
	C.glVertex3fv(v.data)
}

pub fn vertex3i(x int, y int, z int) {
	C.glVertex3i(x, y, z)
}

// TODO
pub fn vertex3iv(v []int) {
	C.glVertex3iv(v.data)
}

pub fn vertex3s(x i16, y i16, z i16) {
	C.glVertex3s(x, y, z)
}

// TODO
pub fn vertex3sv(v []i16) {
	C.glVertex3sv(v.data)
}

pub fn vertex4d(x f64, y f64, z f64, w f64) {
	C.glVertex4d(x, y, z, w)
}

// TODO
pub fn vertex4dv(v []f64) {
	C.glVertex4dv(v.data)
}

pub fn vertex4f(x f32, y f32, z f32, w f32) {
	C.glVertex4f(x, y, z, w)
}

// TODO
pub fn vertex4fv(v []f32) {
	C.glVertex4fv(v.data)
}

pub fn vertex4i(x int, y int, z int, w int) {
	C.glVertex4i(x, y, z, w)
}

// TODO
pub fn vertex4iv(v []int) {
	C.glVertex4iv(v.data)
}

pub fn vertex4s(x i16, y i16, z i16, w i16) {
	C.glVertex4s(x, y, z, w)
}

// TODO
pub fn vertex4sv(v []i16) {
	C.glVertex4sv(v.data)
}

// TODO
pub fn clip_plane(plane u32, equation []f64) {
	C.glClipPlane(plane, equation.data)
}

pub fn color_material(face u32, mode u32) {
	C.glColorMaterial(face, mode)
}

pub fn fogf(pname u32, param f32) {
	C.glFogf(pname, param)
}

// TODO
pub fn fogfv(pname u32, params []f32) {
	C.glFogfv(pname, params.data)
}

pub fn fogi(pname u32, param int) {
	C.glFogi(pname, param)
}

// TODO
pub fn fogiv(pname u32, params []int) {
	C.glFogiv(pname, params.data)
}

pub fn lightf(light u32, pname u32, param f32) {
	C.glLightf(light, pname, param)
}

// TODO
pub fn lightfv(light u32, pname u32, params []f32) {
	C.glLightfv(light, pname, params.data)
}

pub fn lighti(light u32, pname u32, param int) {
	C.glLighti(light, pname, param)
}

// TODO
pub fn lightiv(light u32, pname u32, params []int) {
	C.glLightiv(light, pname, params.data)
}

pub fn light_modelf(pname u32, param f32) {
	C.glLightModelf(pname, param)
}

// TODO
pub fn light_modelfv(pname u32, params []f32) {
	C.glLightModelfv(pname, params.data)
}

pub fn light_modeli(pname u32, param int) {
	C.glLightModeli(pname, param)
}

// TODO
pub fn light_modeliv(pname u32, params []int) {
	C.glLightModeliv(pname, params.data)
}

pub fn line_stipple(factor int, pattern u16) {
	C.glLineStipple(factor, pattern)
}

pub fn materialf(face u32, pname u32, param f32) {
	C.glMaterialf(face, pname, param)
}

// TODO
pub fn materialfv(face u32, pname u32, params []f32) {
	C.glMaterialfv(face, pname, params.data)
}

pub fn materiali(face u32, pname u32, param int) {
	C.glMateriali(face, pname, param)
}

// TODO
pub fn materialiv(face u32, pname u32, params []int) {
	C.glMaterialiv(face, pname, params.data)
}

// TODO
pub fn polygon_stipple(mask []u8) {
	C.glPolygonStipple(mask.data)
}

pub fn shade_model(mode u32) {
	C.glShadeModel(mode)
}

pub fn tex_envf(target u32, pname u32, param f32) {
	C.glTexEnvf(target, pname, param)
}

// TODO
pub fn tex_envfv(target u32, pname u32, params []f32) {
	C.glTexEnvfv(target, pname, params.data)
}

pub fn tex_envi(target u32, pname u32, param int) {
	C.glTexEnvi(target, pname, param)
}

// TODO
pub fn tex_enviv(target u32, pname u32, params []int) {
	C.glTexEnviv(target, pname, params.data)
}

pub fn tex_gend(coord u32, pname u32, param f64) {
	C.glTexGend(coord, pname, param)
}

// TODO
pub fn tex_gendv(coord u32, pname u32, params []f64) {
	C.glTexGendv(coord, pname, params.data)
}

pub fn tex_genf(coord u32, pname u32, param f32) {
	C.glTexGenf(coord, pname, param)
}

// TODO
pub fn tex_genfv(coord u32, pname u32, params []f32) {
	C.glTexGenfv(coord, pname, params.data)
}

pub fn tex_geni(coord u32, pname u32, param int) {
	C.glTexGeni(coord, pname, param)
}

// TODO
pub fn tex_geniv(coord u32, pname u32, params []int) {
	C.glTexGeniv(coord, pname, params.data)
}

// TODO
pub fn feedback_buffer(size int, type_ u32, buffer []f32) {
	C.glFeedbackBuffer(size, type_, buffer.data)
}

// TODO
pub fn select_buffer(size int, buffer []u32) {
	C.glSelectBuffer(size, buffer.data)
}

pub fn render_mode(mode u32) int {
	return C.glRenderMode(mode)
}

pub fn init_names() {
	C.glInitNames()
}

pub fn load_name(name u32) {
	C.glLoadName(name)
}

pub fn pass_through(token f32) {
	C.glPassThrough(token)
}

pub fn pop_name() {
	C.glPopName()
}

pub fn push_name(name u32) {
	C.glPushName(name)
}

pub fn clear_accum(red f32, green f32, blue f32, alpha f32) {
	C.glClearAccum(red, green, blue, alpha)
}

pub fn clear_index(c f32) {
	C.glClearIndex(c)
}

pub fn index_mask(mask u32) {
	C.glIndexMask(mask)
}

pub fn accum(op u32, value f32) {
	C.glAccum(op, value)
}

pub fn pop_attrib() {
	C.glPopAttrib()
}

pub fn push_attrib(mask u32) {
	C.glPushAttrib(mask)
}

// TODO
pub fn map1d(target u32, u1 f64, u2 f64, stride int, order int, points []f64) {
	C.glMap1d(target, u1, u2, stride, order, points.data)
}

// TODO
pub fn map1f(target u32, u1 f32, u2 f32, stride int, order int, points []f32) {
	C.glMap1f(target, u1, u2, stride, order, points.data)
}

// TODO
pub fn map2d(target u32, u1 f64, u2 f64, ustride int, uorder int, v1 f64, v2 f64, vstride int, vorder int, points []f64) {
	C.glMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points.data)
}

// TODO
pub fn map2f(target u32, u1 f32, u2 f32, ustride int, uorder int, v1 f32, v2 f32, vstride int, vorder int, points []f32) {
	C.glMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points.data)
}

pub fn map_grid1d(un int, u1 f64, u2 f64) {
	C.glMapGrid1d(un, u1, u2)
}

pub fn map_grid1f(un int, u1 f32, u2 f32) {
	C.glMapGrid1f(un, u1, u2)
}

pub fn map_grid2d(un int, u1 f64, u2 f64, vn int, v1 f64, v2 f64) {
	C.glMapGrid2d(un, u1, u2, vn, v1, v2)
}

pub fn map_grid2f(un int, u1 f32, u2 f32, vn int, v1 f32, v2 f32) {
	C.glMapGrid2f(un, u1, u2, vn, v1, v2)
}

pub fn eval_coord1d(u f64) {
	C.glEvalCoord1d(u)
}

// TODO
pub fn eval_coord1dv(u []f64) {
	C.glEvalCoord1dv(u.data)
}

pub fn eval_coord1f(u f32) {
	C.glEvalCoord1f(u)
}

// TODO
pub fn eval_coord1fv(u []f32) {
	C.glEvalCoord1fv(u.data)
}

pub fn eval_coord2d(u f64, v f64) {
	C.glEvalCoord2d(u, v)
}

// TODO
pub fn eval_coord2dv(u []f64) {
	C.glEvalCoord2dv(u.data)
}

pub fn eval_coord2f(u f32, v f32) {
	C.glEvalCoord2f(u, v)
}

// TODO
pub fn eval_coord2fv(u []f32) {
	C.glEvalCoord2fv(u.data)
}

pub fn eval_mesh1(mode u32, i1 int, i2 int) {
	C.glEvalMesh1(mode, i1, i2)
}

pub fn eval_point1(i int) {
	C.glEvalPoint1(i)
}

pub fn eval_mesh2(mode u32, i1 int, i2 int, j1 int, j2 int) {
	C.glEvalMesh2(mode, i1, i2, j1, j2)
}

pub fn eval_point2(i int, j int) {
	C.glEvalPoint2(i, j)
}

pub fn alpha_func(func u32, ref f32) {
	C.glAlphaFunc(func, ref)
}

pub fn pixel_zoom(xfactor f32, yfactor f32) {
	C.glPixelZoom(xfactor, yfactor)
}

pub fn pixel_transferf(pname u32, param f32) {
	C.glPixelTransferf(pname, param)
}

pub fn pixel_transferi(pname u32, param int) {
	C.glPixelTransferi(pname, param)
}

// TODO
pub fn pixel_mapfv(map u32, mapsize int, values []f32) {
	C.glPixelMapfv(map, mapsize, values.data)
}

// TODO
pub fn pixel_mapuiv(map u32, mapsize int, values []u32) {
	C.glPixelMapuiv(map, mapsize, values.data)
}

// TODO
pub fn pixel_mapusv(map u32, mapsize int, values []u16) {
	C.glPixelMapusv(map, mapsize, values.data)
}

pub fn copy_pixels(x int, y int, width int, height int, type_ u32) {
	C.glCopyPixels(x, y, width, height, type_)
}

// TODO
pub fn draw_pixels(width int, height int, format u32, type_ u32, pixels voidptr) {
	C.glDrawPixels(width, height, format, type_, pixels)
}

// TODO
pub fn get_clip_plane(plane u32, equation []f64) {
	C.glGetClipPlane(plane, equation.data)
}

// TODO
pub fn get_lightfv(light u32, pname u32, params []f32) {
	C.glGetLightfv(light, pname, params.data)
}

// TODO
pub fn get_lightiv(light u32, pname u32, params []int) {
	C.glGetLightiv(light, pname, params.data)
}

// TODO
pub fn get_mapdv(target u32, query u32, v []f64) {
	C.glGetMapdv(target, query, v.data)
}

// TODO
pub fn get_mapfv(target u32, query u32, v []f32) {
	C.glGetMapfv(target, query, v.data)
}

// TODO
pub fn get_mapiv(target u32, query u32, v []int) {
	C.glGetMapiv(target, query, v.data)
}

// TODO
pub fn get_materialfv(face u32, pname u32, params []f32) {
	C.glGetMaterialfv(face, pname, params.data)
}

// TODO
pub fn get_materialiv(face u32, pname u32, params []int) {
	C.glGetMaterialiv(face, pname, params.data)
}

// TODO
pub fn get_pixel_mapfv(map u32, values []f32) {
	C.glGetPixelMapfv(map, values.data)
}

// TODO
pub fn get_pixel_mapuiv(map u32, values []u32) {
	C.glGetPixelMapuiv(map, values.data)
}

// TODO
pub fn get_pixel_mapusv(map u32, values []u16) {
	C.glGetPixelMapusv(map, values.data)
}

// TODO
pub fn get_polygon_stipple(mask []u8) {
	C.glGetPolygonStipple(mask.data)
}

// TODO
pub fn get_tex_envfv(target u32, pname u32, params []f32) {
	C.glGetTexEnvfv(target, pname, params.data)
}

// TODO
pub fn get_tex_enviv(target u32, pname u32, params []int) {
	C.glGetTexEnviv(target, pname, params.data)
}

// TODO
pub fn get_tex_gendv(coord u32, pname u32, params []f64) {
	C.glGetTexGendv(coord, pname, params.data)
}

// TODO
pub fn get_tex_genfv(coord u32, pname u32, params []f32) {
	C.glGetTexGenfv(coord, pname, params.data)
}

// TODO
pub fn get_tex_geniv(coord u32, pname u32, params []int) {
	C.glGetTexGeniv(coord, pname, params.data)
}

pub fn is_list(list u32) bool {
	return C.glIsList(list)
}

pub fn frustum(left f64, right f64, bottom f64, top f64, zNear f64, zFar f64) {
	C.glFrustum(left, right, bottom, top, zNear, zFar)
}

pub fn load_identity() {
	C.glLoadIdentity()
}

// TODO
pub fn load_matrixf(m []f32) {
	C.glLoadMatrixf(m.data)
}

// TODO
pub fn load_matrixd(m []f64) {
	C.glLoadMatrixd(m.data)
}

pub fn matrix_mode(mode u32) {
	C.glMatrixMode(mode)
}

// TODO
pub fn mult_matrixf(m []f32) {
	C.glMultMatrixf(m.data)
}

// TODO
pub fn mult_matrixd(m []f64) {
	C.glMultMatrixd(m.data)
}

pub fn ortho(left f64, right f64, bottom f64, top f64, zNear f64, zFar f64) {
	C.glOrtho(left, right, bottom, top, zNear, zFar)
}

pub fn pop_matrix() {
	C.glPopMatrix()
}

pub fn push_matrix() {
	C.glPushMatrix()
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

pub fn translated(x f64, y f64, z f64) {
	C.glTranslated(x, y, z)
}

pub fn translatef(x f32, y f32, z f32) {
	C.glTranslatef(x, y, z)
}
