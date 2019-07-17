module gl14

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_BLEND_DST_ALPHA
	GL_BLEND_DST_RGB
	GL_BLEND_SRC_ALPHA
	GL_BLEND_SRC_RGB
	GL_COLOR_SUM
	GL_COMPARE_R_TO_TEXTURE
	GL_CONSTANT_ALPHA
	GL_CONSTANT_COLOR
	GL_CURRENT_FOG_COORDINATE
	GL_CURRENT_SECONDARY_COLOR
	GL_DECR_WRAP
	GL_DEPTH_COMPONENT16
	GL_DEPTH_COMPONENT24
	GL_DEPTH_COMPONENT32
	GL_DEPTH_TEXTURE_MODE
	GL_FOG_COORDINATE
	GL_FOG_COORDINATE_ARRAY
	GL_FOG_COORDINATE_ARRAY_POINTER
	GL_FOG_COORDINATE_ARRAY_STRIDE
	GL_FOG_COORDINATE_ARRAY_TYPE
	GL_FOG_COORDINATE_SOURCE
	GL_FRAGMENT_DEPTH
	GL_FUNC_ADD
	GL_FUNC_REVERSE_SUBTRACT
	GL_FUNC_SUBTRACT
	GL_GENERATE_MIPMAP
	GL_GENERATE_MIPMAP_HINT
	GL_INCR_WRAP
	GL_MAX
	GL_MAX_TEXTURE_LOD_BIAS
	GL_MIN
	GL_MIRRORED_REPEAT
	GL_ONE_MINUS_CONSTANT_ALPHA
	GL_ONE_MINUS_CONSTANT_COLOR
	GL_POINT_DISTANCE_ATTENUATION
	GL_POINT_FADE_THRESHOLD_SIZE
	GL_POINT_SIZE_MAX
	GL_POINT_SIZE_MIN
	GL_SECONDARY_COLOR_ARRAY
	GL_SECONDARY_COLOR_ARRAY_POINTER
	GL_SECONDARY_COLOR_ARRAY_SIZE
	GL_SECONDARY_COLOR_ARRAY_STRIDE
	GL_SECONDARY_COLOR_ARRAY_TYPE
	GL_TEXTURE_COMPARE_FUNC
	GL_TEXTURE_COMPARE_MODE
	GL_TEXTURE_DEPTH_SIZE
	GL_TEXTURE_FILTER_CONTROL
	GL_TEXTURE_LOD_BIAS
)

pub fn blend_color(red f32, green f32, blue f32, alpha f32) {
	C.glBlendColor(red, green, blue, alpha)
}

pub fn blend_equation(mode int) {
	C.glBlendEquation(mode)
}

pub fn blend_func_separate(sfactor_rgb int, dfactor_rgb int, sfactor_alpha int, dfactor_alpha int) {
	C.glBlendFuncSeparate(sfactor_rgb, dfactor_rgb, sfactor_alpha, dfactor_alpha)
}

pub fn fog_coordd(coord f64) {
	C.glFogCoordd(coord)
}

pub fn fog_coorddv(v []f64) {
	C.glFogCoorddv(v.data)
}

pub fn fog_coordf(coord f32) {
	C.glFogCoordf(coord)
}

pub fn fog_coordfv(v []f32) {
	C.glFogCoordfv(v.data)
}

// TODO
pub fn fog_coord_pointer(typ int, stride int, pointer voidptr) {
	C.glFogCoordPointer(typ, stride, pointer)
}

pub fn multi_draw_arrays(mode int, first []int, count []int) {
	C.glMultiDrawArrays(mode, first.data, count.data, first.len)
}

// TODO
pub fn multi_draw_elements(mode int, count []int, typ int, indices voidptr) {
	C.glMultiDrawElements(mode, count.data, typ, indices, count.len)
}

pub fn point_parameterf(pname int, param f32) {
	C.glPointParameterf(pname, param)
}

pub fn point_parameterfv(pname int, params []f32) {
	C.glPointParameterfv(pname, params.data)
}

