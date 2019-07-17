module gl20

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o
#include <glad.h>

import const (
	GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
	GL_ACTIVE_ATTRIBUTES
	GL_ACTIVE_UNIFORM_MAX_LENGTH
	GL_ACTIVE_UNIFORMS
	GL_ATTACHED_SHADERS
	GL_BLEND_EQUATION_ALPHA
	GL_BLEND_EQUATION_RGB
	GL_BOOL
	GL_BOOL_VEC2
	GL_BOOL_VEC3
	GL_BOOL_VEC4
	GL_COMPILE_STATUS
	GL_COORD_REPLACE
	GL_CURRENT_PROGRAM
	GL_CURRENT_VERTEX_ATTRIB
	GL_DELETE_STATUS
	GL_DRAW_BUFFER0
	GL_DRAW_BUFFER1
	GL_DRAW_BUFFER10
	GL_DRAW_BUFFER11
	GL_DRAW_BUFFER12
	GL_DRAW_BUFFER13
	GL_DRAW_BUFFER14
	GL_DRAW_BUFFER15
	GL_DRAW_BUFFER2
	GL_DRAW_BUFFER3
	GL_DRAW_BUFFER4
	GL_DRAW_BUFFER5
	GL_DRAW_BUFFER6
	GL_DRAW_BUFFER7
	GL_DRAW_BUFFER8
	GL_DRAW_BUFFER9
	GL_FLOAT_MAT2
	GL_FLOAT_MAT3
	GL_FLOAT_MAT4
	GL_FLOAT_VEC2
	GL_FLOAT_VEC3
	GL_FLOAT_VEC4
	GL_FRAGMENT_SHADER
	GL_FRAGMENT_SHADER_DERIVATIVE_HINT
	GL_INFO_LOG_LENGTH
	GL_INT_VEC2
	GL_INT_VEC3
	GL_INT_VEC4
	GL_LINK_STATUS
	GL_LOWER_LEFT
	GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
	GL_MAX_DRAW_BUFFERS
	GL_MAX_FRAGMENT_UNIFORM_COMPONENTS
	GL_MAX_TEXTURE_COORDS
	GL_MAX_TEXTURE_IMAGE_UNITS
	GL_MAX_VARYING_FLOATS
	GL_MAX_VERTEX_ATTRIBS
	GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
	GL_MAX_VERTEX_UNIFORM_COMPONENTS
	GL_POINT_SPRITE
	GL_POINT_SPRITE_COORD_ORIGIN
	GL_SAMPLER_1D
	GL_SAMPLER_1D_SHADOW
	GL_SAMPLER_2D
	GL_SAMPLER_2D_SHADOW
	GL_SAMPLER_3D
	GL_SAMPLER_CUBE
	GL_SHADER_SOURCE_LENGTH
	GL_SHADER_TYPE
	GL_SHADING_LANGUAGE_VERSION
	GL_STENCIL_BACK_FAIL
	GL_STENCIL_BACK_FUNC
	GL_STENCIL_BACK_PASS_DEPTH_FAIL
	GL_STENCIL_BACK_PASS_DEPTH_PASS
	GL_STENCIL_BACK_REF
	GL_STENCIL_BACK_VALUE_MASK
	GL_STENCIL_BACK_WRITEMASK
	GL_UPPER_LEFT
	GL_VALIDATE_STATUS
	GL_VERTEX_ATTRIB_ARRAY_ENABLED
	GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
	GL_VERTEX_ATTRIB_ARRAY_POINTER
	GL_VERTEX_ATTRIB_ARRAY_SIZE
	GL_VERTEX_ATTRIB_ARRAY_STRIDE
	GL_VERTEX_ATTRIB_ARRAY_TYPE
	GL_VERTEX_PROGRAM_POINT_SIZE
	GL_VERTEX_PROGRAM_TWO_SIDE
	GL_VERTEX_SHADER
)

pub fn attach_shader(program int, shader int) {
	C.glAttachShader(program, shader)
}

pub fn bind_attrib_location(program int, index int, name byteptr) {
	C.glBindAttribLocation(program, index, name)
}

