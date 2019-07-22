module gl20

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_BLEND_EQUATION_RGB
	GL_VERTEX_ATTRIB_ARRAY_ENABLED
	GL_VERTEX_ATTRIB_ARRAY_SIZE
	GL_VERTEX_ATTRIB_ARRAY_STRIDE
	GL_VERTEX_ATTRIB_ARRAY_TYPE
	GL_CURRENT_VERTEX_ATTRIB
	GL_VERTEX_PROGRAM_POINT_SIZE
	GL_VERTEX_ATTRIB_ARRAY_POINTER
	GL_STENCIL_BACK_FUNC
	GL_STENCIL_BACK_FAIL
	GL_STENCIL_BACK_PASS_DEPTH_FAIL
	GL_STENCIL_BACK_PASS_DEPTH_PASS
	GL_MAX_DRAW_BUFFERS
	GL_DRAW_BUFFER0
	GL_DRAW_BUFFER1
	GL_DRAW_BUFFER2
	GL_DRAW_BUFFER3
	GL_DRAW_BUFFER4
	GL_DRAW_BUFFER5
	GL_DRAW_BUFFER6
	GL_DRAW_BUFFER7
	GL_DRAW_BUFFER8
	GL_DRAW_BUFFER9
	GL_DRAW_BUFFER10
	GL_DRAW_BUFFER11
	GL_DRAW_BUFFER12
	GL_DRAW_BUFFER13
	GL_DRAW_BUFFER14
	GL_DRAW_BUFFER15
	GL_BLEND_EQUATION_ALPHA
	GL_MAX_VERTEX_ATTRIBS
	GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
	GL_MAX_TEXTURE_IMAGE_UNITS
	GL_FRAGMENT_SHADER
	GL_VERTEX_SHADER
	GL_MAX_FRAGMENT_UNIFORM_COMPONENTS
	GL_MAX_VERTEX_UNIFORM_COMPONENTS
	GL_MAX_VARYING_FLOATS
	GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
	GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
	GL_SHADER_TYPE
	GL_FLOAT_VEC2
	GL_FLOAT_VEC3
	GL_FLOAT_VEC4
	GL_INT_VEC2
	GL_INT_VEC3
	GL_INT_VEC4
	GL_BOOL
	GL_BOOL_VEC2
	GL_BOOL_VEC3
	GL_BOOL_VEC4
	GL_FLOAT_MAT2
	GL_FLOAT_MAT3
	GL_FLOAT_MAT4
	GL_SAMPLER_1D
	GL_SAMPLER_2D
	GL_SAMPLER_3D
	GL_SAMPLER_CUBE
	GL_SAMPLER_1D_SHADOW
	GL_SAMPLER_2D_SHADOW
	GL_DELETE_STATUS
	GL_COMPILE_STATUS
	GL_LINK_STATUS
	GL_VALIDATE_STATUS
	GL_INFO_LOG_LENGTH
	GL_ATTACHED_SHADERS
	GL_ACTIVE_UNIFORMS
	GL_ACTIVE_UNIFORM_MAX_LENGTH
	GL_SHADER_SOURCE_LENGTH
	GL_ACTIVE_ATTRIBUTES
	GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
	GL_FRAGMENT_SHADER_DERIVATIVE_HINT
	GL_SHADING_LANGUAGE_VERSION
	GL_CURRENT_PROGRAM
	GL_POINT_SPRITE_COORD_ORIGIN
	GL_LOWER_LEFT
	GL_UPPER_LEFT
	GL_STENCIL_BACK_REF
	GL_STENCIL_BACK_VALUE_MASK
	GL_STENCIL_BACK_WRITEMASK
	GL_VERTEX_PROGRAM_TWO_SIDE
	GL_POINT_SPRITE
	GL_COORD_REPLACE
	GL_MAX_TEXTURE_COORDS
)

pub fn blend_equation_separate(modeRGB u32, modeAlpha u32) {
	C.glBlendEquationSeparate(modeRGB, modeAlpha)
}

// TODO
pub fn draw_buffers(n int, bufs []u32) {
	C.glDrawBuffers(n, bufs.data)
}

