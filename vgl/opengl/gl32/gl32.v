module gl32

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_CONTEXT_CORE_PROFILE_BIT
	GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
	GL_LINES_ADJACENCY
	GL_LINE_STRIP_ADJACENCY
	GL_TRIANGLES_ADJACENCY
	GL_TRIANGLE_STRIP_ADJACENCY
	GL_PROGRAM_POINT_SIZE
	GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
	GL_FRAMEBUFFER_ATTACHMENT_LAYERED
	GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
	GL_GEOMETRY_SHADER
	GL_GEOMETRY_VERTICES_OUT
	GL_GEOMETRY_INPUT_TYPE
	GL_GEOMETRY_OUTPUT_TYPE
	GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
	GL_MAX_GEOMETRY_OUTPUT_VERTICES
	GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
	GL_MAX_VERTEX_OUTPUT_COMPONENTS
	GL_MAX_GEOMETRY_INPUT_COMPONENTS
	GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
	GL_MAX_FRAGMENT_INPUT_COMPONENTS
	GL_CONTEXT_PROFILE_MASK
	GL_DEPTH_CLAMP
	GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
	GL_FIRST_VERTEX_CONVENTION
	GL_LAST_VERTEX_CONVENTION
	GL_PROVOKING_VERTEX
	GL_TEXTURE_CUBE_MAP_SEAMLESS
	GL_MAX_SERVER_WAIT_TIMEOUT
	GL_OBJECT_TYPE
	GL_SYNC_CONDITION
	GL_SYNC_STATUS
	GL_SYNC_FLAGS
	GL_SYNC_FENCE
	GL_SYNC_GPU_COMMANDS_COMPLETE
	GL_UNSIGNALED
	GL_SIGNALED
	GL_ALREADY_SIGNALED
	GL_TIMEOUT_EXPIRED
	GL_CONDITION_SATISFIED
	GL_WAIT_FAILED
	GL_TIMEOUT_IGNORED
	GL_SYNC_FLUSH_COMMANDS_BIT
	GL_SAMPLE_POSITION
	GL_SAMPLE_MASK
	GL_SAMPLE_MASK_VALUE
	GL_MAX_SAMPLE_MASK_WORDS
	GL_TEXTURE_2D_MULTISAMPLE
	GL_PROXY_TEXTURE_2D_MULTISAMPLE
	GL_TEXTURE_2D_MULTISAMPLE_ARRAY
	GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
	GL_TEXTURE_BINDING_2D_MULTISAMPLE
	GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
	GL_TEXTURE_SAMPLES
	GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
	GL_SAMPLER_2D_MULTISAMPLE
	GL_INT_SAMPLER_2D_MULTISAMPLE
	GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
	GL_SAMPLER_2D_MULTISAMPLE_ARRAY
	GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
	GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
	GL_MAX_COLOR_TEXTURE_SAMPLES
	GL_MAX_DEPTH_TEXTURE_SAMPLES
	GL_MAX_INTEGER_SAMPLES
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
	GL_CLIENT_PIXEL_STORE_BIT
	GL_CLIENT_VERTEX_ARRAY_BIT
	GL_CLIENT_ALL_ATTRIB_BITS
	GL_QUAD_STRIP
	GL_QUADS
	GL_POLYGON
	GL_ACCUM
	GL_LOAD
	GL_RETURN
	GL_MULT
	GL_ADD
	GL_STACK_OVERFLOW
	GL_STACK_UNDERFLOW
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
	GL_VERTEX_ARRAY_POINTER
	GL_NORMAL_ARRAY_POINTER
	GL_COLOR_ARRAY_POINTER
	GL_INDEX_ARRAY_POINTER
	GL_TEXTURE_COORD_ARRAY_POINTER
	GL_EDGE_FLAG_ARRAY_POINTER
	GL_FEEDBACK_BUFFER_POINTER
	GL_SELECTION_BUFFER_POINTER
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
	GL_CLIENT_ATTRIB_STACK_DEPTH
	GL_ALPHA_TEST
	GL_ALPHA_TEST_FUNC
	GL_ALPHA_TEST_REF
	GL_INDEX_LOGIC_OP
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
	GL_MAX_CLIENT_ATTRIB_STACK_DEPTH
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
	GL_FEEDBACK_BUFFER_SIZE
	GL_FEEDBACK_BUFFER_TYPE
	GL_SELECTION_BUFFER_SIZE
	GL_VERTEX_ARRAY
	GL_NORMAL_ARRAY
	GL_COLOR_ARRAY
	GL_INDEX_ARRAY
	GL_TEXTURE_COORD_ARRAY
	GL_EDGE_FLAG_ARRAY
	GL_VERTEX_ARRAY_SIZE
	GL_VERTEX_ARRAY_TYPE
	GL_VERTEX_ARRAY_STRIDE
	GL_NORMAL_ARRAY_TYPE
	GL_NORMAL_ARRAY_STRIDE
	GL_COLOR_ARRAY_SIZE
	GL_COLOR_ARRAY_TYPE
	GL_COLOR_ARRAY_STRIDE
	GL_INDEX_ARRAY_TYPE
	GL_INDEX_ARRAY_STRIDE
	GL_TEXTURE_COORD_ARRAY_SIZE
	GL_TEXTURE_COORD_ARRAY_TYPE
	GL_TEXTURE_COORD_ARRAY_STRIDE
	GL_EDGE_FLAG_ARRAY_STRIDE
	GL_TEXTURE_COMPONENTS
	GL_TEXTURE_BORDER
	GL_TEXTURE_LUMINANCE_SIZE
	GL_TEXTURE_INTENSITY_SIZE
	GL_TEXTURE_PRIORITY
	GL_TEXTURE_RESIDENT
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
	GL_ALPHA4
	GL_ALPHA8
	GL_ALPHA12
	GL_ALPHA16
	GL_LUMINANCE4
	GL_LUMINANCE8
	GL_LUMINANCE12
	GL_LUMINANCE16
	GL_LUMINANCE4_ALPHA4
	GL_LUMINANCE6_ALPHA2
	GL_LUMINANCE8_ALPHA8
	GL_LUMINANCE12_ALPHA4
	GL_LUMINANCE12_ALPHA12
	GL_LUMINANCE16_ALPHA16
	GL_INTENSITY
	GL_INTENSITY4
	GL_INTENSITY8
	GL_INTENSITY12
	GL_INTENSITY16
	GL_V2F
	GL_V3F
	GL_C4UB_V2F
	GL_C4UB_V3F
	GL_C3F_V3F
	GL_N3F_V3F
	GL_C4F_N3F_V3F
	GL_T2F_V3F
	GL_T4F_V4F
	GL_T2F_C4UB_V3F
	GL_T2F_C3F_V3F
	GL_T2F_N3F_V3F
	GL_T2F_C4F_N3F_V3F
	GL_T4F_C4F_N3F_V4F
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
	GL_RESCALE_NORMAL
	GL_LIGHT_MODEL_COLOR_CONTROL
	GL_SINGLE_COLOR
	GL_SEPARATE_SPECULAR_COLOR
	GL_ALIASED_POINT_SIZE_RANGE
	GL_CLIENT_ACTIVE_TEXTURE
	GL_MAX_TEXTURE_UNITS
	GL_TRANSPOSE_MODELVIEW_MATRIX
	GL_TRANSPOSE_PROJECTION_MATRIX
	GL_TRANSPOSE_TEXTURE_MATRIX
	GL_TRANSPOSE_COLOR_MATRIX
	GL_MULTISAMPLE_BIT
	GL_NORMAL_MAP
	GL_REFLECTION_MAP
	GL_COMPRESSED_ALPHA
	GL_COMPRESSED_LUMINANCE
	GL_COMPRESSED_LUMINANCE_ALPHA
	GL_COMPRESSED_INTENSITY
	GL_COMBINE
	GL_COMBINE_RGB
	GL_COMBINE_ALPHA
	GL_SOURCE0_RGB
	GL_SOURCE1_RGB
	GL_SOURCE2_RGB
	GL_SOURCE0_ALPHA
	GL_SOURCE1_ALPHA
	GL_SOURCE2_ALPHA
	GL_OPERAND0_RGB
	GL_OPERAND1_RGB
	GL_OPERAND2_RGB
	GL_OPERAND0_ALPHA
	GL_OPERAND1_ALPHA
	GL_OPERAND2_ALPHA
	GL_RGB_SCALE
	GL_ADD_SIGNED
	GL_INTERPOLATE
	GL_SUBTRACT
	GL_CONSTANT
	GL_PRIMARY_COLOR
	GL_PREVIOUS
	GL_DOT3_RGB
	GL_DOT3_RGBA
	GL_POINT_SIZE_MIN
	GL_POINT_SIZE_MAX
	GL_POINT_DISTANCE_ATTENUATION
	GL_GENERATE_MIPMAP
	GL_GENERATE_MIPMAP_HINT
	GL_FOG_COORDINATE_SOURCE
	GL_FOG_COORDINATE
	GL_FRAGMENT_DEPTH
	GL_CURRENT_FOG_COORDINATE
	GL_FOG_COORDINATE_ARRAY_TYPE
	GL_FOG_COORDINATE_ARRAY_STRIDE
	GL_FOG_COORDINATE_ARRAY_POINTER
	GL_FOG_COORDINATE_ARRAY
	GL_COLOR_SUM
	GL_CURRENT_SECONDARY_COLOR
	GL_SECONDARY_COLOR_ARRAY_SIZE
	GL_SECONDARY_COLOR_ARRAY_TYPE
	GL_SECONDARY_COLOR_ARRAY_STRIDE
	GL_SECONDARY_COLOR_ARRAY_POINTER
	GL_SECONDARY_COLOR_ARRAY
	GL_TEXTURE_FILTER_CONTROL
	GL_DEPTH_TEXTURE_MODE
	GL_COMPARE_R_TO_TEXTURE
	GL_VERTEX_ARRAY_BUFFER_BINDING
	GL_NORMAL_ARRAY_BUFFER_BINDING
	GL_COLOR_ARRAY_BUFFER_BINDING
	GL_INDEX_ARRAY_BUFFER_BINDING
	GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
	GL_EDGE_FLAG_ARRAY_BUFFER_BINDING
	GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING
	GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING
	GL_WEIGHT_ARRAY_BUFFER_BINDING
	GL_FOG_COORD_SRC
	GL_FOG_COORD
	GL_CURRENT_FOG_COORD
	GL_FOG_COORD_ARRAY_TYPE
	GL_FOG_COORD_ARRAY_STRIDE
	GL_FOG_COORD_ARRAY_POINTER
	GL_FOG_COORD_ARRAY
	GL_FOG_COORD_ARRAY_BUFFER_BINDING
	GL_SRC0_RGB
	GL_SRC1_RGB
	GL_SRC2_RGB
	GL_SRC0_ALPHA
	GL_SRC2_ALPHA
	GL_VERTEX_PROGRAM_TWO_SIDE
	GL_POINT_SPRITE
	GL_COORD_REPLACE
	GL_MAX_TEXTURE_COORDS
	GL_CURRENT_RASTER_SECONDARY_COLOR
	GL_SLUMINANCE_ALPHA
	GL_SLUMINANCE8_ALPHA8
	GL_SLUMINANCE
	GL_SLUMINANCE8
	GL_COMPRESSED_SLUMINANCE
	GL_COMPRESSED_SLUMINANCE_ALPHA
	GL_CLAMP_VERTEX_COLOR
	GL_CLAMP_FRAGMENT_COLOR
	GL_ALPHA_INTEGER
	GL_INDEX
	GL_TEXTURE_LUMINANCE_TYPE
	GL_TEXTURE_INTENSITY_TYPE
)