pub fn bind_attrib_location(program int, index int, name voidptr) {
	C.glBindAttribLocation(program, index, name)
}

pub fn blend_equation_separate(mode_rgb int, mode_alpha int) {
	C.glBlendEquationSeparate(mode_rgb, mode_alpha)
}

pub fn compile_shader(shader int) {
	C.glCompileShader(shader)
}

pub fn create_program() int {
	return C.glCreateProgram()
}

pub fn create_shader(type int) int {
	return C.glCreateShader(type)
}

pub fn delete_program(program int) {
	C.glDeleteProgram(program)
}

pub fn delete_shader(shader int) {
	C.glDeleteShader(shader)
}

pub fn detach_shader(program int, shader int) {
	C.glDetachShader(program, shader)
}

pub fn disable_vertex_attrib_array(index int) {
	C.glDisableVertexAttribArray(index)
}

pub fn draw_buffers(buf int) {
	C.glDrawBuffers(buf)
}

pub fn draw_buffers(bufs []int) {
	C.glDrawBuffers(bufs)
}

pub fn draw_buffers(bufs voidptr) {
	C.glDrawBuffers(bufs)
}

pub fn enable_vertex_attrib_array(index int) {
	C.glEnableVertexAttribArray(index)
}

pub fn get_active_attrib(program int, index int, length []int, size []int, type []int, name voidptr) {
	C.glGetActiveAttrib(program, index, length, size, type, name)
}

pub fn get_active_attrib(program int, index int, max_length int, size voidptr, type voidptr) string {
	return C.glGetActiveAttrib(program, index, max_length, size, type)
}

pub fn get_active_attrib(program int, index int, size voidptr, type voidptr) string {
	return C.glGetActiveAttrib(program, index, size, type)
}

pub fn get_active_attrib(program int, index int, length voidptr, size voidptr, type voidptr, name voidptr) {
	C.glGetActiveAttrib(program, index, length, size, type, name)
}

pub fn get_active_uniform(program int, index int, length []int, size []int, type []int, name voidptr) {
	C.glGetActiveUniform(program, index, length, size, type, name)
}

pub fn get_active_uniform(program int, index int, max_length int, size voidptr, type voidptr) string {
	return C.glGetActiveUniform(program, index, max_length, size, type)
}

pub fn get_active_uniform(program int, index int, size voidptr, type voidptr) string {
	return C.glGetActiveUniform(program, index, size, type)
}

pub fn get_active_uniform(program int, index int, length voidptr, size voidptr, type voidptr, name voidptr) {
	C.glGetActiveUniform(program, index, length, size, type, name)
}

pub fn get_attached_shaders(program int, count []int, shaders []int) {
	C.glGetAttachedShaders(program, count, shaders)
}

pub fn get_attached_shaders(program int, count voidptr, shaders voidptr) {
	C.glGetAttachedShaders(program, count, shaders)
}

pub fn get_attrib_location(program int, name byteptr) int {
	return C.glGetAttribLocation(program, name)
}

pub fn get_attrib_location(program int, name voidptr) int {
	return C.glGetAttribLocation(program, name)
}

pub fn get_programi(program int, pname int) int {
	return C.glGetProgrami(program, pname)
}

pub fn get_program_info_log(program int) string {
	return C.glGetProgramInfoLog(program)
}

pub fn get_program_info_log(program int, max_length int) string {
	return C.glGetProgramInfoLog(program, max_length)
}

pub fn get_program_info_log(program int, length []int, info_log voidptr) {
	C.glGetProgramInfoLog(program, length, info_log)
}

pub fn get_program_info_log(program int, length voidptr, info_log voidptr) {
	C.glGetProgramInfoLog(program, length, info_log)
}

pub fn get_programiv(program int, pname int, params []int) {
	C.glGetProgramiv(program, pname, params)
}

pub fn get_programiv(program int, pname int, params voidptr) {
	C.glGetProgramiv(program, pname, params)
}

pub fn get_shaderi(shader int, pname int) int {
	return C.glGetShaderi(shader, pname)
}