pub fn stencil_op_separate(face u32, sfail u32, dpfail u32, dppass u32) {
	C.glStencilOpSeparate(face, sfail, dpfail, dppass)
}

pub fn stencil_func_separate(face u32, func u32, ref int, mask u32) {
	C.glStencilFuncSeparate(face, func, ref, mask)
}

pub fn stencil_mask_separate(face u32, mask u32) {
	C.glStencilMaskSeparate(face, mask)
}

pub fn attach_shader(program u32, shader u32) {
	C.glAttachShader(program, shader)
}

// TODO
pub fn bind_attrib_location(program u32, index u32, name string) {
	C.glBindAttribLocation(program, index, name.str)
}

pub fn compile_shader(shader u32) {
	C.glCompileShader(shader)
}

pub fn create_program() u32 {
	return C.glCreateProgram()
}

pub fn create_shader(type_ u32) u32 {
	return C.glCreateShader(type_)
}

pub fn delete_program(program u32) {
	C.glDeleteProgram(program)
}

pub fn delete_shader(shader u32) {
	C.glDeleteShader(shader)
}

pub fn detach_shader(program u32, shader u32) {
	C.glDetachShader(program, shader)
}

pub fn disable_vertex_attrib_array(index u32) {
	C.glDisableVertexAttribArray(index)
}

pub fn enable_vertex_attrib_array(index u32) {
	C.glEnableVertexAttribArray(index)
}

// TODO
pub fn get_active_attrib(program u32, index u32, bufSize int, length []int, size []int, type_ []u32, name string) {
	C.glGetActiveAttrib(program, index, bufSize, length.data, size.data, type_.data, name.str)
}

// TODO
pub fn get_active_uniform(program u32, index u32, bufSize int, length []int, size []int, type_ []u32, name string) {
	C.glGetActiveUniform(program, index, bufSize, length.data, size.data, type_.data, name.str)
}

// TODO
pub fn get_attached_shaders(program u32, maxCount int, count []int, shaders []u32) {
	C.glGetAttachedShaders(program, maxCount, count.data, shaders.data)
}

// TODO
pub fn get_attrib_location(program u32, name string) int {
	return C.glGetAttribLocation(program, name.str)
}

// TODO
pub fn get_programiv(program u32, pname u32, params []int) {
	C.glGetProgramiv(program, pname, params.data)
}

// TODO
pub fn get_program_info_log(program u32, bufSize int, length []int, infoLog string) {
	C.glGetProgramInfoLog(program, bufSize, length.data, infoLog.str)
}

// TODO
pub fn get_shaderiv(shader u32, pname u32, params []int) {
	C.glGetShaderiv(shader, pname, params.data)
}

// TODO
pub fn get_shader_info_log(shader u32, bufSize int, length []int, infoLog string) {
	C.glGetShaderInfoLog(shader, bufSize, length.data, infoLog.str)
}

// TODO
pub fn get_shader_source(shader u32, bufSize int, length []int, source string) {
	C.glGetShaderSource(shader, bufSize, length.data, source.str)
}

// TODO
pub fn get_uniform_location(program u32, name string) int {
	return C.glGetUniformLocation(program, name.str)
}

// TODO
pub fn get_uniformfv(program u32, location int, params []f32) {
	C.glGetUniformfv(program, location, params.data)
}

// TODO
pub fn get_uniformiv(program u32, location int, params []int) {
	C.glGetUniformiv(program, location, params.data)
}

// TODO
pub fn get_vertex_attribdv(index u32, pname u32, params []f64) {
	C.glGetVertexAttribdv(index, pname, params.data)
}

// TODO
pub fn get_vertex_attribfv(index u32, pname u32, params []f32) {
	C.glGetVertexAttribfv(index, pname, params.data)
}

// TODO
pub fn get_vertex_attribiv(index u32, pname u32, params []int) {
	C.glGetVertexAttribiv(index, pname, params.data)
}

// TODO
pub fn get_vertex_attrib_pointerv(index u32, pname u32, pointer *voidptr) {
	C.glGetVertexAttribPointerv(index, pname, pointer)
}

pub fn is_program(program u32) bool {
	return C.glIsProgram(program)
}

