module gl11

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_COLOR_LOGIC_OP
	GL_POLYGON_OFFSET_UNITS
	GL_POLYGON_OFFSET_POINT
	GL_POLYGON_OFFSET_LINE
	GL_POLYGON_OFFSET_FILL
	GL_POLYGON_OFFSET_FACTOR
	GL_TEXTURE_BINDING_1D
	GL_TEXTURE_BINDING_2D
	GL_TEXTURE_INTERNAL_FORMAT
	GL_TEXTURE_RED_SIZE
	GL_TEXTURE_GREEN_SIZE
	GL_TEXTURE_BLUE_SIZE
	GL_TEXTURE_ALPHA_SIZE
	GL_DOUBLE
	GL_PROXY_TEXTURE_1D
	GL_PROXY_TEXTURE_2D
	GL_R3_G3_B2
	GL_RGB4
	GL_RGB5
	GL_RGB8
	GL_RGB10
	GL_RGB12
	GL_RGB16
	GL_RGBA2
	GL_RGBA4
	GL_RGB5_A1
	GL_RGBA8
	GL_RGB10_A2
	GL_RGBA12
	GL_RGBA16
	GL_CLIENT_PIXEL_STORE_BIT
	GL_CLIENT_VERTEX_ARRAY_BIT
	GL_CLIENT_ALL_ATTRIB_BITS
	GL_VERTEX_ARRAY_POINTER
	GL_NORMAL_ARRAY_POINTER
	GL_COLOR_ARRAY_POINTER
	GL_INDEX_ARRAY_POINTER
	GL_TEXTURE_COORD_ARRAY_POINTER
	GL_EDGE_FLAG_ARRAY_POINTER
	GL_FEEDBACK_BUFFER_POINTER
	GL_SELECTION_BUFFER_POINTER
	GL_CLIENT_ATTRIB_STACK_DEPTH
	GL_INDEX_LOGIC_OP
	GL_MAX_CLIENT_ATTRIB_STACK_DEPTH
	GL_FEEDBACK_BUFFER_SIZE
	GL_FEEDBACK_BUFFER_TYPE
	GL_SELECTION_BUFFER_SIZE
	GL_VERTEX_ARRAY
	GL_NORMAL_ARRAY
	GL_COLOR_ARRAY
	GL_INDEX_ARRAY
	GL_TEXTURE_COORD_ARRAY
	GL_EDGE_FLAG_ARRAY
	GL_VERTEX_ARRAY_SIZE
	GL_VERTEX_ARRAY_TYPE
	GL_VERTEX_ARRAY_STRIDE
	GL_NORMAL_ARRAY_TYPE
	GL_NORMAL_ARRAY_STRIDE
	GL_COLOR_ARRAY_SIZE
	GL_COLOR_ARRAY_TYPE
	GL_COLOR_ARRAY_STRIDE
	GL_INDEX_ARRAY_TYPE
	GL_INDEX_ARRAY_STRIDE
	GL_TEXTURE_COORD_ARRAY_SIZE
	GL_TEXTURE_COORD_ARRAY_TYPE
	GL_TEXTURE_COORD_ARRAY_STRIDE
	GL_EDGE_FLAG_ARRAY_STRIDE
	GL_TEXTURE_LUMINANCE_SIZE
	GL_TEXTURE_INTENSITY_SIZE
	GL_TEXTURE_PRIORITY
	GL_TEXTURE_RESIDENT
	GL_ALPHA4
	GL_ALPHA8
	GL_ALPHA12
	GL_ALPHA16
	GL_LUMINANCE4
	GL_LUMINANCE8
	GL_LUMINANCE12
	GL_LUMINANCE16
	GL_LUMINANCE4_ALPHA4
	GL_LUMINANCE6_ALPHA2
	GL_LUMINANCE8_ALPHA8
	GL_LUMINANCE12_ALPHA4
	GL_LUMINANCE12_ALPHA12
	GL_LUMINANCE16_ALPHA16
	GL_INTENSITY
	GL_INTENSITY4
	GL_INTENSITY8
	GL_INTENSITY12
	GL_INTENSITY16
	GL_V2F
	GL_V3F
	GL_C4UB_V2F
	GL_C4UB_V3F
	GL_C3F_V3F
	GL_N3F_V3F
	GL_C4F_N3F_V3F
	GL_T2F_V3F
	GL_T4F_V4F
	GL_T2F_C4UB_V3F
	GL_T2F_C3F_V3F
	GL_T2F_N3F_V3F
	GL_T2F_C4F_N3F_V3F
	GL_T4F_C4F_N3F_V4F
)