pub fn get_shader_info_log(shader int) string {
	return C.glGetShaderInfoLog(shader)
}

pub fn get_shader_info_log(shader int, max_length int) string {
	return C.glGetShaderInfoLog(shader, max_length)
}

pub fn get_shader_info_log(shader int, length []int, info_log voidptr) {
	C.glGetShaderInfoLog(shader, length, info_log)
}

pub fn get_shader_info_log(shader int, length voidptr, info_log voidptr) {
	C.glGetShaderInfoLog(shader, length, info_log)
}

pub fn get_shaderiv(shader int, pname int, params []int) {
	C.glGetShaderiv(shader, pname, params)
}

pub fn get_shaderiv(shader int, pname int, params voidptr) {
	C.glGetShaderiv(shader, pname, params)
}

pub fn get_shader_source(shader int) string {
	return C.glGetShaderSource(shader)
}

pub fn get_shader_source(shader int, max_length int) string {
	return C.glGetShaderSource(shader, max_length)
}

pub fn get_shader_source(shader int, length []int, source voidptr) {
	C.glGetShaderSource(shader, length, source)
}

pub fn get_shader_source(shader int, length voidptr, source voidptr) {
	C.glGetShaderSource(shader, length, source)
}

pub fn get_uniformf(program int, location int) f32 {
	return C.glGetUniformf(program, location)
}

pub fn get_uniformfv(program int, location int, params []f32) {
	C.glGetUniformfv(program, location, params)
}

pub fn get_uniformfv(program int, location int, params voidptr) {
	C.glGetUniformfv(program, location, params)
}

pub fn get_uniformi(program int, location int) int {
	return C.glGetUniformi(program, location)
}

pub fn get_uniformiv(program int, location int, params []int) {
	C.glGetUniformiv(program, location, params)
}

pub fn get_uniformiv(program int, location int, params voidptr) {
	C.glGetUniformiv(program, location, params)
}

pub fn get_uniform_location(program int, name byteptr) int {
	return C.glGetUniformLocation(program, name)
}

pub fn get_uniform_location(program int, name voidptr) int {
	return C.glGetUniformLocation(program, name)
}

pub fn get_vertex_attribdv(index int, pname int, params []f64) {
	C.glGetVertexAttribdv(index, pname, params)
}

pub fn get_vertex_attribdv(index int, pname int, params voidptr) {
	C.glGetVertexAttribdv(index, pname, params)
}

pub fn get_vertex_attribfv(index int, pname int, params []f32) {
	C.glGetVertexAttribfv(index, pname, params)
}

pub fn get_vertex_attribfv(index int, pname int, params voidptr) {
	C.glGetVertexAttribfv(index, pname, params)
}

pub fn get_vertex_attribi(index int, pname int) int {
	return C.glGetVertexAttribi(index, pname)
}

pub fn get_vertex_attribiv(index int, pname int, params []int) {
	C.glGetVertexAttribiv(index, pname, params)
}

pub fn get_vertex_attribiv(index int, pname int, params voidptr) {
	C.glGetVertexAttribiv(index, pname, params)
}

pub fn get_vertex_attrib_pointer(index int, pname int) i64 {
	return C.glGetVertexAttribPointer(index, pname)
}

pub fn get_vertex_attrib_pointerv(index int, pname int, pointer *voidptr) {
	C.glGetVertexAttribPointerv(index, pname, pointer)
}

pub fn is_program(program int) bool {
	return C.glIsProgram(program)
}

pub fn is_shader(shader int) bool {
	return C.glIsShader(shader)
}

pub fn link_program(program int) {
	C.glLinkProgram(program)
}

pub fn shader_source(shader int, string byteptr) {
	C.glShaderSource(shader, string)
}

pub fn shader_source(shader int, strings *byteptr) {
	C.glShaderSource(shader, strings)
}

pub fn shader_source(shader int, strings *voidptr, length []int) {
	C.glShaderSource(shader, strings, length)
}

