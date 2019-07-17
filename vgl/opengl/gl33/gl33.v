module gl33

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o
#include <glad.h>

import const (
	GL_ANY_SAMPLES_PASSED
	GL_INT_2_10_10_10_REV
	GL_MAX_DUAL_SOURCE_DRAW_BUFFERS
	GL_ONE_MINUS_SRC1_ALPHA
	GL_ONE_MINUS_SRC1_COLOR
	GL_RGB10_A2UI
	GL_SAMPLER_BINDING
	GL_SRC1_COLOR
	GL_TEXTURE_SWIZZLE_A
	GL_TEXTURE_SWIZZLE_B
	GL_TEXTURE_SWIZZLE_G
	GL_TEXTURE_SWIZZLE_R
	GL_TEXTURE_SWIZZLE_RGBA
	GL_TIME_ELAPSED
	GL_TIMESTAMP
	GL_VERTEX_ATTRIB_ARRAY_DIVISOR
)

pub fn bind_frag_data_location_indexed(program int, color_number int, index int, name byteptr) {
	C.glBindFragDataLocationIndexed(program, color_number, index, name)
}

pub fn bind_frag_data_location_indexed(program int, color_number int, index int, name voidptr) {
	C.glBindFragDataLocationIndexed(program, color_number, index, name)
}

pub fn bind_sampler(unit int, sampler int) {
	C.glBindSampler(unit, sampler)
}

pub fn color_p3ui(type int, color int) {
	C.glColorP3ui(type, color)
}

pub fn color_p3uiv(type int, color []int) {
	C.glColorP3uiv(type, color)
}

pub fn color_p3uiv(type int, color voidptr) {
	C.glColorP3uiv(type, color)
}

pub fn color_p4ui(type int, color int) {
	C.glColorP4ui(type, color)
}

pub fn color_p4uiv(type int, color []int) {
	C.glColorP4uiv(type, color)
}

pub fn color_p4uiv(type int, color voidptr) {
	C.glColorP4uiv(type, color)
}

pub fn delete_samplers(sampler int) {
	C.glDeleteSamplers(sampler)
}

pub fn delete_samplers(samplers []int) {
	C.glDeleteSamplers(samplers)
}

pub fn delete_samplers(samplers voidptr) {
	C.glDeleteSamplers(samplers)
}

pub fn gen_samplers() int {
	return C.glGenSamplers()
}

pub fn gen_samplers(samplers []int) {
	C.glGenSamplers(samplers)
}

pub fn gen_samplers(samplers voidptr) {
	C.glGenSamplers(samplers)
}

pub fn get_frag_data_index(program int, name byteptr) int {
	return C.glGetFragDataIndex(program, name)
}

pub fn get_frag_data_index(program int, name voidptr) int {
	return C.glGetFragDataIndex(program, name)
}

pub fn get_query_objecti64(id int, pname int) i64 {
	return C.glGetQueryObjecti64(id, pname)
}

pub fn get_query_objecti64v(id int, pname int, params []i64) {
	C.glGetQueryObjecti64v(id, pname, params)
}

pub fn get_query_objecti64v(id int, pname int, params voidptr) {
	C.glGetQueryObjecti64v(id, pname, params)
}

pub fn get_query_objectui64(id int, pname int) i64 {
	return C.glGetQueryObjectui64(id, pname)
}

pub fn get_query_objectui64v(id int, pname int, params []i64) {
	C.glGetQueryObjectui64v(id, pname, params)
}

pub fn get_query_objectui64v(id int, pname int, params voidptr) {
	C.glGetQueryObjectui64v(id, pname, params)
}

pub fn get_sampler_parameterf(sampler int, pname int) f32 {
	return C.glGetSamplerParameterf(sampler, pname)
}

pub fn get_sampler_parameterfv(sampler int, pname int, params []f32) {
	C.glGetSamplerParameterfv(sampler, pname, params)
}

pub fn get_sampler_parameterfv(sampler int, pname int, params voidptr) {
	C.glGetSamplerParameterfv(sampler, pname, params)
}

pub fn get_sampler_parameteri(sampler int, pname int) int {
	return C.glGetSamplerParameteri(sampler, pname)
}

pub fn get_sampler_parameter_ii(sampler int, pname int) int {
	return C.glGetSamplerParameterIi(sampler, pname)
}

pub fn get_sampler_parameter_iiv(sampler int, pname int, params []int) {
	C.glGetSamplerParameterIiv(sampler, pname, params)
}

pub fn get_sampler_parameter_iiv(sampler int, pname int, params voidptr) {
	C.glGetSamplerParameterIiv(sampler, pname, params)
}

