module gl33

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_VERTEX_ATTRIB_ARRAY_DIVISOR
	GL_SRC1_COLOR
	GL_ONE_MINUS_SRC1_COLOR
	GL_ONE_MINUS_SRC1_ALPHA
	GL_MAX_DUAL_SOURCE_DRAW_BUFFERS
	GL_ANY_SAMPLES_PASSED
	GL_SAMPLER_BINDING
	GL_RGB10_A2UI
	GL_TEXTURE_SWIZZLE_R
	GL_TEXTURE_SWIZZLE_G
	GL_TEXTURE_SWIZZLE_B
	GL_TEXTURE_SWIZZLE_A
	GL_TEXTURE_SWIZZLE_RGBA
	GL_TIME_ELAPSED
	GL_TIMESTAMP
	GL_INT_2_10_10_10_REV
)

pub fn init_glad() int {
	return C.gladLoadGL()
}

pub fn bind_frag_data_location_indexed(program u32, colorNumber u32, index u32, name i8) {
	C.glBindFragDataLocationIndexed(program, colorNumber, index, name)
}

pub fn get_frag_data_index(program u32, name i8) int {
	return C.glGetFragDataIndex(program, name)
}

// TODO
pub fn gen_samplers(count int, samplers []u32) {
	C.glGenSamplers(count, samplers.data)
}

// TODO
pub fn delete_samplers(count int, samplers []u32) {
	C.glDeleteSamplers(count, samplers.data)
}

pub fn is_sampler(sampler u32) bool {
	return C.glIsSampler(sampler)
}

pub fn bind_sampler(unit u32, sampler u32) {
	C.glBindSampler(unit, sampler)
}

pub fn sampler_parameteri(sampler u32, pname u32, param int) {
	C.glSamplerParameteri(sampler, pname, param)
}

// TODO
pub fn sampler_parameteriv(sampler u32, pname u32, param []int) {
	C.glSamplerParameteriv(sampler, pname, param.data)
}

pub fn sampler_parameterf(sampler u32, pname u32, param f32) {
	C.glSamplerParameterf(sampler, pname, param)
}

// TODO
pub fn sampler_parameterfv(sampler u32, pname u32, param []f32) {
	C.glSamplerParameterfv(sampler, pname, param.data)
}

// TODO
pub fn sampler_parameter_iiv(sampler u32, pname u32, param []int) {
	C.glSamplerParameterIiv(sampler, pname, param.data)
}

// TODO
pub fn sampler_parameter_iuiv(sampler u32, pname u32, param []u32) {
	C.glSamplerParameterIuiv(sampler, pname, param.data)
}

// TODO
pub fn get_sampler_parameteriv(sampler u32, pname u32, params []int) {
	C.glGetSamplerParameteriv(sampler, pname, params.data)
}

// TODO
pub fn get_sampler_parameter_iiv(sampler u32, pname u32, params []int) {
	C.glGetSamplerParameterIiv(sampler, pname, params.data)
}

// TODO
pub fn get_sampler_parameterfv(sampler u32, pname u32, params []f32) {
	C.glGetSamplerParameterfv(sampler, pname, params.data)
}

// TODO
pub fn get_sampler_parameter_iuiv(sampler u32, pname u32, params []u32) {
	C.glGetSamplerParameterIuiv(sampler, pname, params.data)
}

pub fn query_counter(id u32, target u32) {
	C.glQueryCounter(id, target)
}

// TODO
pub fn get_query_objecti64v(id u32, pname u32, params []i64) {
	C.glGetQueryObjecti64v(id, pname, params.data)
}

// TODO
pub fn get_query_objectui64v(id u32, pname u32, params []u64) {
	C.glGetQueryObjectui64v(id, pname, params.data)
}

pub fn vertex_attrib_divisor(index u32, divisor u32) {
	C.glVertexAttribDivisor(index, divisor)
}

pub fn vertex_attrib_p1ui(index u32, type_ u32, normalized bool, value u32) {
	C.glVertexAttribP1ui(index, type_, normalized, value)
}

// TODO
pub fn vertex_attrib_p1uiv(index u32, type_ u32, normalized bool, value []u32) {
	C.glVertexAttribP1uiv(index, type_, normalized, value.data)
}

pub fn vertex_attrib_p2ui(index u32, type_ u32, normalized bool, value u32) {
	C.glVertexAttribP2ui(index, type_, normalized, value)
}

// TODO
pub fn vertex_attrib_p2uiv(index u32, type_ u32, normalized bool, value []u32) {
	C.glVertexAttribP2uiv(index, type_, normalized, value.data)
}

pub fn vertex_attrib_p3ui(index u32, type_ u32, normalized bool, value u32) {
	C.glVertexAttribP3ui(index, type_, normalized, value)
}

