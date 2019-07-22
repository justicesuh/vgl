module gl40

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_SAMPLE_SHADING
	GL_MIN_SAMPLE_SHADING_VALUE
	GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
	GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET
	GL_TEXTURE_CUBE_MAP_ARRAY
	GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
	GL_PROXY_TEXTURE_CUBE_MAP_ARRAY
	GL_SAMPLER_CUBE_MAP_ARRAY
	GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW
	GL_INT_SAMPLER_CUBE_MAP_ARRAY
	GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
	GL_DRAW_INDIRECT_BUFFER
	GL_DRAW_INDIRECT_BUFFER_BINDING
	GL_GEOMETRY_SHADER_INVOCATIONS
	GL_MAX_GEOMETRY_SHADER_INVOCATIONS
	GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
	GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
	GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
	GL_MAX_VERTEX_STREAMS
	GL_DOUBLE_VEC2
	GL_DOUBLE_VEC3
	GL_DOUBLE_VEC4
	GL_DOUBLE_MAT2
	GL_DOUBLE_MAT3
	GL_DOUBLE_MAT4
	GL_DOUBLE_MAT2x3
	GL_DOUBLE_MAT2x4
	GL_DOUBLE_MAT3x2
	GL_DOUBLE_MAT3x4
	GL_DOUBLE_MAT4x2
	GL_DOUBLE_MAT4x3
	GL_ACTIVE_SUBROUTINES
	GL_ACTIVE_SUBROUTINE_UNIFORMS
	GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
	GL_ACTIVE_SUBROUTINE_MAX_LENGTH
	GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
	GL_MAX_SUBROUTINES
	GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
	GL_NUM_COMPATIBLE_SUBROUTINES
	GL_COMPATIBLE_SUBROUTINES
	GL_PATCHES
	GL_PATCH_VERTICES
	GL_PATCH_DEFAULT_INNER_LEVEL
	GL_PATCH_DEFAULT_OUTER_LEVEL
	GL_TESS_CONTROL_OUTPUT_VERTICES
	GL_TESS_GEN_MODE
	GL_TESS_GEN_SPACING
	GL_TESS_GEN_VERTEX_ORDER
	GL_TESS_GEN_POINT_MODE
	GL_ISOLINES
	GL_QUADS
	GL_FRACTIONAL_ODD
	GL_FRACTIONAL_EVEN
	GL_MAX_PATCH_VERTICES
	GL_MAX_TESS_GEN_LEVEL
	GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
	GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
	GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
	GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
	GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
	GL_MAX_TESS_PATCH_COMPONENTS
	GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
	GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
	GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
	GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
	GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
	GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
	GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
	GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
	GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
	GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
	GL_TESS_EVALUATION_SHADER
	GL_TESS_CONTROL_SHADER
	GL_TRANSFORM_FEEDBACK
	GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED
	GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
	GL_TRANSFORM_FEEDBACK_BINDING
	GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
	GL_MAX_VERTEX_STREAMS
)

pub fn min_sample_shading(value f32) {
	C.glMinSampleShading(value)
}

pub fn blend_equationi(buf u32, mode u32) {
	C.glBlendEquationi(buf, mode)
}

pub fn blend_equation_separatei(buf u32, modeRGB u32, modeAlpha u32) {
	C.glBlendEquationSeparatei(buf, modeRGB, modeAlpha)
}

pub fn blend_funci(buf u32, src u32, dst u32) {
	C.glBlendFunci(buf, src, dst)
}

pub fn blend_func_separatei(buf u32, srcRGB u32, dstRGB u32, srcAlpha u32, dstAlpha u32) {
	C.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha)
}

// TODO
pub fn draw_arrays_indirect(mode u32, indirect voidptr) {
	C.glDrawArraysIndirect(mode, indirect)
}

// TODO
pub fn draw_elements_indirect(mode u32, type_ u32, indirect voidptr) {
	C.glDrawElementsIndirect(mode, type_, indirect)
}

pub fn uniform1d(location int, x f64) {
	C.glUniform1d(location, x)
}

pub fn uniform2d(location int, x f64, y f64) {
	C.glUniform2d(location, x, y)
}

pub fn uniform3d(location int, x f64, y f64, z f64) {
	C.glUniform3d(location, x, y, z)
}

pub fn uniform4d(location int, x f64, y f64, z f64, w f64) {
	C.glUniform4d(location, x, y, z, w)
}

// TODO
pub fn uniform1dv(location int, count int, value []f64) {
	C.glUniform1dv(location, count, value.data)
}

// TODO
pub fn uniform2dv(location int, count int, value []f64) {
	C.glUniform2dv(location, count, value.data)
}

// TODO
pub fn uniform3dv(location int, count int, value []f64) {
	C.glUniform3dv(location, count, value.data)
}

// TODO
pub fn uniform4dv(location int, count int, value []f64) {
	C.glUniform4dv(location, count, value.data)
}

