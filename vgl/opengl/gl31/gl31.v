module gl31

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o
#include <glad.h>

import const (
	GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
	GL_ACTIVE_UNIFORM_BLOCKS
	GL_COPY_READ_BUFFER
	GL_COPY_WRITE_BUFFER
	GL_INT_SAMPLER_2D_RECT
	GL_INT_SAMPLER_BUFFER
	GL_INVALID_INDEX
	GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
	GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
	GL_MAX_COMBINED_UNIFORM_BLOCKS
	GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
	GL_MAX_FRAGMENT_UNIFORM_BLOCKS
	GL_MAX_GEOMETRY_UNIFORM_BLOCKS
	GL_MAX_RECTANGLE_TEXTURE_SIZE
	GL_MAX_TEXTURE_BUFFER_SIZE
	GL_MAX_UNIFORM_BLOCK_SIZE
	GL_MAX_UNIFORM_BUFFER_BINDINGS
	GL_MAX_VERTEX_UNIFORM_BLOCKS
	GL_PRIMITIVE_RESTART
	GL_PRIMITIVE_RESTART_INDEX
	GL_PROXY_TEXTURE_RECTANGLE
	GL_R16_SNORM
	GL_R8_SNORM
	GL_RG16_SNORM
	GL_RG8_SNORM
	GL_RGB16_SNORM
	GL_RGB8_SNORM
	GL_RGBA16_SNORM
	GL_RGBA8_SNORM
	GL_SAMPLER_2D_RECT
	GL_SAMPLER_2D_RECT_SHADOW
	GL_SAMPLER_BUFFER
	GL_SIGNED_NORMALIZED
	GL_TEXTURE_BINDING_BUFFER
	GL_TEXTURE_BINDING_RECTANGLE
	GL_TEXTURE_BUFFER
	GL_TEXTURE_BUFFER_DATA_STORE_BINDING
	GL_TEXTURE_RECTANGLE
	GL_UNIFORM_ARRAY_STRIDE
	GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
	GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
	GL_UNIFORM_BLOCK_BINDING
	GL_UNIFORM_BLOCK_DATA_SIZE
	GL_UNIFORM_BLOCK_INDEX
	GL_UNIFORM_BLOCK_NAME_LENGTH
	GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
	GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
	GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
	GL_UNIFORM_BUFFER
	GL_UNIFORM_BUFFER_BINDING
	GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
	GL_UNIFORM_BUFFER_SIZE
	GL_UNIFORM_BUFFER_START
	GL_UNIFORM_IS_ROW_MAJOR
	GL_UNIFORM_MATRIX_STRIDE
	GL_UNIFORM_NAME_LENGTH
	GL_UNIFORM_OFFSET
	GL_UNIFORM_SIZE
	GL_UNIFORM_TYPE
	GL_UNSIGNED_INT_SAMPLER_2D_RECT
	GL_UNSIGNED_INT_SAMPLER_BUFFER
)

pub fn copy_buffer_sub_data(read_target int, write_target int, read_offset i64, write_offset i64, size i64) {
	C.glCopyBufferSubData(read_target, write_target, read_offset, write_offset, size)
}

pub fn draw_arrays_instanced(mode int, first int, count int, primcount int) {
	C.glDrawArraysInstanced(mode, first, count, primcount)
}

pub fn draw_elements_instanced(mode int, count int, type int, indices i64, primcount int) {
	C.glDrawElementsInstanced(mode, count, type, indices, primcount)
}

pub fn draw_elements_instanced(mode int, type int, indices voidptr, primcount int) {
	C.glDrawElementsInstanced(mode, type, indices, primcount)
}

pub fn draw_elements_instanced(mode int, indices voidptr, primcount int) {
	C.glDrawElementsInstanced(mode, indices, primcount)
}

pub fn draw_elements_instanced(mode int, indices voidptr, primcount int) {
	C.glDrawElementsInstanced(mode, indices, primcount)
}

