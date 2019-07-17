module gl44

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o
#include <glad.h>

import const (
	GL_BUFFER_IMMUTABLE_STORAGE
	GL_BUFFER_STORAGE_FLAGS
	GL_CLEAR_TEXTURE
	GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT
	GL_CLIENT_STORAGE_BIT
	GL_DYNAMIC_STORAGE_BIT
	GL_LOCATION_COMPONENT
	GL_MAP_COHERENT_BIT
	GL_MAP_PERSISTENT_BIT
	GL_MAX_VERTEX_ATTRIB_STRIDE
	GL_MIRROR_CLAMP_TO_EDGE
	GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED
	GL_QUERY_BUFFER
	GL_QUERY_BUFFER_BARRIER_BIT
	GL_QUERY_BUFFER_BINDING
	GL_QUERY_RESULT_NO_WAIT
	GL_TEXTURE_BUFFER_BINDING
	GL_TRANSFORM_FEEDBACK_BUFFER_INDEX
	GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE
)

pub fn bind_buffers_base(target int, first int, buffers []int) {
	C.glBindBuffersBase(target, first, buffers)
}

pub fn bind_buffers_base(target int, first int, buffers voidptr) {
	C.glBindBuffersBase(target, first, buffers)
}

pub fn bind_buffers_range(target int, first int, buffers []int, offsets *voidptr, sizes *voidptr) {
	C.glBindBuffersRange(target, first, buffers, offsets, sizes)
}

pub fn bind_buffers_range(target int, first int, buffers voidptr, offsets *voidptr, sizes *voidptr) {
	C.glBindBuffersRange(target, first, buffers, offsets, sizes)
}

pub fn bind_image_textures(first int, textures []int) {
	C.glBindImageTextures(first, textures)
}

pub fn bind_image_textures(first int, textures voidptr) {
	C.glBindImageTextures(first, textures)
}

pub fn bind_samplers(first int, samplers []int) {
	C.glBindSamplers(first, samplers)
}

pub fn bind_samplers(first int, samplers voidptr) {
	C.glBindSamplers(first, samplers)
}

pub fn bind_textures(first int, textures []int) {
	C.glBindTextures(first, textures)
}

pub fn bind_textures(first int, textures voidptr) {
	C.glBindTextures(first, textures)
}

pub fn bind_vertex_buffers(first int, buffers []int, offsets *voidptr, strides []int) {
	C.glBindVertexBuffers(first, buffers, offsets, strides)
}

pub fn bind_vertex_buffers(first int, buffers voidptr, offsets *voidptr, strides voidptr) {
	C.glBindVertexBuffers(first, buffers, offsets, strides)
}

pub fn buffer_storage(target int, data []f64, flags int) {
	C.glBufferStorage(target, data, flags)
}

pub fn buffer_storage(target int, data []f32, flags int) {
	C.glBufferStorage(target, data, flags)
}

pub fn buffer_storage(target int, data []int, flags int) {
	C.glBufferStorage(target, data, flags)
}

pub fn buffer_storage(target int, size i64, flags int) {
	C.glBufferStorage(target, size, flags)
}

pub fn buffer_storage(target int, data []i16, flags int) {
	C.glBufferStorage(target, data, flags)
}

pub fn buffer_storage(target int, data voidptr, flags int) {
	C.glBufferStorage(target, data, flags)
}

pub fn buffer_storage(target int, data voidptr, flags int) {
	C.glBufferStorage(target, data, flags)
}

pub fn buffer_storage(target int, data voidptr, flags int) {
	C.glBufferStorage(target, data, flags)
}

pub fn buffer_storage(target int, data voidptr, flags int) {
	C.glBufferStorage(target, data, flags)
}

pub fn buffer_storage(target int, data voidptr, flags int) {
	C.glBufferStorage(target, data, flags)
}

pub fn clear_tex_image(texture int, level int, format int, type int, data []f64) {
	C.glClearTexImage(texture, level, format, type, data)
}

pub fn clear_tex_image(texture int, level int, format int, type int, data []f32) {
	C.glClearTexImage(texture, level, format, type, data)
}

pub fn clear_tex_image(texture int, level int, format int, type int, data []int) {
	C.glClearTexImage(texture, level, format, type, data)
}

pub fn clear_tex_image(texture int, level int, format int, type int, data []i16) {
	C.glClearTexImage(texture, level, format, type, data)
}

pub fn clear_tex_image(texture int, level int, format int, type int, data voidptr) {
	C.glClearTexImage(texture, level, format, type, data)
}

pub fn clear_tex_image(texture int, level int, format int, type int, data voidptr) {
	C.glClearTexImage(texture, level, format, type, data)
}

pub fn clear_tex_image(texture int, level int, format int, type int, data voidptr) {
	C.glClearTexImage(texture, level, format, type, data)
}

pub fn clear_tex_image(texture int, level int, format int, type int, data voidptr) {
	C.glClearTexImage(texture, level, format, type, data)
}

pub fn clear_tex_image(texture int, level int, format int, type int, data voidptr) {
	C.glClearTexImage(texture, level, format, type, data)
}

pub fn clear_tex_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, data []f64) {
	C.glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)
}

pub fn clear_tex_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, data []f32) {
	C.glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)
}

pub fn clear_tex_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, data []int) {
	C.glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)
}

pub fn clear_tex_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, data []i16) {
	C.glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)
}

pub fn clear_tex_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, data voidptr) {
	C.glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)
}

pub fn clear_tex_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, data voidptr) {
	C.glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)
}

pub fn clear_tex_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, data voidptr) {
	C.glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)
}

pub fn clear_tex_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, data voidptr) {
	C.glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)
}

pub fn clear_tex_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, data voidptr) {
	C.glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)
}
