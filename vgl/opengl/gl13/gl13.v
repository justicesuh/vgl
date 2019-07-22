module gl13

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_TEXTURE0
	GL_TEXTURE1
	GL_TEXTURE2
	GL_TEXTURE3
	GL_TEXTURE4
	GL_TEXTURE5
	GL_TEXTURE6
	GL_TEXTURE7
	GL_TEXTURE8
	GL_TEXTURE9
	GL_TEXTURE10
	GL_TEXTURE11
	GL_TEXTURE12
	GL_TEXTURE13
	GL_TEXTURE14
	GL_TEXTURE15
	GL_TEXTURE16
	GL_TEXTURE17
	GL_TEXTURE18
	GL_TEXTURE19
	GL_TEXTURE20
	GL_TEXTURE21
	GL_TEXTURE22
	GL_TEXTURE23
	GL_TEXTURE24
	GL_TEXTURE25
	GL_TEXTURE26
	GL_TEXTURE27
	GL_TEXTURE28
	GL_TEXTURE29
	GL_TEXTURE30
	GL_TEXTURE31
	GL_ACTIVE_TEXTURE
	GL_MULTISAMPLE
	GL_SAMPLE_ALPHA_TO_COVERAGE
	GL_SAMPLE_ALPHA_TO_ONE
	GL_SAMPLE_COVERAGE
	GL_SAMPLE_BUFFERS
	GL_SAMPLES
	GL_SAMPLE_COVERAGE_VALUE
	GL_SAMPLE_COVERAGE_INVERT
	GL_TEXTURE_CUBE_MAP
	GL_TEXTURE_BINDING_CUBE_MAP
	GL_TEXTURE_CUBE_MAP_POSITIVE_X
	GL_TEXTURE_CUBE_MAP_NEGATIVE_X
	GL_TEXTURE_CUBE_MAP_POSITIVE_Y
	GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
	GL_TEXTURE_CUBE_MAP_POSITIVE_Z
	GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
	GL_PROXY_TEXTURE_CUBE_MAP
	GL_MAX_CUBE_MAP_TEXTURE_SIZE
	GL_COMPRESSED_RGB
	GL_COMPRESSED_RGBA
	GL_TEXTURE_COMPRESSION_HINT
	GL_TEXTURE_COMPRESSED_IMAGE_SIZE
	GL_TEXTURE_COMPRESSED
	GL_NUM_COMPRESSED_TEXTURE_FORMATS
	GL_COMPRESSED_TEXTURE_FORMATS
	GL_CLAMP_TO_BORDER
	GL_CLIENT_ACTIVE_TEXTURE
	GL_MAX_TEXTURE_UNITS
	GL_TRANSPOSE_MODELVIEW_MATRIX
	GL_TRANSPOSE_PROJECTION_MATRIX
	GL_TRANSPOSE_TEXTURE_MATRIX
	GL_TRANSPOSE_COLOR_MATRIX
	GL_MULTISAMPLE_BIT
	GL_NORMAL_MAP
	GL_REFLECTION_MAP
	GL_COMPRESSED_ALPHA
	GL_COMPRESSED_LUMINANCE
	GL_COMPRESSED_LUMINANCE_ALPHA
	GL_COMPRESSED_INTENSITY
	GL_COMBINE
	GL_COMBINE_RGB
	GL_COMBINE_ALPHA
	GL_SOURCE0_RGB
	GL_SOURCE1_RGB
	GL_SOURCE2_RGB
	GL_SOURCE0_ALPHA
	GL_SOURCE1_ALPHA
	GL_SOURCE2_ALPHA
	GL_OPERAND0_RGB
	GL_OPERAND1_RGB
	GL_OPERAND2_RGB
	GL_OPERAND0_ALPHA
	GL_OPERAND1_ALPHA
	GL_OPERAND2_ALPHA
	GL_RGB_SCALE
	GL_ADD_SIGNED
	GL_INTERPOLATE
	GL_SUBTRACT
	GL_CONSTANT
	GL_PRIMARY_COLOR
	GL_PREVIOUS
	GL_DOT3_RGB
	GL_DOT3_RGBA
)

pub fn active_texture(texture u32) {
	C.glActiveTexture(texture)
}

pub fn sample_coverage(value f32, invert bool) {
	C.glSampleCoverage(value, invert)
}

// TODO
pub fn compressed_tex_image3_d(target u32, level int, internalformat u32, width int, height int, depth int, border int, imageSize int, data voidptr) {
	C.glCompressedTexImage3D(target, level, internalformat, width, height, depth, border, imageSize, data)
}

// TODO
pub fn compressed_tex_image2_d(target u32, level int, internalformat u32, width int, height int, border int, imageSize int, data voidptr) {
	C.glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data)
}

// TODO
pub fn compressed_tex_image1_d(target u32, level int, internalformat u32, width int, border int, imageSize int, data voidptr) {
	C.glCompressedTexImage1D(target, level, internalformat, width, border, imageSize, data)
}

// TODO
pub fn compressed_tex_sub_image3_d(target u32, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format u32, imageSize int, data voidptr) {
	C.glCompressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data)
}

// TODO
pub fn compressed_tex_sub_image2_d(target u32, level int, xoffset int, yoffset int, width int, height int, format u32, imageSize int, data voidptr) {
	C.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data)
}