pub fn get_sampler_parameter_iui(sampler int, pname int) int {
	return C.glGetSamplerParameterIui(sampler, pname)
}

pub fn get_sampler_parameter_iuiv(sampler int, pname int, params []int) {
	C.glGetSamplerParameterIuiv(sampler, pname, params)
}

pub fn get_sampler_parameter_iuiv(sampler int, pname int, params voidptr) {
	C.glGetSamplerParameterIuiv(sampler, pname, params)
}

pub fn get_sampler_parameteriv(sampler int, pname int, params []int) {
	C.glGetSamplerParameteriv(sampler, pname, params)
}

pub fn get_sampler_parameteriv(sampler int, pname int, params voidptr) {
	C.glGetSamplerParameteriv(sampler, pname, params)
}

pub fn is_sampler(sampler int) bool {
	return C.glIsSampler(sampler)
}

pub fn multi_tex_coord_p1ui(texture int, type int, coords int) {
	C.glMultiTexCoordP1ui(texture, type, coords)
}

pub fn multi_tex_coord_p1uiv(texture int, type int, coords []int) {
	C.glMultiTexCoordP1uiv(texture, type, coords)
}

pub fn multi_tex_coord_p1uiv(texture int, type int, coords voidptr) {
	C.glMultiTexCoordP1uiv(texture, type, coords)
}

pub fn multi_tex_coord_p2ui(texture int, type int, coords int) {
	C.glMultiTexCoordP2ui(texture, type, coords)
}

pub fn multi_tex_coord_p2uiv(texture int, type int, coords []int) {
	C.glMultiTexCoordP2uiv(texture, type, coords)
}

pub fn multi_tex_coord_p2uiv(texture int, type int, coords voidptr) {
	C.glMultiTexCoordP2uiv(texture, type, coords)
}

pub fn multi_tex_coord_p3ui(texture int, type int, coords int) {
	C.glMultiTexCoordP3ui(texture, type, coords)
}

pub fn multi_tex_coord_p3uiv(texture int, type int, coords []int) {
	C.glMultiTexCoordP3uiv(texture, type, coords)
}

pub fn multi_tex_coord_p3uiv(texture int, type int, coords voidptr) {
	C.glMultiTexCoordP3uiv(texture, type, coords)
}

pub fn multi_tex_coord_p4ui(texture int, type int, coords int) {
	C.glMultiTexCoordP4ui(texture, type, coords)
}

pub fn multi_tex_coord_p4uiv(texture int, type int, coords []int) {
	C.glMultiTexCoordP4uiv(texture, type, coords)
}

pub fn multi_tex_coord_p4uiv(texture int, type int, coords voidptr) {
	C.glMultiTexCoordP4uiv(texture, type, coords)
}

pub fn normal_p3ui(type int, coords int) {
	C.glNormalP3ui(type, coords)
}

pub fn normal_p3uiv(type int, coords []int) {
	C.glNormalP3uiv(type, coords)
}

pub fn normal_p3uiv(type int, coords voidptr) {
	C.glNormalP3uiv(type, coords)
}

pub fn query_counter(id int, target int) {
	C.glQueryCounter(id, target)
}

pub fn sampler_parameterf(sampler int, pname int, param f32) {
	C.glSamplerParameterf(sampler, pname, param)
}

pub fn sampler_parameterfv(sampler int, pname int, params []f32) {
	C.glSamplerParameterfv(sampler, pname, params)
}

pub fn sampler_parameterfv(sampler int, pname int, params voidptr) {
	C.glSamplerParameterfv(sampler, pname, params)
}

pub fn sampler_parameteri(sampler int, pname int, param int) {
	C.glSamplerParameteri(sampler, pname, param)
}

pub fn sampler_parameter_iiv(sampler int, pname int, params []int) {
	C.glSamplerParameterIiv(sampler, pname, params)
}

pub fn sampler_parameter_iiv(sampler int, pname int, params voidptr) {
	C.glSamplerParameterIiv(sampler, pname, params)
}

pub fn sampler_parameter_iuiv(sampler int, pname int, params []int) {
	C.glSamplerParameterIuiv(sampler, pname, params)
}

pub fn sampler_parameter_iuiv(sampler int, pname int, params voidptr) {
	C.glSamplerParameterIuiv(sampler, pname, params)
}

pub fn sampler_parameteriv(sampler int, pname int, params []int) {
	C.glSamplerParameteriv(sampler, pname, params)
}

pub fn sampler_parameteriv(sampler int, pname int, params voidptr) {
	C.glSamplerParameteriv(sampler, pname, params)
}

pub fn secondary_color_p3ui(type int, color int) {
	C.glSecondaryColorP3ui(type, color)
}

pub fn secondary_color_p3uiv(type int, color []int) {
	C.glSecondaryColorP3uiv(type, color)
}