// TODO
pub fn draw_elements_base_vertex(mode u32, count int, type_ u32, indices voidptr, basevertex int) {
	C.glDrawElementsBaseVertex(mode, count, type_, indices, basevertex)
}

// TODO
pub fn draw_range_elements_base_vertex(mode u32, start u32, end u32, count int, type_ u32, indices voidptr, basevertex int) {
	C.glDrawRangeElementsBaseVertex(mode, start, end, count, type_, indices, basevertex)
}

// TODO
pub fn draw_elements_instanced_base_vertex(mode u32, count int, type_ u32, indices voidptr, instancecount int, basevertex int) {
	C.glDrawElementsInstancedBaseVertex(mode, count, type_, indices, instancecount, basevertex)
}

// TODO
pub fn multi_draw_elements_base_vertex(mode u32, count []int, type_ u32, indices *voidptr, drawcount int, basevertex []int) {
	C.glMultiDrawElementsBaseVertex(mode, count.data, type_, indices, drawcount, basevertex.data)
}

pub fn provoking_vertex(mode u32) {
	C.glProvokingVertex(mode)
}

pub fn fence_sync(condition u32, flags u32) voidptr {
	return C.glFenceSync(condition, flags)
}

pub fn is_sync(sync voidptr) bool {
	return C.glIsSync(sync)
}