pub fn draw_arrays(mode u32, first int, count int) {
	C.glDrawArrays(mode, first, count)
}

// TODO
pub fn draw_elements(mode u32, count int, type_ u32, indices voidptr) {
	C.glDrawElements(mode, count, type_, indices)
}

// TODO
pub fn get_pointerv(pname u32, params *voidptr) {
	C.glGetPointerv(pname, params)
}

pub fn polygon_offset(factor f32, units f32) {
	C.glPolygonOffset(factor, units)
}

pub fn copy_tex_image1_d(target u32, level int, internalformat u32, x int, y int, width int, border int) {
	C.glCopyTexImage1D(target, level, internalformat, x, y, width, border)
}

pub fn copy_tex_image2_d(target u32, level int, internalformat u32, x int, y int, width int, height int, border int) {
	C.glCopyTexImage2D(target, level, internalformat, x, y, width, height, border)
}

pub fn copy_tex_sub_image1_d(target u32, level int, xoffset int, x int, y int, width int) {
	C.glCopyTexSubImage1D(target, level, xoffset, x, y, width)
}

pub fn copy_tex_sub_image2_d(target u32, level int, xoffset int, yoffset int, x int, y int, width int, height int) {
	C.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
}

// TODO
pub fn tex_sub_image1_d(target u32, level int, xoffset int, width int, format u32, type_ u32, pixels voidptr) {
	C.glTexSubImage1D(target, level, xoffset, width, format, type_, pixels)
}

// TODO
pub fn tex_sub_image2_d(target u32, level int, xoffset int, yoffset int, width int, height int, format u32, type_ u32, pixels voidptr) {
	C.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type_, pixels)
}

pub fn bind_texture(target u32, texture u32) {
	C.glBindTexture(target, texture)
}

// TODO
pub fn delete_textures(n int, textures []u32) {
	C.glDeleteTextures(n, textures.data)
}

// TODO
pub fn gen_textures(n int, textures []u32) {
	C.glGenTextures(n, textures.data)
}

pub fn is_texture(texture u32) bool {
	return C.glIsTexture(texture)
}

pub fn array_element(i int) {
	C.glArrayElement(i)
}

// TODO
pub fn color_pointer(size int, type_ u32, stride int, pointer voidptr) {
	C.glColorPointer(size, type_, stride, pointer)
}

pub fn disable_client_state(array u32) {
	C.glDisableClientState(array)
}

// TODO
pub fn edge_flag_pointer(stride int, pointer voidptr) {
	C.glEdgeFlagPointer(stride, pointer)
}

pub fn enable_client_state(array u32) {
	C.glEnableClientState(array)
}

// TODO
pub fn index_pointer(type_ u32, stride int, pointer voidptr) {
	C.glIndexPointer(type_, stride, pointer)
}

// TODO
pub fn interleaved_arrays(format u32, stride int, pointer voidptr) {
	C.glInterleavedArrays(format, stride, pointer)
}

// TODO
pub fn normal_pointer(type_ u32, stride int, pointer voidptr) {
	C.glNormalPointer(type_, stride, pointer)
}

// TODO
pub fn tex_coord_pointer(size int, type_ u32, stride int, pointer voidptr) {
	C.glTexCoordPointer(size, type_, stride, pointer)
}

// TODO
pub fn vertex_pointer(size int, type_ u32, stride int, pointer voidptr) {
	C.glVertexPointer(size, type_, stride, pointer)
}

// TODO
pub fn are_textures_resident(n int, textures []u32, residences []bool) bool {
	return C.glAreTexturesResident(n, textures.data, residences.data)
}

// TODO
pub fn prioritize_textures(n int, textures []u32, priorities []f32) {
	C.glPrioritizeTextures(n, textures.data, priorities.data)
}

pub fn indexub(c u8) {
	C.glIndexub(c)
}

// TODO
pub fn indexubv(c []u8) {
	C.glIndexubv(c.data)
}

pub fn pop_client_attrib() {
	C.glPopClientAttrib()
}

pub fn push_client_attrib(mask u32) {
	C.glPushClientAttrib(mask)
}
