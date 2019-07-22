module gl14

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_BLEND_DST_RGB
	GL_BLEND_SRC_RGB
	GL_BLEND_DST_ALPHA
	GL_BLEND_SRC_ALPHA
	GL_POINT_FADE_THRESHOLD_SIZE
	GL_DEPTH_COMPONENT16
	GL_DEPTH_COMPONENT24
	GL_DEPTH_COMPONENT32
	GL_MIRRORED_REPEAT
	GL_MAX_TEXTURE_LOD_BIAS
	GL_TEXTURE_LOD_BIAS
	GL_INCR_WRAP
	GL_DECR_WRAP
	GL_TEXTURE_DEPTH_SIZE
	GL_TEXTURE_COMPARE_MODE
	GL_TEXTURE_COMPARE_FUNC
	GL_POINT_SIZE_MIN
	GL_POINT_SIZE_MAX
	GL_POINT_DISTANCE_ATTENUATION
	GL_GENERATE_MIPMAP
	GL_GENERATE_MIPMAP_HINT
	GL_FOG_COORDINATE_SOURCE
	GL_FOG_COORDINATE
	GL_FRAGMENT_DEPTH
	GL_CURRENT_FOG_COORDINATE
	GL_FOG_COORDINATE_ARRAY_TYPE
	GL_FOG_COORDINATE_ARRAY_STRIDE
	GL_FOG_COORDINATE_ARRAY_POINTER
	GL_FOG_COORDINATE_ARRAY
	GL_COLOR_SUM
	GL_CURRENT_SECONDARY_COLOR
	GL_SECONDARY_COLOR_ARRAY_SIZE
	GL_SECONDARY_COLOR_ARRAY_TYPE
	GL_SECONDARY_COLOR_ARRAY_STRIDE
	GL_SECONDARY_COLOR_ARRAY_POINTER
	GL_SECONDARY_COLOR_ARRAY
	GL_TEXTURE_FILTER_CONTROL
	GL_DEPTH_TEXTURE_MODE
	GL_COMPARE_R_TO_TEXTURE
	GL_BLEND_COLOR
	GL_BLEND_EQUATION
	GL_CONSTANT_COLOR
	GL_ONE_MINUS_CONSTANT_COLOR
	GL_CONSTANT_ALPHA
	GL_ONE_MINUS_CONSTANT_ALPHA
	GL_FUNC_ADD
	GL_FUNC_REVERSE_SUBTRACT
	GL_FUNC_SUBTRACT
	GL_MIN
	GL_MAX
)

pub fn blend_func_separate(sfactorRGB u32, dfactorRGB u32, sfactorAlpha u32, dfactorAlpha u32) {
	C.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha)
}

// TODO
pub fn multi_draw_arrays(mode u32, first []int, count []int, drawcount int) {
	C.glMultiDrawArrays(mode, first.data, count.data, drawcount)
}

// TODO
pub fn multi_draw_elements(mode u32, count []int, type_ u32, indices *voidptr, drawcount int) {
	C.glMultiDrawElements(mode, count.data, type_, indices, drawcount)
}

pub fn point_parameterf(pname u32, param f32) {
	C.glPointParameterf(pname, param)
}

// TODO
pub fn point_parameterfv(pname u32, params []f32) {
	C.glPointParameterfv(pname, params.data)
}

pub fn point_parameteri(pname u32, param int) {
	C.glPointParameteri(pname, param)
}

// TODO
pub fn point_parameteriv(pname u32, params []int) {
	C.glPointParameteriv(pname, params.data)
}

pub fn fog_coordf(coord f32) {
	C.glFogCoordf(coord)
}

// TODO
pub fn fog_coordfv(coord []f32) {
	C.glFogCoordfv(coord.data)
}

pub fn fog_coordd(coord f64) {
	C.glFogCoordd(coord)
}

// TODO
pub fn fog_coorddv(coord []f64) {
	C.glFogCoorddv(coord.data)
}

// TODO
pub fn fog_coord_pointer(type_ u32, stride int, pointer voidptr) {
	C.glFogCoordPointer(type_, stride, pointer)
}

