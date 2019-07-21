module gl41

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_FIXED
	GL_IMPLEMENTATION_COLOR_READ_TYPE
	GL_IMPLEMENTATION_COLOR_READ_FORMAT
	GL_LOW_FLOAT
	GL_MEDIUM_FLOAT
	GL_HIGH_FLOAT
	GL_LOW_INT
	GL_MEDIUM_INT
	GL_HIGH_INT
	GL_SHADER_COMPILER
	GL_SHADER_BINARY_FORMATS
	GL_NUM_SHADER_BINARY_FORMATS
	GL_MAX_VERTEX_UNIFORM_VECTORS
	GL_MAX_VARYING_VECTORS
	GL_MAX_FRAGMENT_UNIFORM_VECTORS
	GL_RGB565
	GL_PROGRAM_BINARY_RETRIEVABLE_HINT
	GL_PROGRAM_BINARY_LENGTH
	GL_NUM_PROGRAM_BINARY_FORMATS
	GL_PROGRAM_BINARY_FORMATS
	GL_VERTEX_SHADER_BIT
	GL_FRAGMENT_SHADER_BIT
	GL_GEOMETRY_SHADER_BIT
	GL_TESS_CONTROL_SHADER_BIT
	GL_TESS_EVALUATION_SHADER_BIT
	GL_ALL_SHADER_BITS
	GL_PROGRAM_SEPARABLE
	GL_ACTIVE_PROGRAM
	GL_PROGRAM_PIPELINE_BINDING
	GL_MAX_VIEWPORTS
	GL_VIEWPORT_SUBPIXEL_BITS
	GL_VIEWPORT_BOUNDS_RANGE
	GL_LAYER_PROVOKING_VERTEX
	GL_VIEWPORT_INDEX_PROVOKING_VERTEX
	GL_UNDEFINED_VERTEX
)

pub fn init_glad() int {
	return C.gladLoadGL()
}

pub fn release_shader_compiler() {
	C.glReleaseShaderCompiler()
}

// TODO
pub fn shader_binary(count int, shaders []u32, binaryformat u32, binary voidptr, length int) {
	C.glShaderBinary(count, shaders.data, binaryformat, binary, length)
}

// TODO
pub fn get_shader_precision_format(shadertype u32, precisiontype u32, range []int, precision []int) {
	C.glGetShaderPrecisionFormat(shadertype, precisiontype, range.data, precision.data)
}

pub fn depth_rangef(n f32, f f32) {
	C.glDepthRangef(n, f)
}

pub fn clear_depthf(d f32) {
	C.glClearDepthf(d)
}

// TODO
pub fn get_program_binary(program u32, bufSize int, length []int, binaryFormat []u32, binary voidptr) {
	C.glGetProgramBinary(program, bufSize, length.data, binaryFormat.data, binary)
}

// TODO
pub fn program_binary(program u32, binaryFormat u32, binary voidptr, length int) {
	C.glProgramBinary(program, binaryFormat, binary, length)
}

pub fn program_parameteri(program u32, pname u32, value int) {
	C.glProgramParameteri(program, pname, value)
}

pub fn use_program_stages(pipeline u32, stages u32, program u32) {
	C.glUseProgramStages(pipeline, stages, program)
}

pub fn active_shader_program(pipeline u32, program u32) {
	C.glActiveShaderProgram(pipeline, program)
}

// TODO
pub fn create_shader_programv(type_ u32, count int, strings string) u32 {
	return C.glCreateShaderProgramv(type_, count, strings.str)
}

pub fn bind_program_pipeline(pipeline u32) {
	C.glBindProgramPipeline(pipeline)
}

// TODO
pub fn delete_program_pipelines(n int, pipelines []u32) {
	C.glDeleteProgramPipelines(n, pipelines.data)
}

// TODO
pub fn gen_program_pipelines(n int, pipelines []u32) {
	C.glGenProgramPipelines(n, pipelines.data)
}

pub fn is_program_pipeline(pipeline u32) bool {
	return C.glIsProgramPipeline(pipeline)
}

// TODO
pub fn get_program_pipelineiv(pipeline u32, pname u32, params []int) {
	C.glGetProgramPipelineiv(pipeline, pname, params.data)
}

pub fn program_uniform1i(program u32, location int, v0 int) {
	C.glProgramUniform1i(program, location, v0)
}

// TODO
pub fn program_uniform1iv(program u32, location int, count int, value []int) {
	C.glProgramUniform1iv(program, location, count, value.data)
}

pub fn program_uniform1f(program u32, location int, v0 f32) {
	C.glProgramUniform1f(program, location, v0)
}

// TODO
pub fn program_uniform1fv(program u32, location int, count int, value []f32) {
	C.glProgramUniform1fv(program, location, count, value.data)
}

pub fn program_uniform1d(program u32, location int, v0 f64) {
	C.glProgramUniform1d(program, location, v0)
}

// TODO
pub fn program_uniform1dv(program u32, location int, count int, value []f64) {
	C.glProgramUniform1dv(program, location, count, value.data)
}