pub fn secondary_color_p3uiv(type int, color voidptr) {
	C.glSecondaryColorP3uiv(type, color)
}

pub fn tex_coord_p1ui(type int, coords int) {
	C.glTexCoordP1ui(type, coords)
}

pub fn tex_coord_p1uiv(type int, coords []int) {
	C.glTexCoordP1uiv(type, coords)
}

pub fn tex_coord_p1uiv(type int, coords voidptr) {
	C.glTexCoordP1uiv(type, coords)
}

pub fn tex_coord_p2ui(type int, coords int) {
	C.glTexCoordP2ui(type, coords)
}

pub fn tex_coord_p2uiv(type int, coords []int) {
	C.glTexCoordP2uiv(type, coords)
}

pub fn tex_coord_p2uiv(type int, coords voidptr) {
	C.glTexCoordP2uiv(type, coords)
}

pub fn tex_coord_p3ui(type int, coords int) {
	C.glTexCoordP3ui(type, coords)
}

pub fn tex_coord_p3uiv(type int, coords []int) {
	C.glTexCoordP3uiv(type, coords)
}

pub fn tex_coord_p3uiv(type int, coords voidptr) {
	C.glTexCoordP3uiv(type, coords)
}

pub fn tex_coord_p4ui(type int, coords int) {
	C.glTexCoordP4ui(type, coords)
}

pub fn tex_coord_p4uiv(type int, coords []int) {
	C.glTexCoordP4uiv(type, coords)
}

pub fn tex_coord_p4uiv(type int, coords voidptr) {
	C.glTexCoordP4uiv(type, coords)
}

pub fn vertex_attrib_divisor(index int, divisor int) {
	C.glVertexAttribDivisor(index, divisor)
}

pub fn vertex_attrib_p1ui(index int, type int, normalized bool, value int) {
	C.glVertexAttribP1ui(index, type, normalized, value)
}

pub fn vertex_attrib_p1uiv(index int, type int, normalized bool, value []int) {
	C.glVertexAttribP1uiv(index, type, normalized, value)
}

pub fn vertex_attrib_p1uiv(index int, type int, normalized bool, value voidptr) {
	C.glVertexAttribP1uiv(index, type, normalized, value)
}

pub fn vertex_attrib_p2ui(index int, type int, normalized bool, value int) {
	C.glVertexAttribP2ui(index, type, normalized, value)
}

pub fn vertex_attrib_p2uiv(index int, type int, normalized bool, value []int) {
	C.glVertexAttribP2uiv(index, type, normalized, value)
}

pub fn vertex_attrib_p2uiv(index int, type int, normalized bool, value voidptr) {
	C.glVertexAttribP2uiv(index, type, normalized, value)
}

pub fn vertex_attrib_p3ui(index int, type int, normalized bool, value int) {
	C.glVertexAttribP3ui(index, type, normalized, value)
}

pub fn vertex_attrib_p3uiv(index int, type int, normalized bool, value []int) {
	C.glVertexAttribP3uiv(index, type, normalized, value)
}

pub fn vertex_attrib_p3uiv(index int, type int, normalized bool, value voidptr) {
	C.glVertexAttribP3uiv(index, type, normalized, value)
}

pub fn vertex_attrib_p4ui(index int, type int, normalized bool, value int) {
	C.glVertexAttribP4ui(index, type, normalized, value)
}

pub fn vertex_attrib_p4uiv(index int, type int, normalized bool, value []int) {
	C.glVertexAttribP4uiv(index, type, normalized, value)
}

pub fn vertex_attrib_p4uiv(index int, type int, normalized bool, value voidptr) {
	C.glVertexAttribP4uiv(index, type, normalized, value)
}

pub fn vertex_p2ui(type int, value int) {
	C.glVertexP2ui(type, value)
}

pub fn vertex_p2uiv(type int, value []int) {
	C.glVertexP2uiv(type, value)
}

pub fn vertex_p2uiv(type int, value voidptr) {
	C.glVertexP2uiv(type, value)
}

pub fn vertex_p3ui(type int, value int) {
	C.glVertexP3ui(type, value)
}

pub fn vertex_p3uiv(type int, value []int) {
	C.glVertexP3uiv(type, value)
}

pub fn vertex_p3uiv(type int, value voidptr) {
	C.glVertexP3uiv(type, value)
}

pub fn vertex_p4ui(type int, value int) {
	C.glVertexP4ui(type, value)
}

pub fn vertex_p4uiv(type int, value []int) {
	C.glVertexP4uiv(type, value)
}

pub fn vertex_p4uiv(type int, value voidptr) {
	C.glVertexP4uiv(type, value)
}