pub fn secondary_color3b(red i8, green i8, blue i8) {
	C.glSecondaryColor3b(red, green, blue)
}

// TODO
pub fn secondary_color3bv(v []i8) {
	C.glSecondaryColor3bv(v.data)
}

pub fn secondary_color3d(red f64, green f64, blue f64) {
	C.glSecondaryColor3d(red, green, blue)
}

// TODO
pub fn secondary_color3dv(v []f64) {
	C.glSecondaryColor3dv(v.data)
}

pub fn secondary_color3f(red f32, green f32, blue f32) {
	C.glSecondaryColor3f(red, green, blue)
}

// TODO
pub fn secondary_color3fv(v []f32) {
	C.glSecondaryColor3fv(v.data)
}

pub fn secondary_color3i(red int, green int, blue int) {
	C.glSecondaryColor3i(red, green, blue)
}

// TODO
pub fn secondary_color3iv(v []int) {
	C.glSecondaryColor3iv(v.data)
}

pub fn secondary_color3s(red i16, green i16, blue i16) {
	C.glSecondaryColor3s(red, green, blue)
}

// TODO
pub fn secondary_color3sv(v []i16) {
	C.glSecondaryColor3sv(v.data)
}

pub fn secondary_color3ub(red u8, green u8, blue u8) {
	C.glSecondaryColor3ub(red, green, blue)
}

// TODO
pub fn secondary_color3ubv(v []u8) {
	C.glSecondaryColor3ubv(v.data)
}

pub fn secondary_color3ui(red u32, green u32, blue u32) {
	C.glSecondaryColor3ui(red, green, blue)
}

// TODO
pub fn secondary_color3uiv(v []u32) {
	C.glSecondaryColor3uiv(v.data)
}

pub fn secondary_color3us(red u16, green u16, blue u16) {
	C.glSecondaryColor3us(red, green, blue)
}

// TODO
pub fn secondary_color3usv(v []u16) {
	C.glSecondaryColor3usv(v.data)
}

// TODO
pub fn secondary_color_pointer(size int, type_ u32, stride int, pointer voidptr) {
	C.glSecondaryColorPointer(size, type_, stride, pointer)
}

pub fn window_pos2d(x f64, y f64) {
	C.glWindowPos2d(x, y)
}

// TODO
pub fn window_pos2dv(v []f64) {
	C.glWindowPos2dv(v.data)
}

pub fn window_pos2f(x f32, y f32) {
	C.glWindowPos2f(x, y)
}

// TODO
pub fn window_pos2fv(v []f32) {
	C.glWindowPos2fv(v.data)
}

pub fn window_pos2i(x int, y int) {
	C.glWindowPos2i(x, y)
}

// TODO
pub fn window_pos2iv(v []int) {
	C.glWindowPos2iv(v.data)
}

pub fn window_pos2s(x i16, y i16) {
	C.glWindowPos2s(x, y)
}

// TODO
pub fn window_pos2sv(v []i16) {
	C.glWindowPos2sv(v.data)
}

pub fn window_pos3d(x f64, y f64, z f64) {
	C.glWindowPos3d(x, y, z)
}

// TODO
pub fn window_pos3dv(v []f64) {
	C.glWindowPos3dv(v.data)
}

pub fn window_pos3f(x f32, y f32, z f32) {
	C.glWindowPos3f(x, y, z)
}

// TODO
pub fn window_pos3fv(v []f32) {
	C.glWindowPos3fv(v.data)
}

pub fn window_pos3i(x int, y int, z int) {
	C.glWindowPos3i(x, y, z)
}

// TODO
pub fn window_pos3iv(v []int) {
	C.glWindowPos3iv(v.data)
}

pub fn window_pos3s(x i16, y i16, z i16) {
	C.glWindowPos3s(x, y, z)
}

// TODO
pub fn window_pos3sv(v []i16) {
	C.glWindowPos3sv(v.data)
}

pub fn blend_color(red f32, green f32, blue f32, alpha f32) {
	C.glBlendColor(red, green, blue, alpha)
}

pub fn blend_equation(mode u32) {
	C.glBlendEquation(mode)
}
