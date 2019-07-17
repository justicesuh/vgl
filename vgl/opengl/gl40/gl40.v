module gl40

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o
#include <glad.h>

import const (
	GL_ACTIVE_SUBROUTINE_MAX_LENGTH
	GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
	GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
	GL_ACTIVE_SUBROUTINE_UNIFORMS
	GL_ACTIVE_SUBROUTINES
	GL_COMPATIBLE_SUBROUTINES
	GL_DOUBLE_MAT2
	GL_DOUBLE_MAT2x3
	GL_DOUBLE_MAT2x4
	GL_DOUBLE_MAT3
	GL_DOUBLE_MAT3x2
	GL_DOUBLE_MAT3x4
	GL_DOUBLE_MAT4
	GL_DOUBLE_MAT4x2
	GL_DOUBLE_MAT4x3
	GL_DOUBLE_VEC2
	GL_DOUBLE_VEC3
	GL_DOUBLE_VEC4
	GL_DRAW_INDIRECT_BUFFER
	GL_DRAW_INDIRECT_BUFFER_BINDING
	GL_FRACTIONAL_EVEN
	GL_FRACTIONAL_ODD
	GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
	GL_GEOMETRY_SHADER_INVOCATIONS
	GL_INT_SAMPLER_CUBE_MAP_ARRAY
	GL_ISOLINES
	GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
	GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
	GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
	GL_MAX_GEOMETRY_SHADER_INVOCATIONS
	GL_MAX_PATCH_VERTICES
	GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET
	GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
	GL_MAX_SUBROUTINES
	GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
	GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
	GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
	GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
	GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
	GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
	GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
	GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
	GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
	GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
	GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
	GL_MAX_TESS_GEN_LEVEL
	GL_MAX_TESS_PATCH_COMPONENTS
	GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
	GL_MAX_VERTEX_STREAMS
	GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
	GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
	GL_MIN_SAMPLE_SHADING_VALUE
	GL_NUM_COMPATIBLE_SUBROUTINES
	GL_PATCH_DEFAULT_INNER_LEVEL
	GL_PATCH_DEFAULT_OUTER_LEVEL
	GL_PATCH_VERTICES
	GL_PATCHES
	GL_PROXY_TEXTURE_CUBE_MAP_ARRAY
	GL_SAMPLE_SHADING
	GL_SAMPLER_CUBE_MAP_ARRAY
	GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW
	GL_TESS_CONTROL_OUTPUT_VERTICES
	GL_TESS_CONTROL_SHADER
	GL_TESS_EVALUATION_SHADER
	GL_TESS_GEN_MODE
	GL_TESS_GEN_POINT_MODE
	GL_TESS_GEN_SPACING
	GL_TESS_GEN_VERTEX_ORDER
	GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
	GL_TEXTURE_CUBE_MAP_ARRAY
	GL_TRANSFORM_FEEDBACK
	GL_TRANSFORM_FEEDBACK_BINDING
	GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
	GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED
	GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
	GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
	GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
)

pub fn begin_query_indexed(target int, index int, id int) {
	C.glBeginQueryIndexed(target, index, id)
}

pub fn bind_transform_feedback(target int, id int) {
	C.glBindTransformFeedback(target, id)
}

pub fn blend_equationi(buf int, mode int) {
	C.glBlendEquationi(buf, mode)
}

pub fn blend_equation_separatei(buf int, mode_rgb int, mode_alpha int) {
	C.glBlendEquationSeparatei(buf, mode_rgb, mode_alpha)
}

pub fn blend_funci(buf int, sfactor int, dfactor int) {
	C.glBlendFunci(buf, sfactor, dfactor)
}

pub fn blend_func_separatei(buf int, src_rgb int, dst_rgb int, src_alpha int, dst_alpha int) {
	C.glBlendFuncSeparatei(buf, src_rgb, dst_rgb, src_alpha, dst_alpha)
}

pub fn delete_transform_feedbacks(id int) {
	C.glDeleteTransformFeedbacks(id)
}

pub fn delete_transform_feedbacks(ids []int) {
	C.glDeleteTransformFeedbacks(ids)
}

pub fn delete_transform_feedbacks(ids voidptr) {
	C.glDeleteTransformFeedbacks(ids)
}

pub fn draw_arrays_indirect(mode int, indirect []int) {
	C.glDrawArraysIndirect(mode, indirect)
}

pub fn draw_arrays_indirect(mode int, indirect i64) {
	C.glDrawArraysIndirect(mode, indirect)
}

pub fn draw_arrays_indirect(mode int, indirect voidptr) {
	C.glDrawArraysIndirect(mode, indirect)
}

pub fn draw_arrays_indirect(mode int, indirect voidptr) {
	C.glDrawArraysIndirect(mode, indirect)
}

pub fn draw_elements_indirect(mode int, type int, indirect []int) {
	C.glDrawElementsIndirect(mode, type, indirect)
}