// TODO
pub fn vertex_attrib_p3uiv(index u32, type_ u32, normalized bool, value []u32) {
	C.glVertexAttribP3uiv(index, type_, normalized, value.data)
}

pub fn vertex_attrib_p4ui(index u32, type_ u32, normalized bool, value u32) {
	C.glVertexAttribP4ui(index, type_, normalized, value)
}

// TODO
pub fn vertex_attrib_p4uiv(index u32, type_ u32, normalized bool, value []u32) {
	C.glVertexAttribP4uiv(index, type_, normalized, value.data)
}

pub fn vertex_p2ui(type_ u32, value u32) {
	C.glVertexP2ui(type_, value)
}

// TODO
pub fn vertex_p2uiv(type_ u32, value []u32) {
	C.glVertexP2uiv(type_, value.data)
}

pub fn vertex_p3ui(type_ u32, value u32) {
	C.glVertexP3ui(type_, value)
}

// TODO
pub fn vertex_p3uiv(type_ u32, value []u32) {
	C.glVertexP3uiv(type_, value.data)
}

pub fn vertex_p4ui(type_ u32, value u32) {
	C.glVertexP4ui(type_, value)
}

// TODO
pub fn vertex_p4uiv(type_ u32, value []u32) {
	C.glVertexP4uiv(type_, value.data)
}

pub fn tex_coord_p1ui(type_ u32, coords u32) {
	C.glTexCoordP1ui(type_, coords)
}

// TODO
pub fn tex_coord_p1uiv(type_ u32, coords []u32) {
	C.glTexCoordP1uiv(type_, coords.data)
}

pub fn tex_coord_p2ui(type_ u32, coords u32) {
	C.glTexCoordP2ui(type_, coords)
}

// TODO
pub fn tex_coord_p2uiv(type_ u32, coords []u32) {
	C.glTexCoordP2uiv(type_, coords.data)
}

pub fn tex_coord_p3ui(type_ u32, coords u32) {
	C.glTexCoordP3ui(type_, coords)
}

// TODO
pub fn tex_coord_p3uiv(type_ u32, coords []u32) {
	C.glTexCoordP3uiv(type_, coords.data)
}

pub fn tex_coord_p4ui(type_ u32, coords u32) {
	C.glTexCoordP4ui(type_, coords)
}

// TODO
pub fn tex_coord_p4uiv(type_ u32, coords []u32) {
	C.glTexCoordP4uiv(type_, coords.data)
}

pub fn multi_tex_coord_p1ui(texture u32, type_ u32, coords u32) {
	C.glMultiTexCoordP1ui(texture, type_, coords)
}

// TODO
pub fn multi_tex_coord_p1uiv(texture u32, type_ u32, coords []u32) {
	C.glMultiTexCoordP1uiv(texture, type_, coords.data)
}

pub fn multi_tex_coord_p2ui(texture u32, type_ u32, coords u32) {
	C.glMultiTexCoordP2ui(texture, type_, coords)
}

// TODO
pub fn multi_tex_coord_p2uiv(texture u32, type_ u32, coords []u32) {
	C.glMultiTexCoordP2uiv(texture, type_, coords.data)
}

pub fn multi_tex_coord_p3ui(texture u32, type_ u32, coords u32) {
	C.glMultiTexCoordP3ui(texture, type_, coords)
}

// TODO
pub fn multi_tex_coord_p3uiv(texture u32, type_ u32, coords []u32) {
	C.glMultiTexCoordP3uiv(texture, type_, coords.data)
}

pub fn multi_tex_coord_p4ui(texture u32, type_ u32, coords u32) {
	C.glMultiTexCoordP4ui(texture, type_, coords)
}

// TODO
pub fn multi_tex_coord_p4uiv(texture u32, type_ u32, coords []u32) {
	C.glMultiTexCoordP4uiv(texture, type_, coords.data)
}

pub fn normal_p3ui(type_ u32, coords u32) {
	C.glNormalP3ui(type_, coords)
}

// TODO
pub fn normal_p3uiv(type_ u32, coords []u32) {
	C.glNormalP3uiv(type_, coords.data)
}

pub fn color_p3ui(type_ u32, color u32) {
	C.glColorP3ui(type_, color)
}

// TODO
pub fn color_p3uiv(type_ u32, color []u32) {
	C.glColorP3uiv(type_, color.data)
}

pub fn color_p4ui(type_ u32, color u32) {
	C.glColorP4ui(type_, color)
}

// TODO
pub fn color_p4uiv(type_ u32, color []u32) {
	C.glColorP4uiv(type_, color.data)
}

pub fn secondary_color_p3ui(type_ u32, color u32) {
	C.glSecondaryColorP3ui(type_, color)
}

// TODO
pub fn secondary_color_p3uiv(type_ u32, color []u32) {
	C.glSecondaryColorP3uiv(type_, color.data)
}
