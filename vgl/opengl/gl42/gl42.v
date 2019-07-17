module gl42

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o
#include <glad.h>

import const (
	GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
	GL_ALL_BARRIER_BITS
	GL_ATOMIC_COUNTER_BARRIER_BIT
	GL_ATOMIC_COUNTER_BUFFER
	GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
	GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
	GL_ATOMIC_COUNTER_BUFFER_BINDING
	GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
	GL_ATOMIC_COUNTER_BUFFER_SIZE
	GL_ATOMIC_COUNTER_BUFFER_START
	GL_BUFFER_UPDATE_BARRIER_BIT
	GL_COMMAND_BARRIER_BIT
	GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT
	GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT
	GL_COMPRESSED_RGBA_BPTC_UNORM
	GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM
	GL_COPY_READ_BUFFER_BINDING
	GL_COPY_WRITE_BUFFER_BINDING
	GL_ELEMENT_ARRAY_BARRIER_BIT
	GL_FRAMEBUFFER_BARRIER_BIT
	GL_IMAGE_1D
	GL_IMAGE_1D_ARRAY
	GL_IMAGE_2D
	GL_IMAGE_2D_ARRAY
	GL_IMAGE_2D_MULTISAMPLE
	GL_IMAGE_2D_MULTISAMPLE_ARRAY
	GL_IMAGE_2D_RECT
	GL_IMAGE_3D
	GL_IMAGE_BINDING_ACCESS
	GL_IMAGE_BINDING_FORMAT
	GL_IMAGE_BINDING_LAYER
	GL_IMAGE_BINDING_LAYERED
	GL_IMAGE_BINDING_LEVEL
	GL_IMAGE_BINDING_NAME
	GL_IMAGE_BUFFER
	GL_IMAGE_CUBE
	GL_IMAGE_CUBE_MAP_ARRAY
	GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
	GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
	GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
	GL_INT_IMAGE_1D
	GL_INT_IMAGE_1D_ARRAY
	GL_INT_IMAGE_2D
	GL_INT_IMAGE_2D_ARRAY
	GL_INT_IMAGE_2D_MULTISAMPLE
	GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
	GL_INT_IMAGE_2D_RECT
	GL_INT_IMAGE_3D
	GL_INT_IMAGE_BUFFER
	GL_INT_IMAGE_CUBE
	GL_INT_IMAGE_CUBE_MAP_ARRAY
	GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS
	GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
	GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
	GL_MAX_COMBINED_ATOMIC_COUNTERS
	GL_MAX_COMBINED_IMAGE_UNIFORMS
	GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
	GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
	GL_MAX_FRAGMENT_ATOMIC_COUNTERS
	GL_MAX_FRAGMENT_IMAGE_UNIFORMS
	GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
	GL_MAX_GEOMETRY_ATOMIC_COUNTERS
	GL_MAX_GEOMETRY_IMAGE_UNIFORMS
	GL_MAX_IMAGE_SAMPLES
	GL_MAX_IMAGE_UNITS
	GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
	GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
	GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
	GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
	GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
	GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
	GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
	GL_MAX_VERTEX_ATOMIC_COUNTERS
	GL_MAX_VERTEX_IMAGE_UNIFORMS
	GL_MIN_MAP_BUFFER_ALIGNMENT
	GL_NUM_SAMPLE_COUNTS
	GL_PACK_COMPRESSED_BLOCK_DEPTH
	GL_PACK_COMPRESSED_BLOCK_HEIGHT
	GL_PACK_COMPRESSED_BLOCK_SIZE
	GL_PACK_COMPRESSED_BLOCK_WIDTH
	GL_PIXEL_BUFFER_BARRIER_BIT
	GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
	GL_TEXTURE_FETCH_BARRIER_BIT
	GL_TEXTURE_IMMUTABLE_FORMAT
	GL_TEXTURE_UPDATE_BARRIER_BIT
	GL_TRANSFORM_FEEDBACK_ACTIVE
	GL_TRANSFORM_FEEDBACK_BARRIER_BIT
	GL_TRANSFORM_FEEDBACK_PAUSED
	GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
	GL_UNIFORM_BARRIER_BIT
	GL_UNPACK_COMPRESSED_BLOCK_DEPTH
	GL_UNPACK_COMPRESSED_BLOCK_HEIGHT
	GL_UNPACK_COMPRESSED_BLOCK_SIZE
	GL_UNPACK_COMPRESSED_BLOCK_WIDTH
	GL_UNSIGNED_INT_ATOMIC_COUNTER
	GL_UNSIGNED_INT_IMAGE_1D
	GL_UNSIGNED_INT_IMAGE_1D_ARRAY
	GL_UNSIGNED_INT_IMAGE_2D
	GL_UNSIGNED_INT_IMAGE_2D_ARRAY
	GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
	GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
	GL_UNSIGNED_INT_IMAGE_2D_RECT
	GL_UNSIGNED_INT_IMAGE_3D
	GL_UNSIGNED_INT_IMAGE_BUFFER
	GL_UNSIGNED_INT_IMAGE_CUBE
	GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
	GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
)

