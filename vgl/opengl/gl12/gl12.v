module gl12

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_UNSIGNED_BYTE_3_3_2
	GL_UNSIGNED_SHORT_4_4_4_4
	GL_UNSIGNED_SHORT_5_5_5_1
	GL_UNSIGNED_INT_8_8_8_8
	GL_UNSIGNED_INT_10_10_10_2
	GL_TEXTURE_BINDING_3D
	GL_PACK_SKIP_IMAGES
	GL_PACK_IMAGE_HEIGHT
	GL_UNPACK_SKIP_IMAGES
	GL_UNPACK_IMAGE_HEIGHT
	GL_TEXTURE_3D
	GL_PROXY_TEXTURE_3D
	GL_TEXTURE_DEPTH
	GL_TEXTURE_WRAP_R
	GL_MAX_3D_TEXTURE_SIZE
	GL_UNSIGNED_BYTE_2_3_3_REV
	GL_UNSIGNED_SHORT_5_6_5
	GL_UNSIGNED_SHORT_5_6_5_REV
	GL_UNSIGNED_SHORT_4_4_4_4_REV
	GL_UNSIGNED_SHORT_1_5_5_5_REV
	GL_UNSIGNED_INT_8_8_8_8_REV
	GL_UNSIGNED_INT_2_10_10_10_REV
	GL_BGR
	GL_BGRA
	GL_MAX_ELEMENTS_VERTICES
	GL_MAX_ELEMENTS_INDICES
	GL_CLAMP_TO_EDGE
	GL_TEXTURE_MIN_LOD
	GL_TEXTURE_MAX_LOD
	GL_TEXTURE_BASE_LEVEL
	GL_TEXTURE_MAX_LEVEL
	GL_SMOOTH_POINT_SIZE_RANGE
	GL_SMOOTH_POINT_SIZE_GRANULARITY
	GL_SMOOTH_LINE_WIDTH_RANGE
	GL_SMOOTH_LINE_WIDTH_GRANULARITY
	GL_ALIASED_LINE_WIDTH_RANGE
	GL_RESCALE_NORMAL
	GL_LIGHT_MODEL_COLOR_CONTROL
	GL_SINGLE_COLOR
	GL_SEPARATE_SPECULAR_COLOR
	GL_ALIASED_POINT_SIZE_RANGE
)

// TODO
pub fn draw_range_elements(mode u32, start u32, end u32, count int, type_ u32, indices voidptr) {
	C.glDrawRangeElements(mode, start, end, count, type_, indices)
}

// TODO
pub fn tex_image3_d(target u32, level int, internalformat int, width int, height int, depth int, border int, format u32, type_ u32, pixels voidptr) {
	C.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type_, pixels)
}

// TODO
pub fn tex_sub_image3_d(target u32, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format u32, type_ u32, pixels voidptr) {
	C.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, pixels)
}

pub fn copy_tex_sub_image3_d(target u32, level int, xoffset int, yoffset int, zoffset int, x int, y int, width int, height int) {
	C.glCopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height)
}
