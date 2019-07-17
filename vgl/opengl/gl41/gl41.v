module gl41

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o
#include <glad.h>

import const (
	GL_ACTIVE_PROGRAM
	GL_ALL_SHADER_BITS
	GL_FIXED
	GL_FRAGMENT_SHADER_BIT
	GL_GEOMETRY_SHADER_BIT
	GL_HIGH_FLOAT
	GL_HIGH_INT
	GL_IMPLEMENTATION_COLOR_READ_FORMAT
	GL_IMPLEMENTATION_COLOR_READ_TYPE
	GL_LAYER_PROVOKING_VERTEX
	GL_LOW_FLOAT
	GL_LOW_INT
	GL_MAX_FRAGMENT_UNIFORM_VECTORS
	GL_MAX_VARYING_VECTORS
	GL_MAX_VERTEX_UNIFORM_VECTORS
	GL_MAX_VIEWPORTS
	GL_MEDIUM_FLOAT
	GL_MEDIUM_INT
	GL_NUM_PROGRAM_BINARY_FORMATS
	GL_NUM_SHADER_BINARY_FORMATS
	GL_PROGRAM_BINARY_FORMATS
	GL_PROGRAM_BINARY_LENGTH
	GL_PROGRAM_BINARY_RETRIEVABLE_HINT
	GL_PROGRAM_PIPELINE_BINDING
	GL_PROGRAM_SEPARABLE
	GL_RGB565
	GL_SHADER_BINARY_FORMATS
	GL_SHADER_COMPILER
	GL_TESS_CONTROL_SHADER_BIT
	GL_TESS_EVALUATION_SHADER_BIT
	GL_UNDEFINED_VERTEX
	GL_VERTEX_SHADER_BIT
	GL_VIEWPORT_BOUNDS_RANGE
	GL_VIEWPORT_INDEX_PROVOKING_VERTEX
	GL_VIEWPORT_SUBPIXEL_BITS
)

pub fn active_shader_program(pipeline int, program int) {
	C.glActiveShaderProgram(pipeline, program)
}

pub fn bind_program_pipeline(pipeline int) {
	C.glBindProgramPipeline(pipeline)
}

pub fn clear_depthf(depth f32) {
	C.glClearDepthf(depth)
}

pub fn create_shader_programv(type int, string byteptr) int {
	return C.glCreateShaderProgramv(type, string)
}

pub fn create_shader_programv(type int, strings *byteptr) int {
	return C.glCreateShaderProgramv(type, strings)
}

pub fn create_shader_programv(type int, strings *voidptr) int {
	return C.glCreateShaderProgramv(type, strings)
}

pub fn delete_program_pipelines(pipeline int) {
	C.glDeleteProgramPipelines(pipeline)
}

pub fn delete_program_pipelines(pipelines []int) {
	C.glDeleteProgramPipelines(pipelines)
}

pub fn delete_program_pipelines(pipelines voidptr) {
	C.glDeleteProgramPipelines(pipelines)
}

pub fn depth_range_arrayv(first int, v []f64) {
	C.glDepthRangeArrayv(first, v)
}

pub fn depth_range_arrayv(first int, v voidptr) {
	C.glDepthRangeArrayv(first, v)
}

pub fn depth_rangef(z_near f32, z_far f32) {
	C.glDepthRangef(z_near, z_far)
}

pub fn depth_range_indexed(index int, z_near f64, z_far f64) {
	C.glDepthRangeIndexed(index, z_near, z_far)
}

pub fn gen_program_pipelines() int {
	return C.glGenProgramPipelines()
}

pub fn gen_program_pipelines(pipelines []int) {
	C.glGenProgramPipelines(pipelines)
}

pub fn gen_program_pipelines(pipelines voidptr) {
	C.glGenProgramPipelines(pipelines)
}

pub fn get_doublei(target int, index int) f64 {
	return C.glGetDoublei(target, index)
}

pub fn get_doublei_v(target int, index int, data []f64) {
	C.glGetDoublei_v(target, index, data)
}

pub fn get_doublei_v(target int, index int, data voidptr) {
	C.glGetDoublei_v(target, index, data)
}

pub fn get_floati(target int, index int) f32 {
	return C.glGetFloati(target, index)
}

pub fn get_floati_v(target int, index int, data []f32) {
	C.glGetFloati_v(target, index, data)
}

pub fn get_floati_v(target int, index int, data voidptr) {
	C.glGetFloati_v(target, index, data)
}

