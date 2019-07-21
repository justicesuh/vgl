module gl31

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_SAMPLER_2D_RECT
	GL_SAMPLER_2D_RECT_SHADOW
	GL_SAMPLER_BUFFER
	GL_INT_SAMPLER_2D_RECT
	GL_INT_SAMPLER_BUFFER
	GL_UNSIGNED_INT_SAMPLER_2D_RECT
	GL_UNSIGNED_INT_SAMPLER_BUFFER
	GL_TEXTURE_BUFFER
	GL_MAX_TEXTURE_BUFFER_SIZE
	GL_TEXTURE_BINDING_BUFFER
	GL_TEXTURE_BUFFER_DATA_STORE_BINDING
	GL_TEXTURE_RECTANGLE
	GL_TEXTURE_BINDING_RECTANGLE
	GL_PROXY_TEXTURE_RECTANGLE
	GL_MAX_RECTANGLE_TEXTURE_SIZE
	GL_R8_SNORM
	GL_RG8_SNORM
	GL_RGB8_SNORM
	GL_RGBA8_SNORM
	GL_R16_SNORM
	GL_RG16_SNORM
	GL_RGB16_SNORM
	GL_RGBA16_SNORM
	GL_SIGNED_NORMALIZED
	GL_PRIMITIVE_RESTART
	GL_PRIMITIVE_RESTART_INDEX
	GL_COPY_READ_BUFFER
	GL_COPY_WRITE_BUFFER
	GL_UNIFORM_BUFFER
	GL_UNIFORM_BUFFER_BINDING
	GL_UNIFORM_BUFFER_START
	GL_UNIFORM_BUFFER_SIZE
	GL_MAX_VERTEX_UNIFORM_BLOCKS
	GL_MAX_GEOMETRY_UNIFORM_BLOCKS
	GL_MAX_FRAGMENT_UNIFORM_BLOCKS
	GL_MAX_COMBINED_UNIFORM_BLOCKS
	GL_MAX_UNIFORM_BUFFER_BINDINGS
	GL_MAX_UNIFORM_BLOCK_SIZE
	GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
	GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
	GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
	GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
	GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
	GL_ACTIVE_UNIFORM_BLOCKS
	GL_UNIFORM_TYPE
	GL_UNIFORM_SIZE
	GL_UNIFORM_NAME_LENGTH
	GL_UNIFORM_BLOCK_INDEX
	GL_UNIFORM_OFFSET
	GL_UNIFORM_ARRAY_STRIDE
	GL_UNIFORM_MATRIX_STRIDE
	GL_UNIFORM_IS_ROW_MAJOR
	GL_UNIFORM_BLOCK_BINDING
	GL_UNIFORM_BLOCK_DATA_SIZE
	GL_UNIFORM_BLOCK_NAME_LENGTH
	GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
	GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
	GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
	GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
	GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
	GL_INVALID_INDEX
)

pub fn init_glad() int {
	return C.gladLoadGL()
}

pub fn draw_arrays_instanced(mode u32, first int, count int, instancecount int) {
	C.glDrawArraysInstanced(mode, first, count, instancecount)
}

// TODO
pub fn draw_elements_instanced(mode u32, count int, type_ u32, indices voidptr, instancecount int) {
	C.glDrawElementsInstanced(mode, count, type_, indices, instancecount)
}

pub fn tex_buffer(target u32, internalformat u32, buffer u32) {
	C.glTexBuffer(target, internalformat, buffer)
}

pub fn primitive_restart_index(index u32) {
	C.glPrimitiveRestartIndex(index)
}

pub fn copy_buffer_sub_data(readTarget u32, writeTarget u32, readOffset []int, writeOffset []int, size []int) {
	C.glCopyBufferSubData(readTarget, writeTarget, readOffset, writeOffset, size)
}

// TODO
pub fn get_uniform_indices(program u32, uniformCount int, uniformNames string, uniformIndices []u32) {
	C.glGetUniformIndices(program, uniformCount, uniformNames.str, uniformIndices.data)
}

// TODO
pub fn get_active_uniformsiv(program u32, uniformCount int, uniformIndices []u32, pname u32, params []int) {
	C.glGetActiveUniformsiv(program, uniformCount, uniformIndices.data, pname, params.data)
}

// TODO
pub fn get_active_uniform_name(program u32, uniformIndex u32, bufSize int, length []int, uniformName string) {
	C.glGetActiveUniformName(program, uniformIndex, bufSize, length.data, uniformName.str)
}

// TODO
pub fn get_uniform_block_index(program u32, uniformBlockName string) u32 {
	return C.glGetUniformBlockIndex(program, uniformBlockName.str)
}

// TODO
pub fn get_active_uniform_blockiv(program u32, uniformBlockIndex u32, pname u32, params []int) {
	C.glGetActiveUniformBlockiv(program, uniformBlockIndex, pname, params.data)
}

// TODO
pub fn get_active_uniform_block_name(program u32, uniformBlockIndex u32, bufSize int, length []int, uniformBlockName string) {
	C.glGetActiveUniformBlockName(program, uniformBlockIndex, bufSize, length.data, uniformBlockName.str)
}

pub fn uniform_block_binding(program u32, uniformBlockIndex u32, uniformBlockBinding u32) {
	C.glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding)
}

pub fn bind_buffer_range(target u32, index u32, buffer u32, offset []int, size []int) {
	C.glBindBufferRange(target, index, buffer, offset, size)
}

pub fn bind_buffer_base(target u32, index u32, buffer u32) {
	C.glBindBufferBase(target, index, buffer)
}

// TODO
pub fn get_integeri_v(target u32, index u32, data []int) {
	C.glGetIntegeri_v(target, index, data.data)
}
