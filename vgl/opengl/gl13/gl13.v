module gl13

import const (
	GL_ACTIVE_TEXTURE
	GL_ADD_SIGNED
	GL_CLAMP_TO_BORDER
	GL_CLIENT_ACTIVE_TEXTURE
	GL_COMBINE
	GL_COMBINE_ALPHA
	GL_COMBINE_RGB
	GL_COMPRESSED_ALPHA
	GL_COMPRESSED_INTENSITY
	GL_COMPRESSED_LUMINANCE
	GL_COMPRESSED_LUMINANCE_ALPHA
	GL_COMPRESSED_RGB
	GL_COMPRESSED_RGBA
	GL_COMPRESSED_TEXTURE_FORMATS
	GL_CONSTANT
	GL_DOT3_RGB
	GL_DOT3_RGBA
	GL_INTERPOLATE
	GL_MAX_CUBE_MAP_TEXTURE_SIZE
	GL_MAX_TEXTURE_UNITS
	GL_MULTISAMPLE
	GL_MULTISAMPLE_BIT
	GL_NORMAL_MAP
	GL_NUM_COMPRESSED_TEXTURE_FORMATS
	GL_OPERAND0_ALPHA
	GL_OPERAND0_RGB
	GL_OPERAND1_ALPHA
	GL_OPERAND1_RGB
	GL_OPERAND2_ALPHA
	GL_OPERAND2_RGB
	GL_PREVIOUS
	GL_PRIMARY_COLOR
	GL_PROXY_TEXTURE_CUBE_MAP
	GL_REFLECTION_MAP
	GL_RGB_SCALE
	GL_SAMPLE_ALPHA_TO_COVERAGE
	GL_SAMPLE_ALPHA_TO_ONE
	GL_SAMPLE_BUFFERS
	GL_SAMPLE_COVERAGE
	GL_SAMPLE_COVERAGE_INVERT
	GL_SAMPLE_COVERAGE_VALUE
	GL_SAMPLES
	GL_SOURCE0_ALPHA
	GL_SOURCE0_RGB
	GL_SOURCE1_ALPHA
	GL_SOURCE1_RGB
	GL_SOURCE2_ALPHA
	GL_SOURCE2_RGB
	GL_SUBTRACT
	GL_TEXTURE_BINDING_CUBE_MAP
	GL_TEXTURE_COMPRESSED
	GL_TEXTURE_COMPRESSED_IMAGE_SIZE
	GL_TEXTURE_COMPRESSION_HINT
	GL_TEXTURE_CUBE_MAP
	GL_TEXTURE_CUBE_MAP_NEGATIVE_X
	GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
	GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
	GL_TEXTURE_CUBE_MAP_POSITIVE_X
	GL_TEXTURE_CUBE_MAP_POSITIVE_Y
	GL_TEXTURE_CUBE_MAP_POSITIVE_Z
	GL_TEXTURE0
	GL_TEXTURE1
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
	GL_TEXTURE2
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
	GL_TEXTURE3
	GL_TEXTURE30
	GL_TEXTURE31
	GL_TEXTURE4
	GL_TEXTURE5
	GL_TEXTURE6
	GL_TEXTURE7
	GL_TEXTURE8
	GL_TEXTURE9
	GL_TRANSPOSE_COLOR_MATRIX
	GL_TRANSPOSE_MODELVIEW_MATRIX
	GL_TRANSPOSE_PROJECTION_MATRIX
	GL_TRANSPOSE_TEXTURE_MATRIX
)

pub fn active_texture(texture int) {
	C.glActiveTexture(texture)
}

pub fn client_active_texture(texture int) {
	C.glClientActiveTexture(texture)
}

pub fn compressed_tex_image1d(target int, level int, internalformat int, width int, border int, image_size int, data i64) {
	C.glCompressedTexImage1D(target, level, internalformat, width, border, image_size, data)
}

pub fn compressed_tex_image1d(target int, level int, internalformat int, width int, border int, data voidptr) {
	C.glCompressedTexImage1D(target, level, internalformat, width, border, data)
}

pub fn compressed_tex_image2d(target int, level int, internalformat int, width int, height int, border int, image_size int, data i64) {
	C.glCompressedTexImage2D(target, level, internalformat, width, height, border, image_size, data)
}

pub fn compressed_tex_image2d(target int, level int, internalformat int, width int, height int, border int, data voidptr) {
	C.glCompressedTexImage2D(target, level, internalformat, width, height, border, data)
}