pub fn draw_elements_indirect(mode int, type int, indirect i64) {
	C.glDrawElementsIndirect(mode, type, indirect)
}

pub fn draw_elements_indirect(mode int, type int, indirect voidptr) {
	C.glDrawElementsIndirect(mode, type, indirect)
}

pub fn draw_elements_indirect(mode int, type int, indirect voidptr) {
	C.glDrawElementsIndirect(mode, type, indirect)
}

pub fn draw_transform_feedback(mode int, id int) {
	C.glDrawTransformFeedback(mode, id)
}

pub fn draw_transform_feedback_stream(mode int, id int, stream int) {
	C.glDrawTransformFeedbackStream(mode, id, stream)
}

pub fn end_query_indexed(target int, index int) {
	C.glEndQueryIndexed(target, index)
}

pub fn gen_transform_feedbacks() int {
	return C.glGenTransformFeedbacks()
}

pub fn gen_transform_feedbacks(ids []int) {
	C.glGenTransformFeedbacks(ids)
}

pub fn gen_transform_feedbacks(ids voidptr) {
	C.glGenTransformFeedbacks(ids)
}

pub fn get_active_subroutine_name(program int, shadertype int, index int) string {
	return C.glGetActiveSubroutineName(program, shadertype, index)
}

pub fn get_active_subroutine_name(program int, shadertype int, index int, bufsize int) string {
	return C.glGetActiveSubroutineName(program, shadertype, index, bufsize)
}

pub fn get_active_subroutine_name(program int, shadertype int, index int, length []int, name voidptr) {
	C.glGetActiveSubroutineName(program, shadertype, index, length, name)
}

pub fn get_active_subroutine_name(program int, shadertype int, index int, length voidptr, name voidptr) {
	C.glGetActiveSubroutineName(program, shadertype, index, length, name)
}

pub fn get_active_subroutine_uniformi(program int, shadertype int, index int, pname int) int {
	return C.glGetActiveSubroutineUniformi(program, shadertype, index, pname)
}

pub fn get_active_subroutine_uniformiv(program int, shadertype int, index int, pname int, values []int) {
	C.glGetActiveSubroutineUniformiv(program, shadertype, index, pname, values)
}

pub fn get_active_subroutine_uniformiv(program int, shadertype int, index int, pname int, values voidptr) {
	C.glGetActiveSubroutineUniformiv(program, shadertype, index, pname, values)
}

pub fn get_active_subroutine_uniform_name(program int, shadertype int, index int) string {
	return C.glGetActiveSubroutineUniformName(program, shadertype, index)
}

pub fn get_active_subroutine_uniform_name(program int, shadertype int, index int, bufsize int) string {
	return C.glGetActiveSubroutineUniformName(program, shadertype, index, bufsize)
}

pub fn get_active_subroutine_uniform_name(program int, shadertype int, index int, length []int, name voidptr) {
	C.glGetActiveSubroutineUniformName(program, shadertype, index, length, name)
}

pub fn get_active_subroutine_uniform_name(program int, shadertype int, index int, length voidptr, name voidptr) {
	C.glGetActiveSubroutineUniformName(program, shadertype, index, length, name)
}

pub fn get_program_stagei(program int, shadertype int, pname int) int {
	return C.glGetProgramStagei(program, shadertype, pname)
}

pub fn get_program_stageiv(program int, shadertype int, pname int, values []int) {
	C.glGetProgramStageiv(program, shadertype, pname, values)
}

pub fn get_program_stageiv(program int, shadertype int, pname int, values voidptr) {
	C.glGetProgramStageiv(program, shadertype, pname, values)
}

pub fn get_query_indexedi(target int, index int, pname int) int {
	return C.glGetQueryIndexedi(target, index, pname)
}

pub fn get_query_indexediv(target int, index int, pname int, params []int) {
	C.glGetQueryIndexediv(target, index, pname, params)
}

pub fn get_query_indexediv(target int, index int, pname int, params voidptr) {
	C.glGetQueryIndexediv(target, index, pname, params)
}

pub fn get_subroutine_index(program int, shadertype int, name byteptr) int {
	return C.glGetSubroutineIndex(program, shadertype, name)
}

pub fn get_subroutine_index(program int, shadertype int, name voidptr) int {
	return C.glGetSubroutineIndex(program, shadertype, name)
}

pub fn get_subroutine_uniform_location(program int, shadertype int, name byteptr) int {
	return C.glGetSubroutineUniformLocation(program, shadertype, name)
}

pub fn get_subroutine_uniform_location(program int, shadertype int, name voidptr) int {
	return C.glGetSubroutineUniformLocation(program, shadertype, name)
}

pub fn get_uniformd(program int, location int) f64 {
	return C.glGetUniformd(program, location)
}

pub fn get_uniformdv(program int, location int, params []f64) {
	C.glGetUniformdv(program, location, params)
}

pub fn get_uniformdv(program int, location int, params voidptr) {
	C.glGetUniformdv(program, location, params)
}