// TODO
pub fn uniform_matrix2dv(location int, count int, transpose bool, value []f64) {
	C.glUniformMatrix2dv(location, count, transpose, value.data)
}

// TODO
pub fn uniform_matrix3dv(location int, count int, transpose bool, value []f64) {
	C.glUniformMatrix3dv(location, count, transpose, value.data)
}

// TODO
pub fn uniform_matrix4dv(location int, count int, transpose bool, value []f64) {
	C.glUniformMatrix4dv(location, count, transpose, value.data)
}

// TODO
pub fn uniform_matrix2x3dv(location int, count int, transpose bool, value []f64) {
	C.glUniformMatrix2x3dv(location, count, transpose, value.data)
}

// TODO
pub fn uniform_matrix2x4dv(location int, count int, transpose bool, value []f64) {
	C.glUniformMatrix2x4dv(location, count, transpose, value.data)
}

// TODO
pub fn uniform_matrix3x2dv(location int, count int, transpose bool, value []f64) {
	C.glUniformMatrix3x2dv(location, count, transpose, value.data)
}

// TODO
pub fn uniform_matrix3x4dv(location int, count int, transpose bool, value []f64) {
	C.glUniformMatrix3x4dv(location, count, transpose, value.data)
}

// TODO
pub fn uniform_matrix4x2dv(location int, count int, transpose bool, value []f64) {
	C.glUniformMatrix4x2dv(location, count, transpose, value.data)
}

// TODO
pub fn uniform_matrix4x3dv(location int, count int, transpose bool, value []f64) {
	C.glUniformMatrix4x3dv(location, count, transpose, value.data)
}

// TODO
pub fn get_uniformdv(program u32, location int, params []f64) {
	C.glGetUniformdv(program, location, params.data)
}

// TODO
pub fn get_subroutine_uniform_location(program u32, shadertype u32, name string) int {
	return C.glGetSubroutineUniformLocation(program, shadertype, name.str)
}

// TODO
pub fn get_subroutine_index(program u32, shadertype u32, name string) u32 {
	return C.glGetSubroutineIndex(program, shadertype, name.str)
}

// TODO
pub fn get_active_subroutine_uniformiv(program u32, shadertype u32, index u32, pname u32, values []int) {
	C.glGetActiveSubroutineUniformiv(program, shadertype, index, pname, values.data)
}

// TODO
pub fn get_active_subroutine_uniform_name(program u32, shadertype u32, index u32, bufsize int, length []int, name string) {
	C.glGetActiveSubroutineUniformName(program, shadertype, index, bufsize, length.data, name.str)
}

// TODO
pub fn get_active_subroutine_name(program u32, shadertype u32, index u32, bufsize int, length []int, name string) {
	C.glGetActiveSubroutineName(program, shadertype, index, bufsize, length.data, name.str)
}

// TODO
pub fn uniform_subroutinesuiv(shadertype u32, count int, indices []u32) {
	C.glUniformSubroutinesuiv(shadertype, count, indices.data)
}

// TODO
pub fn get_uniform_subroutineuiv(shadertype u32, location int, params []u32) {
	C.glGetUniformSubroutineuiv(shadertype, location, params.data)
}

// TODO
pub fn get_program_stageiv(program u32, shadertype u32, pname u32, values []int) {
	C.glGetProgramStageiv(program, shadertype, pname, values.data)
}

pub fn patch_parameteri(pname u32, value int) {
	C.glPatchParameteri(pname, value)
}

// TODO
pub fn patch_parameterfv(pname u32, values []f32) {
	C.glPatchParameterfv(pname, values.data)
}

pub fn bind_transform_feedback(target u32, id u32) {
	C.glBindTransformFeedback(target, id)
}

// TODO
pub fn delete_transform_feedbacks(n int, ids []u32) {
	C.glDeleteTransformFeedbacks(n, ids.data)
}

// TODO
pub fn gen_transform_feedbacks(n int, ids []u32) {
	C.glGenTransformFeedbacks(n, ids.data)
}

pub fn is_transform_feedback(id u32) bool {
	return C.glIsTransformFeedback(id)
}

pub fn pause_transform_feedback() {
	C.glPauseTransformFeedback()
}

pub fn resume_transform_feedback() {
	C.glResumeTransformFeedback()
}

pub fn draw_transform_feedback(mode u32, id u32) {
	C.glDrawTransformFeedback(mode, id)
}

pub fn draw_transform_feedback_stream(mode u32, id u32, stream u32) {
	C.glDrawTransformFeedbackStream(mode, id, stream)
}

pub fn begin_query_indexed(target u32, index u32, id u32) {
	C.glBeginQueryIndexed(target, index, id)
}

pub fn end_query_indexed(target u32, index u32) {
	C.glEndQueryIndexed(target, index)
}

// TODO
pub fn get_query_indexediv(target u32, index u32, pname u32, params []int) {
	C.glGetQueryIndexediv(target, index, pname, params.data)
}
