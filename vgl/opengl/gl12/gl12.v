module GL12

import const (
	GL_ALIASED_LINE_WIDTH_RANGE
	GL_ALIASED_POINT_SIZE_RANGE
	GL_BGR
	GL_BGRA
	GL_CLAMP_TO_EDGE
	GL_LIGHT_MODEL_COLOR_CONTROL
	GL_MAX_3D_TEXTURE_SIZE
	GL_MAX_ELEMENTS_INDICES
	GL_MAX_ELEMENTS_VERTICES
	GL_PACK_IMAGE_HEIGHT
	GL_PACK_SKIP_IMAGES
	GL_PROXY_TEXTURE_3D
	GL_RESCALE_NORMAL
	GL_SEPARATE_SPECULAR_COLOR
	GL_SINGLE_COLOR
	GL_SMOOTH_LINE_WIDTH_GRANULARITY
	GL_SMOOTH_LINE_WIDTH_RANGE
	GL_SMOOTH_POINT_SIZE_GRANULARITY
	GL_SMOOTH_POINT_SIZE_RANGE
	GL_TEXTURE_3D
	GL_TEXTURE_BASE_LEVEL
	GL_TEXTURE_BINDING_3D
	GL_TEXTURE_DEPTH
	GL_TEXTURE_MAX_LEVEL
	GL_TEXTURE_MAX_LOD
	GL_TEXTURE_MIN_LOD
	GL_TEXTURE_WRAP_R
	GL_UNPACK_IMAGE_HEIGHT
	GL_UNPACK_SKIP_IMAGES
	GL_UNSIGNED_BYTE_2_3_3_REV
	GL_UNSIGNED_BYTE_3_3_2
	GL_UNSIGNED_INT_10_10_10_2
	GL_UNSIGNED_INT_2_10_10_10_REV
	GL_UNSIGNED_INT_8_8_8_8
	GL_UNSIGNED_INT_8_8_8_8_REV
	GL_UNSIGNED_SHORT_1_5_5_5_REV
	GL_UNSIGNED_SHORT_4_4_4_4
	GL_UNSIGNED_SHORT_4_4_4_4_REV
	GL_UNSIGNED_SHORT_5_5_5_1
	GL_UNSIGNED_SHORT_5_6_5
	GL_UNSIGNED_SHORT_5_6_5_REV
)

pub fn copy_tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, x int, y int, width int, height int) {
	C.glCopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height)
}

pub fn draw_range_elements(mode int, start int, end int, count int, type int, indices i64) {
	C.glDrawRangeElements(mode, start, end, count, type, indices)
}

pub fn draw_range_elements(mode int, start int, end int, type int, indices voidptr) {
	C.glDrawRangeElements(mode, start, end, type, indices)
}

pub fn draw_range_elements(mode int, start int, end int, indices voidptr) {
	C.glDrawRangeElements(mode, start, end, indices)
}

pub fn draw_range_elements(mode int, start int, end int, indices voidptr) {
	C.glDrawRangeElements(mode, start, end, indices)
}

pub fn draw_range_elements(mode int, start int, end int, indices voidptr) {
	C.glDrawRangeElements(mode, start, end, indices)
}

pub fn tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, format int, type int, pixels []f64) {
	C.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)
}

pub fn tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, format int, type int, pixels []f32) {
	C.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)
}

pub fn tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, format int, type int, pixels []int) {
	C.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)
}

pub fn tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, format int, type int, pixels i64) {
	C.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)
}

pub fn tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, format int, type int, pixels []i16) {
	C.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)
}

pub fn tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, format int, type int, pixels voidptr) {
	C.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)
}

pub fn tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, format int, type int, pixels voidptr) {
	C.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)
}

pub fn tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, format int, type int, pixels voidptr) {
	C.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)
}

pub fn tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, format int, type int, pixels voidptr) {
	C.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)
}

pub fn tex_image3d(target int, level int, internalformat int, width int, height int, depth int, border int, format int, type int, pixels voidptr) {
	C.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels)
}

pub fn tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []f64) {
	C.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []f32) {
	C.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []int) {
	C.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels i64) {
	C.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []i16) {
	C.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn tex_sub_image3d(target int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}