pub fn get_program_binary(program int, length []int, binary_format []int, binary voidptr) {
	C.glGetProgramBinary(program, length, binary_format, binary)
}

pub fn get_program_binary(program int, length voidptr, binary_format voidptr, binary voidptr) {
	C.glGetProgramBinary(program, length, binary_format, binary)
}

pub fn get_program_pipelinei(pipeline int, pname int) int {
	return C.glGetProgramPipelinei(pipeline, pname)
}

pub fn get_program_pipeline_info_log(pipeline int) string {
	return C.glGetProgramPipelineInfoLog(pipeline)
}

pub fn get_program_pipeline_info_log(pipeline int, buf_size int) string {
	return C.glGetProgramPipelineInfoLog(pipeline, buf_size)
}

pub fn get_program_pipeline_info_log(pipeline int, length []int, info_log voidptr) {
	C.glGetProgramPipelineInfoLog(pipeline, length, info_log)
}

pub fn get_program_pipeline_info_log(pipeline int, length voidptr, info_log voidptr) {
	C.glGetProgramPipelineInfoLog(pipeline, length, info_log)
}

pub fn get_program_pipelineiv(pipeline int, pname int, params []int) {
	C.glGetProgramPipelineiv(pipeline, pname, params)
}

pub fn get_program_pipelineiv(pipeline int, pname int, params voidptr) {
	C.glGetProgramPipelineiv(pipeline, pname, params)
}

pub fn get_shader_precision_format(shadertype int, precisiontype int, range []int, precision []int) {
	C.glGetShaderPrecisionFormat(shadertype, precisiontype, range, precision)
}

pub fn get_shader_precision_format(shadertype int, precisiontype int, range voidptr) int {
	return C.glGetShaderPrecisionFormat(shadertype, precisiontype, range)
}

pub fn get_shader_precision_format(shadertype int, precisiontype int, range voidptr, precision voidptr) {
	C.glGetShaderPrecisionFormat(shadertype, precisiontype, range, precision)
}

pub fn get_vertex_attrib_ldv(index int, pname int, params []f64) {
	C.glGetVertexAttribLdv(index, pname, params)
}

pub fn get_vertex_attrib_ldv(index int, pname int, params voidptr) {
	C.glGetVertexAttribLdv(index, pname, params)
}

pub fn is_program_pipeline(pipeline int) bool {
	return C.glIsProgramPipeline(pipeline)
}

pub fn program_binary(program int, binary_format int, binary voidptr) {
	C.glProgramBinary(program, binary_format, binary)
}

pub fn program_parameteri(program int, pname int, value int) {
	C.glProgramParameteri(program, pname, value)
}

pub fn program_uniform1d(program int, location int, x f64) {
	C.glProgramUniform1d(program, location, x)
}

pub fn program_uniform1dv(program int, location int, value []f64) {
	C.glProgramUniform1dv(program, location, value)
}

pub fn program_uniform1dv(program int, location int, value voidptr) {
	C.glProgramUniform1dv(program, location, value)
}

pub fn program_uniform1f(program int, location int, x f32) {
	C.glProgramUniform1f(program, location, x)
}

pub fn program_uniform1fv(program int, location int, value []f32) {
	C.glProgramUniform1fv(program, location, value)
}

pub fn program_uniform1fv(program int, location int, value voidptr) {
	C.glProgramUniform1fv(program, location, value)
}

pub fn program_uniform1i(program int, location int, x int) {
	C.glProgramUniform1i(program, location, x)
}

pub fn program_uniform1iv(program int, location int, value []int) {
	C.glProgramUniform1iv(program, location, value)
}

pub fn program_uniform1iv(program int, location int, value voidptr) {
	C.glProgramUniform1iv(program, location, value)
}

pub fn program_uniform1ui(program int, location int, x int) {
	C.glProgramUniform1ui(program, location, x)
}

pub fn program_uniform1uiv(program int, location int, value []int) {
	C.glProgramUniform1uiv(program, location, value)
}

pub fn program_uniform1uiv(program int, location int, value voidptr) {
	C.glProgramUniform1uiv(program, location, value)
}

pub fn program_uniform2d(program int, location int, x f64, y f64) {
	C.glProgramUniform2d(program, location, x, y)
}

pub fn program_uniform2dv(program int, location int, value []f64) {
	C.glProgramUniform2dv(program, location, value)
}