pub fn program_uniform1ui(program u32, location int, v0 u32) {
	C.glProgramUniform1ui(program, location, v0)
}

// TODO
pub fn program_uniform1uiv(program u32, location int, count int, value []u32) {
	C.glProgramUniform1uiv(program, location, count, value.data)
}

pub fn program_uniform2i(program u32, location int, v0 int, v1 int) {
	C.glProgramUniform2i(program, location, v0, v1)
}

// TODO
pub fn program_uniform2iv(program u32, location int, count int, value []int) {
	C.glProgramUniform2iv(program, location, count, value.data)
}

pub fn program_uniform2f(program u32, location int, v0 f32, v1 f32) {
	C.glProgramUniform2f(program, location, v0, v1)
}

// TODO
pub fn program_uniform2fv(program u32, location int, count int, value []f32) {
	C.glProgramUniform2fv(program, location, count, value.data)
}

pub fn program_uniform2d(program u32, location int, v0 f64, v1 f64) {
	C.glProgramUniform2d(program, location, v0, v1)
}

// TODO
pub fn program_uniform2dv(program u32, location int, count int, value []f64) {
	C.glProgramUniform2dv(program, location, count, value.data)
}

pub fn program_uniform2ui(program u32, location int, v0 u32, v1 u32) {
	C.glProgramUniform2ui(program, location, v0, v1)
}

// TODO
pub fn program_uniform2uiv(program u32, location int, count int, value []u32) {
	C.glProgramUniform2uiv(program, location, count, value.data)
}

pub fn program_uniform3i(program u32, location int, v0 int, v1 int, v2 int) {
	C.glProgramUniform3i(program, location, v0, v1, v2)
}

// TODO
pub fn program_uniform3iv(program u32, location int, count int, value []int) {
	C.glProgramUniform3iv(program, location, count, value.data)
}

pub fn program_uniform3f(program u32, location int, v0 f32, v1 f32, v2 f32) {
	C.glProgramUniform3f(program, location, v0, v1, v2)
}

// TODO
pub fn program_uniform3fv(program u32, location int, count int, value []f32) {
	C.glProgramUniform3fv(program, location, count, value.data)
}

pub fn program_uniform3d(program u32, location int, v0 f64, v1 f64, v2 f64) {
	C.glProgramUniform3d(program, location, v0, v1, v2)
}

// TODO
pub fn program_uniform3dv(program u32, location int, count int, value []f64) {
	C.glProgramUniform3dv(program, location, count, value.data)
}

pub fn program_uniform3ui(program u32, location int, v0 u32, v1 u32, v2 u32) {
	C.glProgramUniform3ui(program, location, v0, v1, v2)
}

// TODO
pub fn program_uniform3uiv(program u32, location int, count int, value []u32) {
	C.glProgramUniform3uiv(program, location, count, value.data)
}

pub fn program_uniform4i(program u32, location int, v0 int, v1 int, v2 int, v3 int) {
	C.glProgramUniform4i(program, location, v0, v1, v2, v3)
}

// TODO
pub fn program_uniform4iv(program u32, location int, count int, value []int) {
	C.glProgramUniform4iv(program, location, count, value.data)
}

pub fn program_uniform4f(program u32, location int, v0 f32, v1 f32, v2 f32, v3 f32) {
	C.glProgramUniform4f(program, location, v0, v1, v2, v3)
}

// TODO
pub fn program_uniform4fv(program u32, location int, count int, value []f32) {
	C.glProgramUniform4fv(program, location, count, value.data)
}

pub fn program_uniform4d(program u32, location int, v0 f64, v1 f64, v2 f64, v3 f64) {
	C.glProgramUniform4d(program, location, v0, v1, v2, v3)
}

// TODO
pub fn program_uniform4dv(program u32, location int, count int, value []f64) {
	C.glProgramUniform4dv(program, location, count, value.data)
}

pub fn program_uniform4ui(program u32, location int, v0 u32, v1 u32, v2 u32, v3 u32) {
	C.glProgramUniform4ui(program, location, v0, v1, v2, v3)
}

// TODO
pub fn program_uniform4uiv(program u32, location int, count int, value []u32) {
	C.glProgramUniform4uiv(program, location, count, value.data)
}