pub fn shader_source(shader int, strings *voidptr, length voidptr) {
	C.glShaderSource(shader, strings, length)
}

pub fn stencil_func_separate(face int, func int, ref int, mask int) {
	C.glStencilFuncSeparate(face, func, ref, mask)
}

pub fn stencil_mask_separate(face int, mask int) {
	C.glStencilMaskSeparate(face, mask)
}

pub fn stencil_op_separate(face int, sfail int, dpfail int, dppass int) {
	C.glStencilOpSeparate(face, sfail, dpfail, dppass)
}

pub fn uniform1f(location int, v0 f32) {
	C.glUniform1f(location, v0)
}

pub fn uniform1fv(location int, value []f32) {
	C.glUniform1fv(location, value)
}

pub fn uniform1fv(location int, value voidptr) {
	C.glUniform1fv(location, value)
}

pub fn uniform1i(location int, v0 int) {
	C.glUniform1i(location, v0)
}

pub fn uniform1iv(location int, value []int) {
	C.glUniform1iv(location, value)
}

pub fn uniform1iv(location int, value voidptr) {
	C.glUniform1iv(location, value)
}

pub fn uniform2f(location int, v0 f32, v1 f32) {
	C.glUniform2f(location, v0, v1)
}

pub fn uniform2fv(location int, value []f32) {
	C.glUniform2fv(location, value)
}

pub fn uniform2fv(location int, value voidptr) {
	C.glUniform2fv(location, value)
}

pub fn uniform2i(location int, v0 int, v1 int) {
	C.glUniform2i(location, v0, v1)
}

pub fn uniform2iv(location int, value []int) {
	C.glUniform2iv(location, value)
}

pub fn uniform2iv(location int, value voidptr) {
	C.glUniform2iv(location, value)
}

pub fn uniform3f(location int, v0 f32, v1 f32, v2 f32) {
	C.glUniform3f(location, v0, v1, v2)
}

pub fn uniform3fv(location int, value []f32) {
	C.glUniform3fv(location, value)
}

pub fn uniform3fv(location int, value voidptr) {
	C.glUniform3fv(location, value)
}

pub fn uniform3i(location int, v0 int, v1 int, v2 int) {
	C.glUniform3i(location, v0, v1, v2)
}

pub fn uniform3iv(location int, value []int) {
	C.glUniform3iv(location, value)
}

pub fn uniform3iv(location int, value voidptr) {
	C.glUniform3iv(location, value)
}

pub fn uniform4f(location int, v0 f32, v1 f32, v2 f32, v3 f32) {
	C.glUniform4f(location, v0, v1, v2, v3)
}

pub fn uniform4fv(location int, value []f32) {
	C.glUniform4fv(location, value)
}

pub fn uniform4fv(location int, value voidptr) {
	C.glUniform4fv(location, value)
}

pub fn uniform4i(location int, v0 int, v1 int, v2 int, v3 int) {
	C.glUniform4i(location, v0, v1, v2, v3)
}

pub fn uniform4iv(location int, value []int) {
	C.glUniform4iv(location, value)
}

pub fn uniform4iv(location int, value voidptr) {
	C.glUniform4iv(location, value)
}

pub fn uniform_matrix2fv(location int, transpose bool, value []f32) {
	C.glUniformMatrix2fv(location, transpose, value)
}

pub fn uniform_matrix2fv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix2fv(location, transpose, value)
}

pub fn uniform_matrix3fv(location int, transpose bool, value []f32) {
	C.glUniformMatrix3fv(location, transpose, value)
}

pub fn uniform_matrix3fv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix3fv(location, transpose, value)
}

pub fn uniform_matrix4fv(location int, transpose bool, value []f32) {
	C.glUniformMatrix4fv(location, transpose, value)
}

pub fn uniform_matrix4fv(location int, transpose bool, value voidptr) {
	C.glUniformMatrix4fv(location, transpose, value)
}

pub fn use_program(program int) {
	C.glUseProgram(program)
}

pub fn validate_program(program int) {
	C.glValidateProgram(program)
}