pub fn compressed_tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, image_size int, data i64) {
	C.glCompressedTexImage3D(target, level, internalformat, width, height, depth, border, image_size, data)
}

pub fn compressed_tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, data voidptr) {
	C.glCompressedTexImage3D(target, level, internalformat, width, height, depth, border, data)
}

pub fn compressed_tex_sub_image1d(target int, level int, xoffset int, width int, format int, image_size int, data i64) {
	C.glCompressedTexSubImage1D(target, level, xoffset, width, format, image_size, data)
}

pub fn compressed_tex_sub_image1d(target int, level int, xoffset int, width int, format int, data voidptr) {
	C.glCompressedTexSubImage1D(target, level, xoffset, width, format, data)
}

pub fn compressed_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, image_size int, data i64) {
	C.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, image_size, data)
}

pub fn compressed_tex_sub_image2d(target int, level int, xoffset int, yoffset int, width int, height int, format int, data voidptr) {
	C.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)
}

pub fn compressed_tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, image_size int, data i64) {
	C.glCompressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, data)
}

pub fn compressed_tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, data voidptr) {
	C.glCompressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, data)
}

pub fn get_compressed_tex_image(target int, level int, pixels i64) {
	C.glGetCompressedTexImage(target, level, pixels)
}

pub fn get_compressed_tex_image(target int, level int, pixels voidptr) {
	C.glGetCompressedTexImage(target, level, pixels)
}

pub fn load_transpose_matrixd(m []f64) {
	C.glLoadTransposeMatrixd(m)
}

pub fn load_transpose_matrixd(m voidptr) {
	C.glLoadTransposeMatrixd(m)
}

pub fn load_transpose_matrixf(m []f32) {
	C.glLoadTransposeMatrixf(m)
}

pub fn load_transpose_matrixf(m voidptr) {
	C.glLoadTransposeMatrixf(m)
}

pub fn multi_tex_coord1d(texture int, s f64) {
	C.glMultiTexCoord1d(texture, s)
}

pub fn multi_tex_coord1dv(texture int, v []f64) {
	C.glMultiTexCoord1dv(texture, v)
}

pub fn multi_tex_coord1dv(texture int, v voidptr) {
	C.glMultiTexCoord1dv(texture, v)
}

pub fn multi_tex_coord1f(texture int, s f32) {
	C.glMultiTexCoord1f(texture, s)
}

pub fn multi_tex_coord1fv(texture int, v []f32) {
	C.glMultiTexCoord1fv(texture, v)
}

pub fn multi_tex_coord1fv(texture int, v voidptr) {
	C.glMultiTexCoord1fv(texture, v)
}

pub fn multi_tex_coord1i(texture int, s int) {
	C.glMultiTexCoord1i(texture, s)
}

pub fn multi_tex_coord1iv(texture int, v []int) {
	C.glMultiTexCoord1iv(texture, v)
}

pub fn multi_tex_coord1iv(texture int, v voidptr) {
	C.glMultiTexCoord1iv(texture, v)
}

pub fn multi_tex_coord1s(texture int, s i16) {
	C.glMultiTexCoord1s(texture, s)
}

pub fn multi_tex_coord1sv(texture int, v []i16) {
	C.glMultiTexCoord1sv(texture, v)
}

pub fn multi_tex_coord1sv(texture int, v voidptr) {
	C.glMultiTexCoord1sv(texture, v)
}

pub fn multi_tex_coord2d(texture int, s f64, t f64) {
	C.glMultiTexCoord2d(texture, s, t)
}

pub fn multi_tex_coord2dv(texture int, v []f64) {
	C.glMultiTexCoord2dv(texture, v)
}

pub fn multi_tex_coord2dv(texture int, v voidptr) {
	C.glMultiTexCoord2dv(texture, v)
}

pub fn multi_tex_coord2f(texture int, s f32, t f32) {
	C.glMultiTexCoord2f(texture, s, t)
}

pub fn multi_tex_coord2fv(texture int, v []f32) {
	C.glMultiTexCoord2fv(texture, v)
}

pub fn multi_tex_coord2fv(texture int, v voidptr) {
	C.glMultiTexCoord2fv(texture, v)
}

pub fn multi_tex_coord2i(texture int, s int, t int) {
	C.glMultiTexCoord2i(texture, s, t)
}

pub fn multi_tex_coord2iv(texture int, v []int) {
	C.glMultiTexCoord2iv(texture, v)
}