pub fn program_uniform2dv(program int, location int, value voidptr) {
	C.glProgramUniform2dv(program, location, value)
}

pub fn program_uniform2f(program int, location int, x f32, y f32) {
	C.glProgramUniform2f(program, location, x, y)
}

pub fn program_uniform2fv(program int, location int, value []f32) {
	C.glProgramUniform2fv(program, location, value)
}

pub fn program_uniform2fv(program int, location int, value voidptr) {
	C.glProgramUniform2fv(program, location, value)
}

pub fn program_uniform2i(program int, location int, x int, y int) {
	C.glProgramUniform2i(program, location, x, y)
}

pub fn program_uniform2iv(program int, location int, value []int) {
	C.glProgramUniform2iv(program, location, value)
}

pub fn program_uniform2iv(program int, location int, value voidptr) {
	C.glProgramUniform2iv(program, location, value)
}

pub fn program_uniform2ui(program int, location int, x int, y int) {
	C.glProgramUniform2ui(program, location, x, y)
}

pub fn program_uniform2uiv(program int, location int, value []int) {
	C.glProgramUniform2uiv(program, location, value)
}

pub fn program_uniform2uiv(program int, location int, value voidptr) {
	C.glProgramUniform2uiv(program, location, value)
}

pub fn program_uniform3d(program int, location int, x f64, y f64, z f64) {
	C.glProgramUniform3d(program, location, x, y, z)
}

pub fn program_uniform3dv(program int, location int, value []f64) {
	C.glProgramUniform3dv(program, location, value)
}

pub fn program_uniform3dv(program int, location int, value voidptr) {
	C.glProgramUniform3dv(program, location, value)
}

pub fn program_uniform3f(program int, location int, x f32, y f32, z f32) {
	C.glProgramUniform3f(program, location, x, y, z)
}

pub fn program_uniform3fv(program int, location int, value []f32) {
	C.glProgramUniform3fv(program, location, value)
}

pub fn program_uniform3fv(program int, location int, value voidptr) {
	C.glProgramUniform3fv(program, location, value)
}

pub fn program_uniform3i(program int, location int, x int, y int, z int) {
	C.glProgramUniform3i(program, location, x, y, z)
}

pub fn program_uniform3iv(program int, location int, value []int) {
	C.glProgramUniform3iv(program, location, value)
}

pub fn program_uniform3iv(program int, location int, value voidptr) {
	C.glProgramUniform3iv(program, location, value)
}

pub fn program_uniform3ui(program int, location int, x int, y int, z int) {
	C.glProgramUniform3ui(program, location, x, y, z)
}

pub fn program_uniform3uiv(program int, location int, value []int) {
	C.glProgramUniform3uiv(program, location, value)
}

pub fn program_uniform3uiv(program int, location int, value voidptr) {
	C.glProgramUniform3uiv(program, location, value)
}

pub fn program_uniform4d(program int, location int, x f64, y f64, z f64, w f64) {
	C.glProgramUniform4d(program, location, x, y, z, w)
}

pub fn program_uniform4dv(program int, location int, value []f64) {
	C.glProgramUniform4dv(program, location, value)
}

pub fn program_uniform4dv(program int, location int, value voidptr) {
	C.glProgramUniform4dv(program, location, value)
}

pub fn program_uniform4f(program int, location int, x f32, y f32, z f32, w f32) {
	C.glProgramUniform4f(program, location, x, y, z, w)
}

pub fn program_uniform4fv(program int, location int, value []f32) {
	C.glProgramUniform4fv(program, location, value)
}

pub fn program_uniform4fv(program int, location int, value voidptr) {
	C.glProgramUniform4fv(program, location, value)
}

pub fn program_uniform4i(program int, location int, x int, y int, z int, w int) {
	C.glProgramUniform4i(program, location, x, y, z, w)
}

pub fn program_uniform4iv(program int, location int, value []int) {
	C.glProgramUniform4iv(program, location, value)
}

pub fn program_uniform4iv(program int, location int, value voidptr) {
	C.glProgramUniform4iv(program, location, value)
}

pub fn program_uniform4ui(program int, location int, x int, y int, z int, w int) {
	C.glProgramUniform4ui(program, location, x, y, z, w)
}

pub fn program_uniform4uiv(program int, location int, value []int) {
	C.glProgramUniform4uiv(program, location, value)
}

pub fn program_uniform4uiv(program int, location int, value voidptr) {
	C.glProgramUniform4uiv(program, location, value)
}