pub fn vertex_attrib1d(index int, v0 f64) {
	C.glVertexAttrib1d(index, v0)
}

pub fn vertex_attrib1dv(index int, v []f64) {
	C.glVertexAttrib1dv(index, v)
}

pub fn vertex_attrib1dv(index int, v voidptr) {
	C.glVertexAttrib1dv(index, v)
}

pub fn vertex_attrib1f(index int, v0 f32) {
	C.glVertexAttrib1f(index, v0)
}

pub fn vertex_attrib1fv(index int, v []f32) {
	C.glVertexAttrib1fv(index, v)
}

pub fn vertex_attrib1fv(index int, v voidptr) {
	C.glVertexAttrib1fv(index, v)
}

pub fn vertex_attrib1s(index int, v0 i16) {
	C.glVertexAttrib1s(index, v0)
}

pub fn vertex_attrib1sv(index int, v []i16) {
	C.glVertexAttrib1sv(index, v)
}

pub fn vertex_attrib1sv(index int, v voidptr) {
	C.glVertexAttrib1sv(index, v)
}

pub fn vertex_attrib2d(index int, v0 f64, v1 f64) {
	C.glVertexAttrib2d(index, v0, v1)
}

pub fn vertex_attrib2dv(index int, v []f64) {
	C.glVertexAttrib2dv(index, v)
}

pub fn vertex_attrib2dv(index int, v voidptr) {
	C.glVertexAttrib2dv(index, v)
}

pub fn vertex_attrib2f(index int, v0 f32, v1 f32) {
	C.glVertexAttrib2f(index, v0, v1)
}

pub fn vertex_attrib2fv(index int, v []f32) {
	C.glVertexAttrib2fv(index, v)
}

pub fn vertex_attrib2fv(index int, v voidptr) {
	C.glVertexAttrib2fv(index, v)
}

pub fn vertex_attrib2s(index int, v0 i16, v1 i16) {
	C.glVertexAttrib2s(index, v0, v1)
}

pub fn vertex_attrib2sv(index int, v []i16) {
	C.glVertexAttrib2sv(index, v)
}

pub fn vertex_attrib2sv(index int, v voidptr) {
	C.glVertexAttrib2sv(index, v)
}

pub fn vertex_attrib3d(index int, v0 f64, v1 f64, v2 f64) {
	C.glVertexAttrib3d(index, v0, v1, v2)
}

pub fn vertex_attrib3dv(index int, v []f64) {
	C.glVertexAttrib3dv(index, v)
}

pub fn vertex_attrib3dv(index int, v voidptr) {
	C.glVertexAttrib3dv(index, v)
}

pub fn vertex_attrib3f(index int, v0 f32, v1 f32, v2 f32) {
	C.glVertexAttrib3f(index, v0, v1, v2)
}

pub fn vertex_attrib3fv(index int, v []f32) {
	C.glVertexAttrib3fv(index, v)
}

pub fn vertex_attrib3fv(index int, v voidptr) {
	C.glVertexAttrib3fv(index, v)
}

pub fn vertex_attrib3s(index int, v0 i16, v1 i16, v2 i16) {
	C.glVertexAttrib3s(index, v0, v1, v2)
}

pub fn vertex_attrib3sv(index int, v []i16) {
	C.glVertexAttrib3sv(index, v)
}

pub fn vertex_attrib3sv(index int, v voidptr) {
	C.glVertexAttrib3sv(index, v)
}

pub fn vertex_attrib4bv(index int, v voidptr) {
	C.glVertexAttrib4bv(index, v)
}

pub fn vertex_attrib4d(index int, v0 f64, v1 f64, v2 f64, v3 f64) {
	C.glVertexAttrib4d(index, v0, v1, v2, v3)
}

pub fn vertex_attrib4dv(index int, v []f64) {
	C.glVertexAttrib4dv(index, v)
}

pub fn vertex_attrib4dv(index int, v voidptr) {
	C.glVertexAttrib4dv(index, v)
}

pub fn vertex_attrib4f(index int, v0 f32, v1 f32, v2 f32, v3 f32) {
	C.glVertexAttrib4f(index, v0, v1, v2, v3)
}