// TODO
pub fn program_uniform_matrix2fv(program u32, location int, count int, transpose bool, value []f32) {
	C.glProgramUniformMatrix2fv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix3fv(program u32, location int, count int, transpose bool, value []f32) {
	C.glProgramUniformMatrix3fv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix4fv(program u32, location int, count int, transpose bool, value []f32) {
	C.glProgramUniformMatrix4fv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix2dv(program u32, location int, count int, transpose bool, value []f64) {
	C.glProgramUniformMatrix2dv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix3dv(program u32, location int, count int, transpose bool, value []f64) {
	C.glProgramUniformMatrix3dv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix4dv(program u32, location int, count int, transpose bool, value []f64) {
	C.glProgramUniformMatrix4dv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix2x3fv(program u32, location int, count int, transpose bool, value []f32) {
	C.glProgramUniformMatrix2x3fv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix3x2fv(program u32, location int, count int, transpose bool, value []f32) {
	C.glProgramUniformMatrix3x2fv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix2x4fv(program u32, location int, count int, transpose bool, value []f32) {
	C.glProgramUniformMatrix2x4fv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix4x2fv(program u32, location int, count int, transpose bool, value []f32) {
	C.glProgramUniformMatrix4x2fv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix3x4fv(program u32, location int, count int, transpose bool, value []f32) {
	C.glProgramUniformMatrix3x4fv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix4x3fv(program u32, location int, count int, transpose bool, value []f32) {
	C.glProgramUniformMatrix4x3fv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix2x3dv(program u32, location int, count int, transpose bool, value []f64) {
	C.glProgramUniformMatrix2x3dv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix3x2dv(program u32, location int, count int, transpose bool, value []f64) {
	C.glProgramUniformMatrix3x2dv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix2x4dv(program u32, location int, count int, transpose bool, value []f64) {
	C.glProgramUniformMatrix2x4dv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix4x2dv(program u32, location int, count int, transpose bool, value []f64) {
	C.glProgramUniformMatrix4x2dv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix3x4dv(program u32, location int, count int, transpose bool, value []f64) {
	C.glProgramUniformMatrix3x4dv(program, location, count, transpose, value.data)
}

// TODO
pub fn program_uniform_matrix4x3dv(program u32, location int, count int, transpose bool, value []f64) {
	C.glProgramUniformMatrix4x3dv(program, location, count, transpose, value.data)
}

pub fn validate_program_pipeline(pipeline u32) {
	C.glValidateProgramPipeline(pipeline)
}

// TODO
pub fn get_program_pipeline_info_log(pipeline u32, bufSize int, length []int, infoLog string) {
	C.glGetProgramPipelineInfoLog(pipeline, bufSize, length.data, infoLog.str)
}

pub fn vertex_attrib_l1d(index u32, x f64) {
	C.glVertexAttribL1d(index, x)
}

pub fn vertex_attrib_l2d(index u32, x f64, y f64) {
	C.glVertexAttribL2d(index, x, y)
}

pub fn vertex_attrib_l3d(index u32, x f64, y f64, z f64) {
	C.glVertexAttribL3d(index, x, y, z)
}

pub fn vertex_attrib_l4d(index u32, x f64, y f64, z f64, w f64) {
	C.glVertexAttribL4d(index, x, y, z, w)
}

// TODO
pub fn vertex_attrib_l1dv(index u32, v []f64) {
	C.glVertexAttribL1dv(index, v.data)
}

// TODO
pub fn vertex_attrib_l2dv(index u32, v []f64) {
	C.glVertexAttribL2dv(index, v.data)
}

// TODO
pub fn vertex_attrib_l3dv(index u32, v []f64) {
	C.glVertexAttribL3dv(index, v.data)
}

// TODO
pub fn vertex_attrib_l4dv(index u32, v []f64) {
	C.glVertexAttribL4dv(index, v.data)
}

// TODO
pub fn vertex_attrib_l_pointer(index u32, size int, type_ u32, stride int, pointer voidptr) {
	C.glVertexAttribLPointer(index, size, type_, stride, pointer)
}

// TODO
pub fn get_vertex_attrib_ldv(index u32, pname u32, params []f64) {
	C.glGetVertexAttribLdv(index, pname, params.data)
}

// TODO
pub fn viewport_arrayv(first u32, count int, v []f32) {
	C.glViewportArrayv(first, count, v.data)
}

pub fn viewport_indexedf(index u32, x f32, y f32, w f32, h f32) {
	C.glViewportIndexedf(index, x, y, w, h)
}

// TODO
pub fn viewport_indexedfv(index u32, v []f32) {
	C.glViewportIndexedfv(index, v.data)
}

// TODO
pub fn scissor_arrayv(first u32, count int, v []int) {
	C.glScissorArrayv(first, count, v.data)
}

pub fn scissor_indexed(index u32, left int, bottom int, width int, height int) {
	C.glScissorIndexed(index, left, bottom, width, height)
}

// TODO
pub fn scissor_indexedv(index u32, v []int) {
	C.glScissorIndexedv(index, v.data)
}

// TODO
pub fn depth_range_arrayv(first u32, count int, v []f64) {
	C.glDepthRangeArrayv(first, count, v.data)
}

pub fn depth_range_indexed(index u32, n f64, f f64) {
	C.glDepthRangeIndexed(index, n, f)
}

// TODO
pub fn get_floati_v(target u32, index u32, data []f32) {
	C.glGetFloati_v(target, index, data.data)
}

// TODO
pub fn get_doublei_v(target u32, index u32, data []f64) {
	C.glGetDoublei_v(target, index, data.data)
}