pub fn program_uniform_matrix2dv(program int, location int, transpose bool, value []f64) {
	C.glProgramUniformMatrix2dv(program, location, transpose, value)
}

pub fn program_uniform_matrix2dv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix2dv(program, location, transpose, value)
}

pub fn program_uniform_matrix2fv(program int, location int, transpose bool, value []f32) {
	C.glProgramUniformMatrix2fv(program, location, transpose, value)
}

pub fn program_uniform_matrix2fv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix2fv(program, location, transpose, value)
}

pub fn program_uniform_matrix2x3dv(program int, location int, transpose bool, value []f64) {
	C.glProgramUniformMatrix2x3dv(program, location, transpose, value)
}

pub fn program_uniform_matrix2x3dv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix2x3dv(program, location, transpose, value)
}

pub fn program_uniform_matrix2x3fv(program int, location int, transpose bool, value []f32) {
	C.glProgramUniformMatrix2x3fv(program, location, transpose, value)
}

pub fn program_uniform_matrix2x3fv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix2x3fv(program, location, transpose, value)
}

pub fn program_uniform_matrix2x4dv(program int, location int, transpose bool, value []f64) {
	C.glProgramUniformMatrix2x4dv(program, location, transpose, value)
}

pub fn program_uniform_matrix2x4dv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix2x4dv(program, location, transpose, value)
}

pub fn program_uniform_matrix2x4fv(program int, location int, transpose bool, value []f32) {
	C.glProgramUniformMatrix2x4fv(program, location, transpose, value)
}

pub fn program_uniform_matrix2x4fv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix2x4fv(program, location, transpose, value)
}

pub fn program_uniform_matrix3dv(program int, location int, transpose bool, value []f64) {
	C.glProgramUniformMatrix3dv(program, location, transpose, value)
}

pub fn program_uniform_matrix3dv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix3dv(program, location, transpose, value)
}

pub fn program_uniform_matrix3fv(program int, location int, transpose bool, value []f32) {
	C.glProgramUniformMatrix3fv(program, location, transpose, value)
}

pub fn program_uniform_matrix3fv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix3fv(program, location, transpose, value)
}

pub fn program_uniform_matrix3x2dv(program int, location int, transpose bool, value []f64) {
	C.glProgramUniformMatrix3x2dv(program, location, transpose, value)
}

pub fn program_uniform_matrix3x2dv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix3x2dv(program, location, transpose, value)
}

pub fn program_uniform_matrix3x2fv(program int, location int, transpose bool, value []f32) {
	C.glProgramUniformMatrix3x2fv(program, location, transpose, value)
}

pub fn program_uniform_matrix3x2fv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix3x2fv(program, location, transpose, value)
}

pub fn program_uniform_matrix3x4dv(program int, location int, transpose bool, value []f64) {
	C.glProgramUniformMatrix3x4dv(program, location, transpose, value)
}

pub fn program_uniform_matrix3x4dv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix3x4dv(program, location, transpose, value)
}

pub fn program_uniform_matrix3x4fv(program int, location int, transpose bool, value []f32) {
	C.glProgramUniformMatrix3x4fv(program, location, transpose, value)
}

pub fn program_uniform_matrix3x4fv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix3x4fv(program, location, transpose, value)
}

pub fn program_uniform_matrix4dv(program int, location int, transpose bool, value []f64) {
	C.glProgramUniformMatrix4dv(program, location, transpose, value)
}

pub fn program_uniform_matrix4dv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix4dv(program, location, transpose, value)
}

pub fn program_uniform_matrix4fv(program int, location int, transpose bool, value []f32) {
	C.glProgramUniformMatrix4fv(program, location, transpose, value)
}

pub fn program_uniform_matrix4fv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix4fv(program, location, transpose, value)
}

pub fn program_uniform_matrix4x2dv(program int, location int, transpose bool, value []f64) {
	C.glProgramUniformMatrix4x2dv(program, location, transpose, value)
}

pub fn program_uniform_matrix4x2dv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix4x2dv(program, location, transpose, value)
}

pub fn program_uniform_matrix4x2fv(program int, location int, transpose bool, value []f32) {
	C.glProgramUniformMatrix4x2fv(program, location, transpose, value)
}

pub fn program_uniform_matrix4x2fv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix4x2fv(program, location, transpose, value)
}