pub fn delete_sync(sync voidptr) {
	C.glDeleteSync(sync)
}

pub fn client_wait_sync(sync voidptr, flags u32, timeout u64) u32 {
	return C.glClientWaitSync(sync, flags, timeout)
}

pub fn wait_sync(sync voidptr, flags u32, timeout u64) {
	C.glWaitSync(sync, flags, timeout)
}

// TODO
pub fn get_integer64v(pname u32, data []i64) {
	C.glGetInteger64v(pname, data.data)
}

// TODO
pub fn get_synciv(sync voidptr, pname u32, bufSize int, length []int, values []int) {
	C.glGetSynciv(sync, pname, bufSize, length.data, values.data)
}

// TODO
pub fn get_integer64i_v(target u32, index u32, data []i64) {
	C.glGetInteger64i_v(target, index, data.data)
}

// TODO
pub fn get_buffer_parameteri64v(target u32, pname u32, params []i64) {
	C.glGetBufferParameteri64v(target, pname, params.data)
}

pub fn framebuffer_texture(target u32, attachment u32, texture u32, level int) {
	C.glFramebufferTexture(target, attachment, texture, level)
}

pub fn tex_image2_d_multisample(target u32, samples int, internalformat u32, width int, height int, fixedsamplelocations bool) {
	C.glTexImage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations)
}

