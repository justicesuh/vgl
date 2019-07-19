module gl32

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_ALREADY_SIGNALED
	GL_CONDITION_SATISFIED
	GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
	GL_CONTEXT_CORE_PROFILE_BIT
	GL_CONTEXT_PROFILE_MASK
	GL_DEPTH_CLAMP
	GL_FIRST_VERTEX_CONVENTION
	GL_FRAMEBUFFER_ATTACHMENT_LAYERED
	GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
	GL_GEOMETRY_INPUT_TYPE
	GL_GEOMETRY_OUTPUT_TYPE
	GL_GEOMETRY_SHADER
	GL_GEOMETRY_VERTICES_OUT
	GL_INT_SAMPLER_2D_MULTISAMPLE
	GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
	GL_LAST_VERTEX_CONVENTION
	GL_LINE_STRIP_ADJACENCY
	GL_LINES_ADJACENCY
	GL_MAX_COLOR_TEXTURE_SAMPLES
	GL_MAX_DEPTH_TEXTURE_SAMPLES
	GL_MAX_FRAGMENT_INPUT_COMPONENTS
	GL_MAX_GEOMETRY_INPUT_COMPONENTS
	GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
	GL_MAX_GEOMETRY_OUTPUT_VERTICES
	GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
	GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
	GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
	GL_MAX_INTEGER_SAMPLES
	GL_MAX_SAMPLE_MASK_WORDS
	GL_MAX_SERVER_WAIT_TIMEOUT
	GL_MAX_VERTEX_OUTPUT_COMPONENTS
	GL_OBJECT_TYPE
	GL_PROGRAM_POINT_SIZE
	GL_PROVOKING_VERTEX
	GL_PROXY_TEXTURE_2D_MULTISAMPLE
	GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
	GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
	GL_SAMPLE_MASK
	GL_SAMPLE_MASK_VALUE
	GL_SAMPLE_POSITION
	GL_SAMPLER_2D_MULTISAMPLE
	GL_SAMPLER_2D_MULTISAMPLE_ARRAY
	GL_SIGNALED
	GL_SYNC_CONDITION
	GL_SYNC_FENCE
	GL_SYNC_FLAGS
	GL_SYNC_FLUSH_COMMANDS_BIT
	GL_SYNC_GPU_COMMANDS_COMPLETE
	GL_SYNC_STATUS
	GL_TEXTURE_2D_MULTISAMPLE
	GL_TEXTURE_2D_MULTISAMPLE_ARRAY
	GL_TEXTURE_BINDING_2D_MULTISAMPLE
	GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
	GL_TEXTURE_CUBE_MAP_SEAMLESS
	GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
	GL_TEXTURE_SAMPLES
	GL_TIMEOUT_EXPIRED
	GL_TIMEOUT_IGNORED
	GL_TRIANGLE_STRIP_ADJACENCY
	GL_TRIANGLES_ADJACENCY
	GL_UNSIGNALED
	GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
	GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
	GL_WAIT_FAILED
)

pub fn client_wait_sync(sync i64, flags int, timeout i64) int {
	return C.glClientWaitSync(sync, flags, timeout)
}

pub fn delete_sync(sync i64) {
	C.glDeleteSync(sync)
}

// TODO
pub fn draw_elements_base_vertex(mode int, count int typ int indices voidptr, basevertex int) {
	C.glDrawElementsBaseVertex(mode, count, typ, indices, basevertex)
}

// TODO
pub fn draw_elements_instanced_base_vertex(mode int, type int, indices voidptr, primcount int, basevertex int) {
	C.glDrawElementsInstancedBaseVertex(mode, type, indices, primcount, basevertex)
}

// TODO
pub fn draw_range_elements_base_vertex(mode int, start int, end int, indices voidptr, basevertex int) {
	C.glDrawRangeElementsBaseVertex(mode, start, end, indices, basevertex)
}

pub fn fence_sync(condition int, flags int) i64 {
	return C.glFenceSync(condition, flags)
}

pub fn framebuffer_texture(target int, attachment int, texture int, level int) {
	C.glFramebufferTexture(target, attachment, texture, level)
}

pub fn get_buffer_parameteri64(target int, pname int) i64 {
	return C.glGetBufferParameteri64(target, pname)
}

pub fn get_buffer_parameteri64v(target int, pname int, params []i64) {
	C.glGetBufferParameteri64v(target, pname, params.data)
}

pub fn get_integer64(pname int) i64 {
	return C.glGetInteger64(pname)
}

pub fn get_integer64i(pname int, index int) i64 {
	return C.glGetInteger64i(pname, index)
}

pub fn get_integer64i_v(pname int, index int, params []i64) {
	C.glGetInteger64i_v(pname, index, params.data)
}

pub fn get_integer64v(pname int, params []i64) {
	C.glGetInteger64v(pname, params.data)
}

pub fn get_multisamplef(pname int, index int) f32 {
	return C.glGetMultisamplef(pname, index)
}

pub fn get_multisamplefv(pname int, index int, val []f32) {
	C.glGetMultisamplefv(pname, index, val.data)
}

pub fn get_synci(sync i64, pname int, length voidptr) int {
	return C.glGetSynci(sync, pname, length)
}

pub fn get_synciv(sync i64, pname int, length []int, values []int) {
	C.glGetSynciv(sync, pname, length, values.data)
}

pub fn is_sync(sync i64) bool {
	return C.glIsSync(sync)
}

// TODO
pub fn multi_draw_elements_base_vertex(mode int, count []int, type int, indices *voidptr, basevertex []int) {
	C.glMultiDrawElementsBaseVertex(mode, count.data, type, indices, basevertex)
}

pub fn provoking_vertex(mode int) {
	C.glProvokingVertex(mode)
}

pub fn sample_maski(index int, mask int) {
	C.glSampleMaski(index, mask)
}

pub fn tex_image2_d_multisample(target int, samples int, internalformat int, width int, height int, fixedsamplelocations bool) {
	C.glTexImage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations)
}

pub fn tex_image3_d_multisample(target int, samples int, internalformat int, width int, height int, depth int, fixedsamplelocations bool) {
	C.glTexImage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations)
}

pub fn wait_sync(sync i64, flags int, timeout i64) {
	C.glWaitSync(sync, flags, timeout)
}
