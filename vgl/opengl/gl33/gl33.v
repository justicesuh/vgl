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

pub fn bind_frag_data_location_indexed(program u32, color_number u32, index u32, name string) {
	C.glBindFragDataLocationIndexed(program, color_number, index, name.str)
}

pub fn bind_sampler(unit int, sampler int) {
	C.glBindSampler(unit, sampler)
}

pub fn delete_samplers(samplers []u32) {
	C.glDeleteSamplers(samplers.len, samplers.data)
}

pub fn gen_samplers(n int) []u32 {
	samplers := [u32(0); n]
	C.glGenSamplers(n, samplers.data)
	return samplers
}

pub fn get_frag_data_index(program u32, name string) int {
	return C.glGetFragDataIndex(program, name.str)
}

pub fn get_query_objecti64v(id int, pname int, params []i64) {
	C.glGetQueryObjecti64v(id, pname, params.data)
}

pub fn get_query_objectui64v(id int, pname int, params []i64) {
	C.glGetQueryObjectui64v(id, pname, params.data)
}

pub fn get_sampler_parameterfv(sampler int, pname int, params []f32) {
	C.glGetSamplerParameterfv(sampler, pname, params.data)
}

pub fn get_sampler_parameter_iiv(sampler int, pname int, params []int) {
	C.glGetSamplerParameterIiv(sampler, pname, params.data)
}

pub fn get_sampler_parameter_iuiv(sampler int, pname int, params []int) {
	C.glGetSamplerParameterIuiv(sampler, pname, params.data)
}

pub fn get_sampler_parameteriv(sampler int, pname int, params []int) {
	C.glGetSamplerParameteriv(sampler, pname, params.data)
}

pub fn is_sampler(sampler int) bool {
	return C.glIsSampler(sampler)
}

pub fn normal_p3ui(typ int, coords int) {
	C.glNormalP3ui(typ, coords)
}

pub fn normal_p3uiv(typ int, coords []int) {
	C.glNormalP3uiv(typ, coords.data)
}

pub fn query_counter(id int, target int) {
	C.glQueryCounter(id, target)
}

pub fn sampler_parameterf(sampler int, pname int, param f32) {
	C.glSamplerParameterf(sampler, pname, param)
}

pub fn sampler_parameterfv(sampler int, pname int, params []f32) {
	C.glSamplerParameterfv(sampler, pname, params.data)
}

pub fn sampler_parameteri(sampler int, pname int, param int) {
	C.glSamplerParameteri(sampler, pname, param)
}

pub fn sampler_parameter_iiv(sampler int, pname int, params []int) {
	C.glSamplerParameterIiv(sampler, pname, params.data)
}

pub fn sampler_parameter_iuiv(sampler int, pname int, params []int) {
	C.glSamplerParameterIuiv(sampler, pname, params.data)
}

pub fn sampler_parameteriv(sampler int, pname int, params []int) {
	C.glSamplerParameteriv(sampler, pname, params.data)
}

pub fn secondary_color_p3ui(typ int, color int) {
	C.glSecondaryColorP3ui(typ, color)
}

pub fn secondary_color_p3uiv(typ int, color []int) {
	C.glSecondaryColorP3uiv(typ, color.data)
}

pub fn vertex_attrib_divisor(index int, divisor int) {
	C.glVertexAttribDivisor(index, divisor)
}
