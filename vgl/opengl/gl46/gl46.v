module gl46

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_CONTEXT_RELEASE_BEHAVIOR
	GL_NONE
	GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH
	GL_SHADER_BINARY_FORMAT_SPIR_V
	GL_SPIR_V_BINARY
	GL_PARAMETER_BUFFER
	GL_PARAMETER_BUFFER_BINDING
	GL_CONTEXT_FLAG_NO_ERROR_BIT
	GL_VERTICES_SUBMITTED
	GL_PRIMITIVES_SUBMITTED
	GL_VERTEX_SHADER_INVOCATIONS
	GL_TESS_CONTROL_SHADER_PATCHES
	GL_TESS_EVALUATION_SHADER_INVOCATIONS
	GL_GEOMETRY_SHADER_INVOCATIONS
	GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED
	GL_FRAGMENT_SHADER_INVOCATIONS
	GL_COMPUTE_SHADER_INVOCATIONS
	GL_CLIPPING_INPUT_PRIMITIVES
	GL_CLIPPING_OUTPUT_PRIMITIVES
	GL_POLYGON_OFFSET_CLAMP
	GL_SPIR_V_EXTENSIONS
	GL_NUM_SPIR_V_EXTENSIONS
	GL_TEXTURE_MAX_ANISOTROPY
	GL_MAX_TEXTURE_MAX_ANISOTROPY
	GL_TRANSFORM_FEEDBACK_OVERFLOW
	GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW
)

// TODO
pub fn specialize_shader(shader u32, pEntryPoint string, numSpecializationConstants u32, pConstantIndex []u32, pConstantValue []u32) {
	C.glSpecializeShader(shader, pEntryPoint.str, numSpecializationConstants, pConstantIndex.data, pConstantValue.data)
}

// TODO
pub fn multi_draw_arrays_indirect_count(mode u32, indirect voidptr, drawcount []int, maxdrawcount int, stride int) {
	C.glMultiDrawArraysIndirectCount(mode, indirect, drawcount.data, maxdrawcount, stride)
}

// TODO
pub fn multi_draw_elements_indirect_count(mode u32, type_ u32, indirect voidptr, drawcount []int, maxdrawcount int, stride int) {
	C.glMultiDrawElementsIndirectCount(mode, type_, indirect, drawcount.data, maxdrawcount, stride)
}

pub fn polygon_offset_clamp(factor f32, units f32, clamp f32) {
	C.glPolygonOffsetClamp(factor, units, clamp)
}