pub fn draw_elements_instanced(mode int, indices voidptr, primcount int) {
	C.glDrawElementsInstanced(mode, indices, primcount)
}

pub fn get_active_uniform_blocki(program int, uniform_block_index int, pname int) int {
	return C.glGetActiveUniformBlocki(program, uniform_block_index, pname)
}

pub fn get_active_uniform_blockiv(program int, uniform_block_index int, pname int, params []int) {
	C.glGetActiveUniformBlockiv(program, uniform_block_index, pname, params)
}

pub fn get_active_uniform_blockiv(program int, uniform_block_index int, pname int, params voidptr) {
	C.glGetActiveUniformBlockiv(program, uniform_block_index, pname, params)
}

pub fn get_active_uniform_block_name(program int, uniform_block_index int) string {
	return C.glGetActiveUniformBlockName(program, uniform_block_index)
}

pub fn get_active_uniform_block_name(program int, uniform_block_index int, buf_size int) string {
	return C.glGetActiveUniformBlockName(program, uniform_block_index, buf_size)
}

pub fn get_active_uniform_block_name(program int, uniform_block_index int, length []int, uniform_block_name voidptr) {
	C.glGetActiveUniformBlockName(program, uniform_block_index, length, uniform_block_name)
}

pub fn get_active_uniform_block_name(program int, uniform_block_index int, length voidptr, uniform_block_name voidptr) {
	C.glGetActiveUniformBlockName(program, uniform_block_index, length, uniform_block_name)
}

pub fn get_active_uniform_name(program int, uniform_index int) string {
	return C.glGetActiveUniformName(program, uniform_index)
}

pub fn get_active_uniform_name(program int, uniform_index int, buf_size int) string {
	return C.glGetActiveUniformName(program, uniform_index, buf_size)
}

pub fn get_active_uniform_name(program int, uniform_index int, length []int, uniform_name voidptr) {
	C.glGetActiveUniformName(program, uniform_index, length, uniform_name)
}

pub fn get_active_uniform_name(program int, uniform_index int, length voidptr, uniform_name voidptr) {
	C.glGetActiveUniformName(program, uniform_index, length, uniform_name)
}

pub fn get_active_uniformsi(program int, uniform_index int, pname int) int {
	return C.glGetActiveUniformsi(program, uniform_index, pname)
}

pub fn get_active_uniformsiv(program int, uniform_indices []int, pname int, params []int) {
	C.glGetActiveUniformsiv(program, uniform_indices, pname, params)
}

pub fn get_active_uniformsiv(program int, uniform_indices voidptr, pname int, params voidptr) {
	C.glGetActiveUniformsiv(program, uniform_indices, pname, params)
}

pub fn get_uniform_block_index(program int, uniform_block_name byteptr) int {
	return C.glGetUniformBlockIndex(program, uniform_block_name)
}

pub fn get_uniform_block_index(program int, uniform_block_name voidptr) int {
	return C.glGetUniformBlockIndex(program, uniform_block_name)
}

pub fn get_uniform_indices(program int, uniform_name byteptr) int {
	return C.glGetUniformIndices(program, uniform_name)
}

pub fn get_uniform_indices(program int, uniform_names *byteptr, uniform_indices voidptr) {
	C.glGetUniformIndices(program, uniform_names, uniform_indices)
}

pub fn get_uniform_indices(program int, uniform_names *voidptr, uniform_indices []int) {
	C.glGetUniformIndices(program, uniform_names, uniform_indices)
}

pub fn get_uniform_indices(program int, uniform_names *voidptr, uniform_indices voidptr) {
	C.glGetUniformIndices(program, uniform_names, uniform_indices)
}

pub fn primitive_restart_index(index int) {
	C.glPrimitiveRestartIndex(index)
}

pub fn tex_buffer(target int, internalformat int, buffer int) {
	C.glTexBuffer(target, internalformat, buffer)
}

pub fn uniform_block_binding(program int, uniform_block_index int, uniform_block_binding int) {
	C.glUniformBlockBinding(program, uniform_block_index, uniform_block_binding)
}