pub fn bind_image_texture(unit int, texture int, level int, layered bool, layer int, access int, format int) {
	C.glBindImageTexture(unit, texture, level, layered, layer, access, format)
}

pub fn draw_arrays_instanced_base_instance(mode int, first int, count int, primcount int, baseinstance int) {
	C.glDrawArraysInstancedBaseInstance(mode, first, count, primcount, baseinstance)
}

pub fn draw_elements_instanced_base_instance(mode int, count int, type int, indices i64, primcount int, baseinstance int) {
	C.glDrawElementsInstancedBaseInstance(mode, count, type, indices, primcount, baseinstance)
}

pub fn draw_elements_instanced_base_instance(mode int, type int, indices voidptr, primcount int, baseinstance int) {
	C.glDrawElementsInstancedBaseInstance(mode, type, indices, primcount, baseinstance)
}

pub fn draw_elements_instanced_base_instance(mode int, indices voidptr, primcount int, baseinstance int) {
	C.glDrawElementsInstancedBaseInstance(mode, indices, primcount, baseinstance)
}

pub fn draw_elements_instanced_base_instance(mode int, indices voidptr, primcount int, baseinstance int) {
	C.glDrawElementsInstancedBaseInstance(mode, indices, primcount, baseinstance)
}

pub fn draw_elements_instanced_base_instance(mode int, indices voidptr, primcount int, baseinstance int) {
	C.glDrawElementsInstancedBaseInstance(mode, indices, primcount, baseinstance)
}

pub fn draw_elements_instanced_base_vertex_base_instance(mode int, count int, type int, indices i64, primcount int, basevertex int, baseinstance int) {
	C.glDrawElementsInstancedBaseVertexBaseInstance(mode, count, type, indices, primcount, basevertex, baseinstance)
}

pub fn draw_elements_instanced_base_vertex_base_instance(mode int, type int, indices voidptr, primcount int, basevertex int, baseinstance int) {
	C.glDrawElementsInstancedBaseVertexBaseInstance(mode, type, indices, primcount, basevertex, baseinstance)
}

pub fn draw_elements_instanced_base_vertex_base_instance(mode int, indices voidptr, primcount int, basevertex int, baseinstance int) {
	C.glDrawElementsInstancedBaseVertexBaseInstance(mode, indices, primcount, basevertex, baseinstance)
}

pub fn draw_elements_instanced_base_vertex_base_instance(mode int, indices voidptr, primcount int, basevertex int, baseinstance int) {
	C.glDrawElementsInstancedBaseVertexBaseInstance(mode, indices, primcount, basevertex, baseinstance)
}

pub fn draw_elements_instanced_base_vertex_base_instance(mode int, indices voidptr, primcount int, basevertex int, baseinstance int) {
	C.glDrawElementsInstancedBaseVertexBaseInstance(mode, indices, primcount, basevertex, baseinstance)
}

pub fn draw_transform_feedback_instanced(mode int, id int, primcount int) {
	C.glDrawTransformFeedbackInstanced(mode, id, primcount)
}

pub fn draw_transform_feedback_stream_instanced(mode int, id int, stream int, primcount int) {
	C.glDrawTransformFeedbackStreamInstanced(mode, id, stream, primcount)
}

pub fn get_active_atomic_counter_bufferi(program int, buffer_index int, pname int) int {
	return C.glGetActiveAtomicCounterBufferi(program, buffer_index, pname)
}

pub fn get_active_atomic_counter_bufferiv(program int, buffer_index int, pname int, params []int) {
	C.glGetActiveAtomicCounterBufferiv(program, buffer_index, pname, params)
}

pub fn get_active_atomic_counter_bufferiv(program int, buffer_index int, pname int, params voidptr) {
	C.glGetActiveAtomicCounterBufferiv(program, buffer_index, pname, params)
}

pub fn get_internalformati(target int, internalformat int, pname int) int {
	return C.glGetInternalformati(target, internalformat, pname)
}

pub fn get_internalformativ(target int, internalformat int, pname int, params []int) {
	C.glGetInternalformativ(target, internalformat, pname, params)
}

pub fn get_internalformativ(target int, internalformat int, pname int, params voidptr) {
	C.glGetInternalformativ(target, internalformat, pname, params)
}

pub fn memory_barrier(barriers int) {
	C.glMemoryBarrier(barriers)
}

pub fn tex_storage1d(target int, levels int, internalformat int, width int) {
	C.glTexStorage1D(target, levels, internalformat, width)
}

pub fn tex_storage2d(target int, levels int, internalformat int, width int, height int) {
	C.glTexStorage2D(target, levels, internalformat, width, height)
}

pub fn tex_storage3d(target int, levels int, internalformat int, width int, height int, depth int) {
	C.glTexStorage3D(target, levels, internalformat, width, height, depth)
}
