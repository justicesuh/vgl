module gl44

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_MAX_VERTEX_ATTRIB_STRIDE
	GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED
	GL_TEXTURE_BUFFER_BINDING
	GL_MAP_READ_BIT
	GL_MAP_WRITE_BIT
	GL_MAP_PERSISTENT_BIT
	GL_MAP_COHERENT_BIT
	GL_DYNAMIC_STORAGE_BIT
	GL_CLIENT_STORAGE_BIT
	GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT
	GL_BUFFER_IMMUTABLE_STORAGE
	GL_BUFFER_STORAGE_FLAGS
	GL_CLEAR_TEXTURE
	GL_LOCATION_COMPONENT
	GL_TRANSFORM_FEEDBACK_BUFFER
	GL_TRANSFORM_FEEDBACK_BUFFER_INDEX
	GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE
	GL_QUERY_BUFFER
	GL_QUERY_BUFFER_BARRIER_BIT
	GL_QUERY_BUFFER_BINDING
	GL_QUERY_RESULT_NO_WAIT
	GL_MIRROR_CLAMP_TO_EDGE
	GL_STENCIL_INDEX
	GL_STENCIL_INDEX8
	GL_UNSIGNED_INT_10F_11F_11F_REV
)

// TODO
pub fn buffer_storage(target u32, size []int, data voidptr, flags u32) {
	C.glBufferStorage(target, size.data, data, flags)
}

// TODO
pub fn clear_tex_image(texture u32, level int, format u32, type_ u32, data voidptr) {
	C.glClearTexImage(texture, level, format, type_, data)
}

// TODO
pub fn clear_tex_sub_image(texture u32, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format u32, type_ u32, data voidptr) {
	C.glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, data)
}

// TODO
pub fn bind_buffers_base(target u32, first u32, count int, buffers []u32) {
	C.glBindBuffersBase(target, first, count, buffers.data)
}

// TODO
pub fn bind_buffers_range(target u32, first u32, count int, buffers []u32, offsets *voidptr, sizes *voidptr) {
	C.glBindBuffersRange(target, first, count, buffers.data, offsets, sizes)
}

// TODO
pub fn bind_textures(first u32, count int, textures []u32) {
	C.glBindTextures(first, count, textures.data)
}

// TODO
pub fn bind_samplers(first u32, count int, samplers []u32) {
	C.glBindSamplers(first, count, samplers.data)
}

// TODO
pub fn bind_image_textures(first u32, count int, textures []u32) {
	C.glBindImageTextures(first, count, textures.data)
}

// TODO
pub fn bind_vertex_buffers(first u32, count int, buffers []u32, offsets *voidptr, strides []int) {
	C.glBindVertexBuffers(first, count, buffers.data, offsets, strides.data)
}