pub fn multi_tex_coord2iv(texture int, v voidptr) {
	C.glMultiTexCoord2iv(texture, v)
}

pub fn multi_tex_coord2s(texture int, s i16, t i16) {
	C.glMultiTexCoord2s(texture, s, t)
}

pub fn multi_tex_coord2sv(texture int, v []i16) {
	C.glMultiTexCoord2sv(texture, v)
}

pub fn multi_tex_coord2sv(texture int, v voidptr) {
	C.glMultiTexCoord2sv(texture, v)
}

pub fn multi_tex_coord3d(texture int, s f64, t f64, r f64) {
	C.glMultiTexCoord3d(texture, s, t, r)
}

pub fn multi_tex_coord3dv(texture int, v []f64) {
	C.glMultiTexCoord3dv(texture, v)
}

pub fn multi_tex_coord3dv(texture int, v voidptr) {
	C.glMultiTexCoord3dv(texture, v)
}

pub fn multi_tex_coord3f(texture int, s f32, t f32, r f32) {
	C.glMultiTexCoord3f(texture, s, t, r)
}

pub fn multi_tex_coord3fv(texture int, v []f32) {
	C.glMultiTexCoord3fv(texture, v)
}

pub fn multi_tex_coord3fv(texture int, v voidptr) {
	C.glMultiTexCoord3fv(texture, v)
}

pub fn multi_tex_coord3i(texture int, s int, t int, r int) {
	C.glMultiTexCoord3i(texture, s, t, r)
}

pub fn multi_tex_coord3iv(texture int, v []int) {
	C.glMultiTexCoord3iv(texture, v)
}

pub fn multi_tex_coord3iv(texture int, v voidptr) {
	C.glMultiTexCoord3iv(texture, v)
}

pub fn multi_tex_coord3s(texture int, s i16, t i16, r i16) {
	C.glMultiTexCoord3s(texture, s, t, r)
}

pub fn multi_tex_coord3sv(texture int, v []i16) {
	C.glMultiTexCoord3sv(texture, v)
}

pub fn multi_tex_coord3sv(texture int, v voidptr) {
	C.glMultiTexCoord3sv(texture, v)
}

pub fn multi_tex_coord4d(texture int, s f64, t f64, r f64, q f64) {
	C.glMultiTexCoord4d(texture, s, t, r, q)
}

pub fn multi_tex_coord4dv(texture int, v []f64) {
	C.glMultiTexCoord4dv(texture, v)
}

pub fn multi_tex_coord4dv(texture int, v voidptr) {
	C.glMultiTexCoord4dv(texture, v)
}

pub fn multi_tex_coord4f(texture int, s f32, t f32, r f32, q f32) {
	C.glMultiTexCoord4f(texture, s, t, r, q)
}

pub fn multi_tex_coord4fv(texture int, v []f32) {
	C.glMultiTexCoord4fv(texture, v)
}

pub fn multi_tex_coord4fv(texture int, v voidptr) {
	C.glMultiTexCoord4fv(texture, v)
}

pub fn multi_tex_coord4i(texture int, s int, t int, r int, q int) {
	C.glMultiTexCoord4i(texture, s, t, r, q)
}

pub fn multi_tex_coord4iv(texture int, v []int) {
	C.glMultiTexCoord4iv(texture, v)
}

pub fn multi_tex_coord4iv(texture int, v voidptr) {
	C.glMultiTexCoord4iv(texture, v)
}

pub fn multi_tex_coord4s(texture int, s i16, t i16, r i16, q i16) {
	C.glMultiTexCoord4s(texture, s, t, r, q)
}

pub fn multi_tex_coord4sv(texture int, v []i16) {
	C.glMultiTexCoord4sv(texture, v)
}

pub fn multi_tex_coord4sv(texture int, v voidptr) {
	C.glMultiTexCoord4sv(texture, v)
}

pub fn mult_transpose_matrixd(m []f64) {
	C.glMultTransposeMatrixd(m)
}

pub fn mult_transpose_matrixd(m voidptr) {
	C.glMultTransposeMatrixd(m)
}

pub fn mult_transpose_matrixf(m []f32) {
	C.glMultTransposeMatrixf(m)
}

pub fn mult_transpose_matrixf(m voidptr) {
	C.glMultTransposeMatrixf(m)
}

pub fn sample_coverage(value f32, invert bool) {
	C.glSampleCoverage(value, invert)
}