pub fn program_uniform_matrix4x3dv(program int, location int, transpose bool, value []f64) {
	C.glProgramUniformMatrix4x3dv(program, location, transpose, value)
}

pub fn program_uniform_matrix4x3dv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix4x3dv(program, location, transpose, value)
}

pub fn program_uniform_matrix4x3fv(program int, location int, transpose bool, value []f32) {
	C.glProgramUniformMatrix4x3fv(program, location, transpose, value)
}

pub fn program_uniform_matrix4x3fv(program int, location int, transpose bool, value voidptr) {
	C.glProgramUniformMatrix4x3fv(program, location, transpose, value)
}

pub fn release_shader_compiler() {
	C.glReleaseShaderCompiler()
}

pub fn scissor_arrayv(first int, v []int) {
	C.glScissorArrayv(first, v)
}

pub fn scissor_arrayv(first int, v voidptr) {
	C.glScissorArrayv(first, v)
}

pub fn scissor_indexed(index int, left int, bottom int, width int, height int) {
	C.glScissorIndexed(index, left, bottom, width, height)
}

pub fn scissor_indexedv(index int, v []int) {
	C.glScissorIndexedv(index, v)
}

pub fn scissor_indexedv(index int, v voidptr) {
	C.glScissorIndexedv(index, v)
}

pub fn shader_binary(shaders []int, binaryformat int, binary voidptr) {
	C.glShaderBinary(shaders, binaryformat, binary)
}

pub fn shader_binary(shaders voidptr, binaryformat int, binary voidptr) {
	C.glShaderBinary(shaders, binaryformat, binary)
}

pub fn use_program_stages(pipeline int, stages int, program int) {
	C.glUseProgramStages(pipeline, stages, program)
}

pub fn validate_program_pipeline(pipeline int) {
	C.glValidateProgramPipeline(pipeline)
}

pub fn vertex_attrib_l1d(index int, x f64) {
	C.glVertexAttribL1d(index, x)
}

pub fn vertex_attrib_l1dv(index int, v []f64) {
	C.glVertexAttribL1dv(index, v)
}

pub fn vertex_attrib_l1dv(index int, v voidptr) {
	C.glVertexAttribL1dv(index, v)
}

pub fn vertex_attrib_l2d(index int, x f64, y f64) {
	C.glVertexAttribL2d(index, x, y)
}

pub fn vertex_attrib_l2dv(index int, v []f64) {
	C.glVertexAttribL2dv(index, v)
}

pub fn vertex_attrib_l2dv(index int, v voidptr) {
	C.glVertexAttribL2dv(index, v)
}

pub fn vertex_attrib_l3d(index int, x f64, y f64, z f64) {
	C.glVertexAttribL3d(index, x, y, z)
}

pub fn vertex_attrib_l3dv(index int, v []f64) {
	C.glVertexAttribL3dv(index, v)
}

pub fn vertex_attrib_l3dv(index int, v voidptr) {
	C.glVertexAttribL3dv(index, v)
}

pub fn vertex_attrib_l4d(index int, x f64, y f64, z f64, w f64) {
	C.glVertexAttribL4d(index, x, y, z, w)
}

pub fn vertex_attrib_l4dv(index int, v []f64) {
	C.glVertexAttribL4dv(index, v)
}

pub fn vertex_attrib_l4dv(index int, v voidptr) {
	C.glVertexAttribL4dv(index, v)
}

pub fn vertex_attrib_l_pointer(index int, size int, type int, stride int, pointer i64) {
	C.glVertexAttribLPointer(index, size, type, stride, pointer)
}

pub fn vertex_attrib_l_pointer(index int, size int, type int, stride int, pointer voidptr) {
	C.glVertexAttribLPointer(index, size, type, stride, pointer)
}

pub fn vertex_attrib_l_pointer(index int, size int, stride int, pointer voidptr) {
	C.glVertexAttribLPointer(index, size, stride, pointer)
}

pub fn viewport_arrayv(first int, v []f32) {
	C.glViewportArrayv(first, v)
}

pub fn viewport_arrayv(first int, v voidptr) {
	C.glViewportArrayv(first, v)
}

pub fn viewport_indexedf(index int, x f32, y f32, w f32, h f32) {
	C.glViewportIndexedf(index, x, y, w, h)
}

pub fn viewport_indexedfv(index int, v []f32) {
	C.glViewportIndexedfv(index, v)
}

pub fn viewport_indexedfv(index int, v voidptr) {
	C.glViewportIndexedfv(index, v)
}