pub fn is_shader(shader u32) bool {
	return C.glIsShader(shader)
}

pub fn link_program(program u32) {
	C.glLinkProgram(program)
}

// TODO
pub fn shader_source(shader u32, count int, string voidptr, length []int) {
	C.glShaderSource(shader, count, string, length.data)
}

pub fn use_program(program u32) {
	C.glUseProgram(program)
}

pub fn uniform1f(location int, v0 f32) {
	C.glUniform1f(location, v0)
}

pub fn uniform2f(location int, v0 f32, v1 f32) {
	C.glUniform2f(location, v0, v1)
}

pub fn uniform3f(location int, v0 f32, v1 f32, v2 f32) {
	C.glUniform3f(location, v0, v1, v2)
}

pub fn uniform4f(location int, v0 f32, v1 f32, v2 f32, v3 f32) {
	C.glUniform4f(location, v0, v1, v2, v3)
}

pub fn uniform1i(location int, v0 int) {
	C.glUniform1i(location, v0)
}

pub fn uniform2i(location int, v0 int, v1 int) {
	C.glUniform2i(location, v0, v1)
}

pub fn uniform3i(location int, v0 int, v1 int, v2 int) {
	C.glUniform3i(location, v0, v1, v2)
}

pub fn uniform4i(location int, v0 int, v1 int, v2 int, v3 int) {
	C.glUniform4i(location, v0, v1, v2, v3)
}

// TODO
pub fn uniform1fv(location int, count int, value []f32) {
	C.glUniform1fv(location, count, value.data)
}

// TODO
pub fn uniform2fv(location int, count int, value []f32) {
	C.glUniform2fv(location, count, value.data)
}

// TODO
pub fn uniform3fv(location int, count int, value []f32) {
	C.glUniform3fv(location, count, value.data)
}

// TODO
pub fn uniform4fv(location int, count int, value []f32) {
	C.glUniform4fv(location, count, value.data)
}

// TODO
pub fn uniform1iv(location int, count int, value []int) {
	C.glUniform1iv(location, count, value.data)
}

// TODO
pub fn uniform2iv(location int, count int, value []int) {
	C.glUniform2iv(location, count, value.data)
}

// TODO
pub fn uniform3iv(location int, count int, value []int) {
	C.glUniform3iv(location, count, value.data)
}

// TODO
pub fn uniform4iv(location int, count int, value []int) {
	C.glUniform4iv(location, count, value.data)
}

// TODO
pub fn uniform_matrix2fv(location int, count int, transpose bool, value []f32) {
	C.glUniformMatrix2fv(location, count, transpose, value.data)
}

// TODO
pub fn uniform_matrix3fv(location int, count int, transpose bool, value []f32) {
	C.glUniformMatrix3fv(location, count, transpose, value.data)
}

// TODO
pub fn uniform_matrix4fv(location int, count int, transpose bool, value []f32) {
	C.glUniformMatrix4fv(location, count, transpose, value.data)
}

pub fn validate_program(program u32) {
	C.glValidateProgram(program)
}

pub fn vertex_attrib1d(index u32, x f64) {
	C.glVertexAttrib1d(index, x)
}

// TODO
pub fn vertex_attrib1dv(index u32, v []f64) {
	C.glVertexAttrib1dv(index, v.data)
}

pub fn vertex_attrib1f(index u32, x f32) {
	C.glVertexAttrib1f(index, x)
}

// TODO
pub fn vertex_attrib1fv(index u32, v []f32) {
	C.glVertexAttrib1fv(index, v.data)
}

pub fn vertex_attrib1s(index u32, x i16) {
	C.glVertexAttrib1s(index, x)
}

// TODO
pub fn vertex_attrib1sv(index u32, v []i16) {
	C.glVertexAttrib1sv(index, v.data)
}

pub fn vertex_attrib2d(index u32, x f64, y f64) {
	C.glVertexAttrib2d(index, x, y)
}

// TODO
pub fn vertex_attrib2dv(index u32, v []f64) {
	C.glVertexAttrib2dv(index, v.data)
}

pub fn vertex_attrib2f(index u32, x f32, y f32) {
	C.glVertexAttrib2f(index, x, y)
}