// TODO
pub fn compressed_tex_sub_image1_d(target u32, level int, xoffset int, width int, format u32, imageSize int, data voidptr) {
	C.glCompressedTexSubImage1D(target, level, xoffset, width, format, imageSize, data)
}

// TODO
pub fn get_compressed_tex_image(target u32, level int, img voidptr) {
	C.glGetCompressedTexImage(target, level, img)
}

pub fn client_active_texture(texture u32) {
	C.glClientActiveTexture(texture)
}

pub fn multi_tex_coord1d(target u32, s f64) {
	C.glMultiTexCoord1d(target, s)
}

// TODO
pub fn multi_tex_coord1dv(target u32, v []f64) {
	C.glMultiTexCoord1dv(target, v.data)
}

pub fn multi_tex_coord1f(target u32, s f32) {
	C.glMultiTexCoord1f(target, s)
}

// TODO
pub fn multi_tex_coord1fv(target u32, v []f32) {
	C.glMultiTexCoord1fv(target, v.data)
}

pub fn multi_tex_coord1i(target u32, s int) {
	C.glMultiTexCoord1i(target, s)
}

// TODO
pub fn multi_tex_coord1iv(target u32, v []int) {
	C.glMultiTexCoord1iv(target, v.data)
}

pub fn multi_tex_coord1s(target u32, s i16) {
	C.glMultiTexCoord1s(target, s)
}

// TODO
pub fn multi_tex_coord1sv(target u32, v []i16) {
	C.glMultiTexCoord1sv(target, v.data)
}

pub fn multi_tex_coord2d(target u32, s f64, t f64) {
	C.glMultiTexCoord2d(target, s, t)
}

// TODO
pub fn multi_tex_coord2dv(target u32, v []f64) {
	C.glMultiTexCoord2dv(target, v.data)
}

pub fn multi_tex_coord2f(target u32, s f32, t f32) {
	C.glMultiTexCoord2f(target, s, t)
}

// TODO
pub fn multi_tex_coord2fv(target u32, v []f32) {
	C.glMultiTexCoord2fv(target, v.data)
}

pub fn multi_tex_coord2i(target u32, s int, t int) {
	C.glMultiTexCoord2i(target, s, t)
}

// TODO
pub fn multi_tex_coord2iv(target u32, v []int) {
	C.glMultiTexCoord2iv(target, v.data)
}

pub fn multi_tex_coord2s(target u32, s i16, t i16) {
	C.glMultiTexCoord2s(target, s, t)
}

// TODO
pub fn multi_tex_coord2sv(target u32, v []i16) {
	C.glMultiTexCoord2sv(target, v.data)
}

pub fn multi_tex_coord3d(target u32, s f64, t f64, r f64) {
	C.glMultiTexCoord3d(target, s, t, r)
}

// TODO
pub fn multi_tex_coord3dv(target u32, v []f64) {
	C.glMultiTexCoord3dv(target, v.data)
}

pub fn multi_tex_coord3f(target u32, s f32, t f32, r f32) {
	C.glMultiTexCoord3f(target, s, t, r)
}

// TODO
pub fn multi_tex_coord3fv(target u32, v []f32) {
	C.glMultiTexCoord3fv(target, v.data)
}

pub fn multi_tex_coord3i(target u32, s int, t int, r int) {
	C.glMultiTexCoord3i(target, s, t, r)
}

// TODO
pub fn multi_tex_coord3iv(target u32, v []int) {
	C.glMultiTexCoord3iv(target, v.data)
}

pub fn multi_tex_coord3s(target u32, s i16, t i16, r i16) {
	C.glMultiTexCoord3s(target, s, t, r)
}

// TODO
pub fn multi_tex_coord3sv(target u32, v []i16) {
	C.glMultiTexCoord3sv(target, v.data)
}

pub fn multi_tex_coord4d(target u32, s f64, t f64, r f64, q f64) {
	C.glMultiTexCoord4d(target, s, t, r, q)
}

// TODO
pub fn multi_tex_coord4dv(target u32, v []f64) {
	C.glMultiTexCoord4dv(target, v.data)
}

pub fn multi_tex_coord4f(target u32, s f32, t f32, r f32, q f32) {
	C.glMultiTexCoord4f(target, s, t, r, q)
}

// TODO
pub fn multi_tex_coord4fv(target u32, v []f32) {
	C.glMultiTexCoord4fv(target, v.data)
}

pub fn multi_tex_coord4i(target u32, s int, t int, r int, q int) {
	C.glMultiTexCoord4i(target, s, t, r, q)
}

// TODO
pub fn multi_tex_coord4iv(target u32, v []int) {
	C.glMultiTexCoord4iv(target, v.data)
}

pub fn multi_tex_coord4s(target u32, s i16, t i16, r i16, q i16) {
	C.glMultiTexCoord4s(target, s, t, r, q)
}

// TODO
pub fn multi_tex_coord4sv(target u32, v []i16) {
	C.glMultiTexCoord4sv(target, v.data)
}

// TODO
pub fn load_transpose_matrixf(m []f32) {
	C.glLoadTransposeMatrixf(m.data)
}

// TODO
pub fn load_transpose_matrixd(m []f64) {
	C.glLoadTransposeMatrixd(m.data)
}

// TODO
pub fn mult_transpose_matrixf(m []f32) {
	C.glMultTransposeMatrixf(m.data)
}

// TODO
pub fn mult_transpose_matrixd(m []f64) {
	C.glMultTransposeMatrixd(m.data)
}