pub fn get_uniform_subroutineui(shadertype int, location int) int {
	return C.glGetUniformSubroutineui(shadertype, location)
}

pub fn get_uniform_subroutineuiv(shadertype int, location int, params []int) {
	C.glGetUniformSubroutineuiv(shadertype, location, params)
}

pub fn get_uniform_subroutineuiv(shadertype int, location int, params voidptr) {
	C.glGetUniformSubroutineuiv(shadertype, location, params)
}

pub fn is_transform_feedback(id int) bool {
	return C.glIsTransformFeedback(id)
}

pub fn min_sample_shading(value f32) {
	C.glMinSampleShading(value)
}

pub fn patch_parameterfv(pname int, values []f32) {
	C.glPatchParameterfv(pname, values)
}

pub fn patch_parameterfv(pname int, values voidptr) {
	C.glPatchParameterfv(pname, values)
}

pub fn patch_parameteri(pname int, value int) {
	C.glPatchParameteri(pname, value)
}

pub fn pause_transform_feedback() {
	C.glPauseTransformFeedback()
}

pub fn resume_transform_feedback() {
	C.glResumeTransformFeedback()
}

pub fn uniform1d(location int, x f64) {
	C.glUniform1d(location, x)
}

pub fn uniform1dv(location int, value []f64) {
	C.glUniform1dv(location, value)
}

pub fn uniform1dv(location int, value voidptr) {
	C.glUniform1dv(location, value)
}

pub fn uniform2d(location int, x f64, y f64) {
	C.glUniform2d(location, x, y)
}

pub fn uniform2dv(location int, value []f64) {
	C.glUniform2dv(location, value)
}

pub fn uniform2dv(location int, value voidptr) {
	C.glUniform2dv(location, value)
}

pub fn uniform3d(location int, x f64, y f64, z f64) {
	C.glUniform3d(location, x, y, z)
}

pub fn uniform3dv(location int, value []f64) {
	C.glUniform3dv(location, value)
}

pub fn uniform3dv(location int, value voidptr) {
	C.glUniform3dv(location, value)
}

pub fn uniform4d(location int, x f64, y f64, z f64, w f64) {
	C.glUniform4d(location, x, y, z, w)
}

pub fn uniform4dv(location int, value []f64) {
	C.glUniform4dv(location, value)
}

pub fn uniform4dv(location int, value voidptr) {
	C.glUniform4dv(location, value)
}

pub fn uniform_matrix2dv(location int, transpose bool, value []f64) {
	C.glUniformMatrix2dv(location, transpose, value)
}

pub fn uniform_matrix2dv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix2dv(location, transpose, value)
}

pub fn uniform_matrix2x3dv(location int, transpose bool, value []f64) {
	C.glUniformMatrix2x3dv(location, transpose, value)
}

pub fn uniform_matrix2x3dv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix2x3dv(location, transpose, value)
}

pub fn uniform_matrix2x4dv(location int, transpose bool, value []f64) {
	C.glUniformMatrix2x4dv(location, transpose, value)
}

pub fn uniform_matrix2x4dv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix2x4dv(location, transpose, value)
}

pub fn uniform_matrix3dv(location int, transpose bool, value []f64) {
	C.glUniformMatrix3dv(location, transpose, value)
}

pub fn uniform_matrix3dv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix3dv(location, transpose, value)
}

pub fn uniform_matrix3x2dv(location int, transpose bool, value []f64) {
	C.glUniformMatrix3x2dv(location, transpose, value)
}

pub fn uniform_matrix3x2dv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix3x2dv(location, transpose, value)
}

pub fn uniform_matrix3x4dv(location int, transpose bool, value []f64) {
	C.glUniformMatrix3x4dv(location, transpose, value)
}

pub fn uniform_matrix3x4dv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix3x4dv(location, transpose, value)
}

pub fn uniform_matrix4dv(location int, transpose bool, value []f64) {
	C.glUniformMatrix4dv(location, transpose, value)
}

pub fn uniform_matrix4dv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix4dv(location, transpose, value)
}

pub fn uniform_matrix4x2dv(location int, transpose bool, value []f64) {
	C.glUniformMatrix4x2dv(location, transpose, value)
}

pub fn uniform_matrix4x2dv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix4x2dv(location, transpose, value)
}

pub fn uniform_matrix4x3dv(location int, transpose bool, value []f64) {
	C.glUniformMatrix4x3dv(location, transpose, value)
}

pub fn uniform_matrix4x3dv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix4x3dv(location, transpose, value)
}

pub fn uniform_subroutinesui(shadertype int, index int) {
	C.glUniformSubroutinesui(shadertype, index)
}

pub fn uniform_subroutinesuiv(shadertype int, indices []int) {
	C.glUniformSubroutinesuiv(shadertype, indices)
}

pub fn uniform_subroutinesuiv(shadertype int, indices voidptr) {
	C.glUniformSubroutinesuiv(shadertype, indices)
}