pub fn point_parameteri(pname int, param int) {
	C.glPointParameteri(pname, param)
}

pub fn point_parameteriv(pname int, params []int) {
	C.glPointParameteriv(pname, params.data)
}

pub fn secondary_color3b(red byte, green byte, blue byte) {
	C.glSecondaryColor3b(red, green, blue)
}

pub fn secondary_color3bv(v []i8) {
	C.glSecondaryColor3bv(v.data)
}

pub fn secondary_color3d(red f64, green f64, blue f64) {
	C.glSecondaryColor3d(red, green, blue)
}

pub fn secondary_color3dv(v []f64) {
	C.glSecondaryColor3dv(v.data)
}

pub fn secondary_color3f(red f32, green f32, blue f32) {
	C.glSecondaryColor3f(red, green, blue)
}

pub fn secondary_color3fv(v []f32) {
	C.glSecondaryColor3fv(v.data)
}

pub fn secondary_color3i(red int, green int, blue int) {
	C.glSecondaryColor3i(red, green, blue)
}

pub fn secondary_color3iv(v []int) {
	C.glSecondaryColor3iv(v.data)
}

pub fn secondary_color3s(red i16, green i16, blue i16) {
	C.glSecondaryColor3s(red, green, blue)
}

pub fn secondary_color3sv(v []i16) {
	C.glSecondaryColor3sv(v.data)
}

pub fn secondary_color3ub(red byte, green byte, blue byte) {
	C.glSecondaryColor3ub(red, green, blue)
}

pub fn secondary_color3ubv(v []u8) {
	C.glSecondaryColor3ubv(v.data)
}

pub fn secondary_color3ui(red int, green int, blue int) {
	C.glSecondaryColor3ui(red, green, blue)
}

pub fn secondary_color3uiv(v []u32) {
	C.glSecondaryColor3uiv(v.data)
}

pub fn secondary_color3us(red i16, green i16, blue i16) {
	C.glSecondaryColor3us(red, green, blue)
}

pub fn secondary_color3usv(v []u16) {
	C.glSecondaryColor3usv(v.data)
}

// TODO
pub fn secondary_color_pointer(size int, typ int, stride int, pointer voidptr) {
	C.glSecondaryColorPointer(size, typ, stride, pointer)
}

pub fn window_pos2d(x f64, y f64) {
	C.glWindowPos2d(x, y)
}

pub fn window_pos2dv(p []f64) {
	C.glWindowPos2dv(p.data)
}

pub fn window_pos2f(x f32, y f32) {
	C.glWindowPos2f(x, y)
}

pub fn window_pos2fv(p []f32) {
	C.glWindowPos2fv(p.data)
}

pub fn window_pos2i(x int, y int) {
	C.glWindowPos2i(x, y)
}

pub fn window_pos2iv(p []int) {
	C.glWindowPos2iv(p.data)
}

pub fn window_pos2s(x i16, y i16) {
	C.glWindowPos2s(x, y)
}

pub fn window_pos2sv(p []i16) {
	C.glWindowPos2sv(p.data)
}

pub fn window_pos3d(x f64, y f64, z f64) {
	C.glWindowPos3d(x, y, z)
}

pub fn window_pos3dv(p []f64) {
	C.glWindowPos3dv(p.data)
}

pub fn window_pos3f(x f32, y f32, z f32) {
	C.glWindowPos3f(x, y, z)
}

pub fn window_pos3fv(p []f32) {
	C.glWindowPos3fv(p.data)
}

pub fn window_pos3i(x int, y int, z int) {
	C.glWindowPos3i(x, y, z)
}

pub fn window_pos3iv(p []int) {
	C.glWindowPos3iv(p.data)
}

pub fn window_pos3s(x i16, y i16, z i16) {
	C.glWindowPos3s(x, y, z)
}

pub fn window_pos3sv(p []i16) {
	C.glWindowPos3sv(p.data)
}
