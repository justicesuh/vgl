module gl46

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o
#include <glad.h>

import const (
	GL_CLIPPING_INPUT_PRIMITIVES
	GL_CLIPPING_OUTPUT_PRIMITIVES
	GL_COMPUTE_SHADER_INVOCATIONS
	GL_CONTEXT_FLAG_NO_ERROR_BIT
	GL_FRAGMENT_SHADER_INVOCATIONS
	GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED
	GL_MAX_TEXTURE_MAX_ANISOTROPY
	GL_NUM_SPIR_V_EXTENSIONS
	GL_PARAMETER_BUFFER
	GL_PARAMETER_BUFFER_BINDING
	GL_POLYGON_OFFSET_CLAMP
	GL_PRIMITIVES_SUBMITTED
	GL_SHADER_BINARY_FORMAT_SPIR_V
	GL_SPIR_V_BINARY
	GL_SPIR_V_EXTENSIONS
	GL_TESS_CONTROL_SHADER_PATCHES
	GL_TESS_EVALUATION_SHADER_INVOCATIONS
	GL_TEXTURE_MAX_ANISOTROPY
	GL_TRANSFORM_FEEDBACK_OVERFLOW
	GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW
	GL_VERTEX_SHADER_INVOCATIONS
	GL_VERTICES_SUBMITTED
)

pub fn multi_draw_arrays_indirect_count(mode int, indirect []int, drawcount i64, maxdrawcount int, stride int) {
	C.glMultiDrawArraysIndirectCount(mode, indirect, drawcount, maxdrawcount, stride)
}

pub fn multi_draw_arrays_indirect_count(mode int, indirect i64, drawcount i64, maxdrawcount int, stride int) {
	C.glMultiDrawArraysIndirectCount(mode, indirect, drawcount, maxdrawcount, stride)
}

pub fn multi_draw_arrays_indirect_count(mode int, indirect voidptr, drawcount i64, maxdrawcount int, stride int) {
	C.glMultiDrawArraysIndirectCount(mode, indirect, drawcount, maxdrawcount, stride)
}

pub fn multi_draw_arrays_indirect_count(mode int, indirect voidptr, drawcount i64, maxdrawcount int, stride int) {
	C.glMultiDrawArraysIndirectCount(mode, indirect, drawcount, maxdrawcount, stride)
}

pub fn multi_draw_elements_indirect_count(mode int, type int, indirect []int, drawcount i64, maxdrawcount int, stride int) {
	C.glMultiDrawElementsIndirectCount(mode, type, indirect, drawcount, maxdrawcount, stride)
}

pub fn multi_draw_elements_indirect_count(mode int, type int, indirect i64, drawcount i64, maxdrawcount int, stride int) {
	C.glMultiDrawElementsIndirectCount(mode, type, indirect, drawcount, maxdrawcount, stride)
}

pub fn multi_draw_elements_indirect_count(mode int, type int, indirect voidptr, drawcount i64, maxdrawcount int, stride int) {
	C.glMultiDrawElementsIndirectCount(mode, type, indirect, drawcount, maxdrawcount, stride)
}

pub fn multi_draw_elements_indirect_count(mode int, type int, indirect voidptr, drawcount i64, maxdrawcount int, stride int) {
	C.glMultiDrawElementsIndirectCount(mode, type, indirect, drawcount, maxdrawcount, stride)
}

pub fn polygon_offset_clamp(factor f32, units f32, clamp f32) {
	C.glPolygonOffsetClamp(factor, units, clamp)
}

pub fn specialize_shader(shader int, p_entry_point byteptr, p_constant_index []int, p_constant_value []int) {
	C.glSpecializeShader(shader, p_entry_point, p_constant_index, p_constant_value)
}

pub fn specialize_shader(shader int, p_entry_point byteptr, p_constant_index voidptr, p_constant_value voidptr) {
	C.glSpecializeShader(shader, p_entry_point, p_constant_index, p_constant_value)
}

pub fn specialize_shader(shader int, p_entry_point voidptr, p_constant_index []int, p_constant_value []int) {
	C.glSpecializeShader(shader, p_entry_point, p_constant_index, p_constant_value)
}

pub fn specialize_shader(shader int, p_entry_point voidptr, p_constant_index voidptr, p_constant_value voidptr) {
	C.glSpecializeShader(shader, p_entry_point, p_constant_index, p_constant_value)
}