pub fn tex_image3_d_multisample(target u32, samples int, internalformat u32, width int, height int, depth int, fixedsamplelocations bool) {
	C.glTexImage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations)
}

// TODO
pub fn get_multisamplefv(pname u32, index u32, val []f32) {
	C.glGetMultisamplefv(pname, index, val.data)
}

pub fn sample_maski(maskNumber u32, mask u32) {
	C.glSampleMaski(maskNumber, mask)
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

pub fn array_element(i int) {
	C.glArrayElement(i)
}

// TODO
pub fn color_pointer(size int, type_ u32, stride int, pointer voidptr) {
	C.glColorPointer(size, type_, stride, pointer)
}

pub fn disable_client_state(array u32) {
	C.glDisableClientState(array)
}

// TODO
pub fn edge_flag_pointer(stride int, pointer voidptr) {
	C.glEdgeFlagPointer(stride, pointer)
}

pub fn enable_client_state(array u32) {
	C.glEnableClientState(array)
}

// TODO
pub fn index_pointer(type_ u32, stride int, pointer voidptr) {
	C.glIndexPointer(type_, stride, pointer)
}

// TODO
pub fn get_pointerv(pname u32, params *voidptr) {
	C.glGetPointerv(pname, params)
}

// TODO
pub fn interleaved_arrays(format u32, stride int, pointer voidptr) {
	C.glInterleavedArrays(format, stride, pointer)
}

// TODO
pub fn normal_pointer(type_ u32, stride int, pointer voidptr) {
	C.glNormalPointer(type_, stride, pointer)
}

// TODO
pub fn tex_coord_pointer(size int, type_ u32, stride int, pointer voidptr) {
	C.glTexCoordPointer(size, type_, stride, pointer)
}

// TODO
pub fn vertex_pointer(size int, type_ u32, stride int, pointer voidptr) {
	C.glVertexPointer(size, type_, stride, pointer)
}

// TODO
pub fn are_textures_resident(n int, textures []u32, residences []bool) bool {
	return C.glAreTexturesResident(n, textures.data, residences.data)
}

// TODO
pub fn prioritize_textures(n int, textures []u32, priorities []f32) {
	C.glPrioritizeTextures(n, textures.data, priorities.data)
}

pub fn indexub(c u8) {
	C.glIndexub(c)
}

// TODO
pub fn indexubv(c []u8) {
	C.glIndexubv(c.data)
}

pub fn pop_client_attrib() {
	C.glPopClientAttrib()
}

pub fn push_client_attrib(mask u32) {
	C.glPushClientAttrib(mask)
}

pub fn client_active_texture(texture u32) {
	C.glClientActiveTexture(texture)
}

pub fn multi_tex_coord1d(target u32, s f64) {
	C.glMultiTexCoord1d(target, s)
}

// TODO
pub fn multi_tex_coord1dv(target u32, v []f64) {
	C.glMultiTexCoord1dv(target, v.data)
}

pub fn multi_tex_coord1f(target u32, s f32) {
	C.glMultiTexCoord1f(target, s)
}

// TODO
pub fn multi_tex_coord1fv(target u32, v []f32) {
	C.glMultiTexCoord1fv(target, v.data)
}

pub fn multi_tex_coord1i(target u32, s int) {
	C.glMultiTexCoord1i(target, s)
}

// TODO
pub fn multi_tex_coord1iv(target u32, v []int) {
	C.glMultiTexCoord1iv(target, v.data)
}

pub fn multi_tex_coord1s(target u32, s i16) {
	C.glMultiTexCoord1s(target, s)
}

// TODO
pub fn multi_tex_coord1sv(target u32, v []i16) {
	C.glMultiTexCoord1sv(target, v.data)
}

pub fn multi_tex_coord2d(target u32, s f64, t f64) {
	C.glMultiTexCoord2d(target, s, t)
}

// TODO
pub fn multi_tex_coord2dv(target u32, v []f64) {
	C.glMultiTexCoord2dv(target, v.data)
}

pub fn multi_tex_coord2f(target u32, s f32, t f32) {
	C.glMultiTexCoord2f(target, s, t)
}

// TODO
pub fn multi_tex_coord2fv(target u32, v []f32) {
	C.glMultiTexCoord2fv(target, v.data)
}

pub fn multi_tex_coord2i(target u32, s int, t int) {
	C.glMultiTexCoord2i(target, s, t)
}

// TODO
pub fn multi_tex_coord2iv(target u32, v []int) {
	C.glMultiTexCoord2iv(target, v.data)
}

pub fn multi_tex_coord2s(target u32, s i16, t i16) {
	C.glMultiTexCoord2s(target, s, t)
}

// TODO
pub fn multi_tex_coord2sv(target u32, v []i16) {
	C.glMultiTexCoord2sv(target, v.data)
}

pub fn multi_tex_coord3d(target u32, s f64, t f64, r f64) {
	C.glMultiTexCoord3d(target, s, t, r)
}

// TODO
pub fn multi_tex_coord3dv(target u32, v []f64) {
	C.glMultiTexCoord3dv(target, v.data)
}

pub fn multi_tex_coord3f(target u32, s f32, t f32, r f32) {
	C.glMultiTexCoord3f(target, s, t, r)
}

// TODO
pub fn multi_tex_coord3fv(target u32, v []f32) {
	C.glMultiTexCoord3fv(target, v.data)
}

pub fn multi_tex_coord3i(target u32, s int, t int, r int) {
	C.glMultiTexCoord3i(target, s, t, r)
}

// TODO
pub fn multi_tex_coord3iv(target u32, v []int) {
	C.glMultiTexCoord3iv(target, v.data)
}

pub fn multi_tex_coord3s(target u32, s i16, t i16, r i16) {
	C.glMultiTexCoord3s(target, s, t, r)
}

// TODO
pub fn multi_tex_coord3sv(target u32, v []i16) {
	C.glMultiTexCoord3sv(target, v.data)
}

pub fn multi_tex_coord4d(target u32, s f64, t f64, r f64, q f64) {
	C.glMultiTexCoord4d(target, s, t, r, q)
}

// TODO
pub fn multi_tex_coord4dv(target u32, v []f64) {
	C.glMultiTexCoord4dv(target, v.data)
}

pub fn multi_tex_coord4f(target u32, s f32, t f32, r f32, q f32) {
	C.glMultiTexCoord4f(target, s, t, r, q)
}

// TODO
pub fn multi_tex_coord4fv(target u32, v []f32) {
	C.glMultiTexCoord4fv(target, v.data)
}

pub fn multi_tex_coord4i(target u32, s int, t int, r int, q int) {
	C.glMultiTexCoord4i(target, s, t, r, q)
}

// TODO
pub fn multi_tex_coord4iv(target u32, v []int) {
	C.glMultiTexCoord4iv(target, v.data)
}

pub fn multi_tex_coord4s(target u32, s i16, t i16, r i16, q i16) {
	C.glMultiTexCoord4s(target, s, t, r, q)
}

// TODO
pub fn multi_tex_coord4sv(target u32, v []i16) {
	C.glMultiTexCoord4sv(target, v.data)
}

// TODO
pub fn load_transpose_matrixf(m []f32) {
	C.glLoadTransposeMatrixf(m.data)
}

// TODO
pub fn load_transpose_matrixd(m []f64) {
	C.glLoadTransposeMatrixd(m.data)
}

// TODO
pub fn mult_transpose_matrixf(m []f32) {
	C.glMultTransposeMatrixf(m.data)
}

// TODO
pub fn mult_transpose_matrixd(m []f64) {
	C.glMultTransposeMatrixd(m.data)
}

pub fn fog_coordf(coord f32) {
	C.glFogCoordf(coord)
}

// TODO
pub fn fog_coordfv(coord []f32) {
	C.glFogCoordfv(coord.data)
}

pub fn fog_coordd(coord f64) {
	C.glFogCoordd(coord)
}

// TODO
pub fn fog_coorddv(coord []f64) {
	C.glFogCoorddv(coord.data)
}

// TODO
pub fn fog_coord_pointer(type_ u32, stride int, pointer voidptr) {
	C.glFogCoordPointer(type_, stride, pointer)
}

pub fn secondary_color3b(red i8, green i8, blue i8) {
	C.glSecondaryColor3b(red, green, blue)
}

// TODO
pub fn secondary_color3bv(v []i8) {
	C.glSecondaryColor3bv(v.data)
}

pub fn secondary_color3d(red f64, green f64, blue f64) {
	C.glSecondaryColor3d(red, green, blue)
}

// TODO
pub fn secondary_color3dv(v []f64) {
	C.glSecondaryColor3dv(v.data)
}

pub fn secondary_color3f(red f32, green f32, blue f32) {
	C.glSecondaryColor3f(red, green, blue)
}

// TODO
pub fn secondary_color3fv(v []f32) {
	C.glSecondaryColor3fv(v.data)
}

pub fn secondary_color3i(red int, green int, blue int) {
	C.glSecondaryColor3i(red, green, blue)
}

// TODO
pub fn secondary_color3iv(v []int) {
	C.glSecondaryColor3iv(v.data)
}

pub fn secondary_color3s(red i16, green i16, blue i16) {
	C.glSecondaryColor3s(red, green, blue)
}

// TODO
pub fn secondary_color3sv(v []i16) {
	C.glSecondaryColor3sv(v.data)
}

pub fn secondary_color3ub(red u8, green u8, blue u8) {
	C.glSecondaryColor3ub(red, green, blue)
}

// TODO
pub fn secondary_color3ubv(v []u8) {
	C.glSecondaryColor3ubv(v.data)
}

pub fn secondary_color3ui(red u32, green u32, blue u32) {
	C.glSecondaryColor3ui(red, green, blue)
}

// TODO
pub fn secondary_color3uiv(v []u32) {
	C.glSecondaryColor3uiv(v.data)
}

pub fn secondary_color3us(red u16, green u16, blue u16) {
	C.glSecondaryColor3us(red, green, blue)
}

// TODO
pub fn secondary_color3usv(v []u16) {
	C.glSecondaryColor3usv(v.data)
}

// TODO
pub fn secondary_color_pointer(size int, type_ u32, stride int, pointer voidptr) {
	C.glSecondaryColorPointer(size, type_, stride, pointer)
}

pub fn window_pos2d(x f64, y f64) {
	C.glWindowPos2d(x, y)
}

// TODO
pub fn window_pos2dv(v []f64) {
	C.glWindowPos2dv(v.data)
}

pub fn window_pos2f(x f32, y f32) {
	C.glWindowPos2f(x, y)
}

// TODO
pub fn window_pos2fv(v []f32) {
	C.glWindowPos2fv(v.data)
}

pub fn window_pos2i(x int, y int) {
	C.glWindowPos2i(x, y)
}

// TODO
pub fn window_pos2iv(v []int) {
	C.glWindowPos2iv(v.data)
}

pub fn window_pos2s(x i16, y i16) {
	C.glWindowPos2s(x, y)
}

// TODO
pub fn window_pos2sv(v []i16) {
	C.glWindowPos2sv(v.data)
}

pub fn window_pos3d(x f64, y f64, z f64) {
	C.glWindowPos3d(x, y, z)
}

// TODO
pub fn window_pos3dv(v []f64) {
	C.glWindowPos3dv(v.data)
}

pub fn window_pos3f(x f32, y f32, z f32) {
	C.glWindowPos3f(x, y, z)
}

// TODO
pub fn window_pos3fv(v []f32) {
	C.glWindowPos3fv(v.data)
}

pub fn window_pos3i(x int, y int, z int) {
	C.glWindowPos3i(x, y, z)
}

// TODO
pub fn window_pos3iv(v []int) {
	C.glWindowPos3iv(v.data)
}

pub fn window_pos3s(x i16, y i16, z i16) {
	C.glWindowPos3s(x, y, z)
}

// TODO
pub fn window_pos3sv(v []i16) {
	C.glWindowPos3sv(v.data)
}