pub fn vertex_attrib4fv(index int, v []f32) {
	C.glVertexAttrib4fv(index, v)
}

pub fn vertex_attrib4fv(index int, v voidptr) {
	C.glVertexAttrib4fv(index, v)
}

pub fn vertex_attrib4iv(index int, v []int) {
	C.glVertexAttrib4iv(index, v)
}

pub fn vertex_attrib4iv(index int, v voidptr) {
	C.glVertexAttrib4iv(index, v)
}

pub fn vertex_attrib4_nbv(index int, v voidptr) {
	C.glVertexAttrib4Nbv(index, v)
}

pub fn vertex_attrib4_niv(index int, v []int) {
	C.glVertexAttrib4Niv(index, v)
}

pub fn vertex_attrib4_niv(index int, v voidptr) {
	C.glVertexAttrib4Niv(index, v)
}

pub fn vertex_attrib4_nsv(index int, v []i16) {
	C.glVertexAttrib4Nsv(index, v)
}

pub fn vertex_attrib4_nsv(index int, v voidptr) {
	C.glVertexAttrib4Nsv(index, v)
}

pub fn vertex_attrib4_nub(index int, x byte, y byte, z byte, w byte) {
	C.glVertexAttrib4Nub(index, x, y, z, w)
}

pub fn vertex_attrib4_nubv(index int, v voidptr) {
	C.glVertexAttrib4Nubv(index, v)
}

pub fn vertex_attrib4_nuiv(index int, v []int) {
	C.glVertexAttrib4Nuiv(index, v)
}

pub fn vertex_attrib4_nuiv(index int, v voidptr) {
	C.glVertexAttrib4Nuiv(index, v)
}

pub fn vertex_attrib4_nusv(index int, v []i16) {
	C.glVertexAttrib4Nusv(index, v)
}

pub fn vertex_attrib4_nusv(index int, v voidptr) {
	C.glVertexAttrib4Nusv(index, v)
}

pub fn vertex_attrib4s(index int, v0 i16, v1 i16, v2 i16, v3 i16) {
	C.glVertexAttrib4s(index, v0, v1, v2, v3)
}

pub fn vertex_attrib4sv(index int, v []i16) {
	C.glVertexAttrib4sv(index, v)
}

pub fn vertex_attrib4sv(index int, v voidptr) {
	C.glVertexAttrib4sv(index, v)
}

pub fn vertex_attrib4ubv(index int, v voidptr) {
	C.glVertexAttrib4ubv(index, v)
}

pub fn vertex_attrib4uiv(index int, v []int) {
	C.glVertexAttrib4uiv(index, v)
}

pub fn vertex_attrib4uiv(index int, v voidptr) {
	C.glVertexAttrib4uiv(index, v)
}

pub fn vertex_attrib4usv(index int, v []i16) {
	C.glVertexAttrib4usv(index, v)
}

pub fn vertex_attrib4usv(index int, v voidptr) {
	C.glVertexAttrib4usv(index, v)
}

pub fn vertex_attrib_pointer(index int, size int, type int, normalized bool, stride int, pointer i64) {
	C.glVertexAttribPointer(index, size, type, normalized, stride, pointer)
}

pub fn vertex_attrib_pointer(index int, size int, type int, normalized bool, stride int, pointer voidptr) {
	C.glVertexAttribPointer(index, size, type, normalized, stride, pointer)
}

pub fn vertex_attrib_pointer(index int, size int, type int, normalized bool, stride int, pointer voidptr) {
	C.glVertexAttribPointer(index, size, type, normalized, stride, pointer)
}

pub fn vertex_attrib_pointer(index int, size int, type int, normalized bool, stride int, pointer voidptr) {
	C.glVertexAttribPointer(index, size, type, normalized, stride, pointer)
}

pub fn vertex_attrib_pointer(index int, size int, type int, normalized bool, stride int, pointer voidptr) {
	C.glVertexAttribPointer(index, size, type, normalized, stride, pointer)
}