// TODO
pub fn vertex_attrib2fv(index u32, v []f32) {
	C.glVertexAttrib2fv(index, v.data)
}

pub fn vertex_attrib2s(index u32, x i16, y i16) {
	C.glVertexAttrib2s(index, x, y)
}

// TODO
pub fn vertex_attrib2sv(index u32, v []i16) {
	C.glVertexAttrib2sv(index, v.data)
}

pub fn vertex_attrib3d(index u32, x f64, y f64, z f64) {
	C.glVertexAttrib3d(index, x, y, z)
}

// TODO
pub fn vertex_attrib3dv(index u32, v []f64) {
	C.glVertexAttrib3dv(index, v.data)
}

pub fn vertex_attrib3f(index u32, x f32, y f32, z f32) {
	C.glVertexAttrib3f(index, x, y, z)
}

// TODO
pub fn vertex_attrib3fv(index u32, v []f32) {
	C.glVertexAttrib3fv(index, v.data)
}

pub fn vertex_attrib3s(index u32, x i16, y i16, z i16) {
	C.glVertexAttrib3s(index, x, y, z)
}

// TODO
pub fn vertex_attrib3sv(index u32, v []i16) {
	C.glVertexAttrib3sv(index, v.data)
}

// TODO
pub fn vertex_attrib4_nbv(index u32, v []i8) {
	C.glVertexAttrib4Nbv(index, v.data)
}

// TODO
pub fn vertex_attrib4_niv(index u32, v []int) {
	C.glVertexAttrib4Niv(index, v.data)
}

// TODO
pub fn vertex_attrib4_nsv(index u32, v []i16) {
	C.glVertexAttrib4Nsv(index, v.data)
}

pub fn vertex_attrib4_nub(index u32, x u8, y u8, z u8, w u8) {
	C.glVertexAttrib4Nub(index, x, y, z, w)
}

// TODO
pub fn vertex_attrib4_nubv(index u32, v []u8) {
	C.glVertexAttrib4Nubv(index, v.data)
}

// TODO
pub fn vertex_attrib4_nuiv(index u32, v []u32) {
	C.glVertexAttrib4Nuiv(index, v.data)
}

// TODO
pub fn vertex_attrib4_nusv(index u32, v []u16) {
	C.glVertexAttrib4Nusv(index, v.data)
}

// TODO
pub fn vertex_attrib4bv(index u32, v []i8) {
	C.glVertexAttrib4bv(index, v.data)
}

pub fn vertex_attrib4d(index u32, x f64, y f64, z f64, w f64) {
	C.glVertexAttrib4d(index, x, y, z, w)
}

// TODO
pub fn vertex_attrib4dv(index u32, v []f64) {
	C.glVertexAttrib4dv(index, v.data)
}

pub fn vertex_attrib4f(index u32, x f32, y f32, z f32, w f32) {
	C.glVertexAttrib4f(index, x, y, z, w)
}

// TODO
pub fn vertex_attrib4fv(index u32, v []f32) {
	C.glVertexAttrib4fv(index, v.data)
}

// TODO
pub fn vertex_attrib4iv(index u32, v []int) {
	C.glVertexAttrib4iv(index, v.data)
}

pub fn vertex_attrib4s(index u32, x i16, y i16, z i16, w i16) {
	C.glVertexAttrib4s(index, x, y, z, w)
}

// TODO
pub fn vertex_attrib4sv(index u32, v []i16) {
	C.glVertexAttrib4sv(index, v.data)
}

// TODO
pub fn vertex_attrib4ubv(index u32, v []u8) {
	C.glVertexAttrib4ubv(index, v.data)
}

// TODO
pub fn vertex_attrib4uiv(index u32, v []u32) {
	C.glVertexAttrib4uiv(index, v.data)
}

// TODO
pub fn vertex_attrib4usv(index u32, v []u16) {
	C.glVertexAttrib4usv(index, v.data)
}

// TODO
pub fn vertex_attrib_pointer(index u32, size int, type_ u32, normalized bool, stride int, pointer voidptr) {
	C.glVertexAttribPointer(index, size, type_, normalized, stride, pointer)
}
