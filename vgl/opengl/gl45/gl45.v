module gl45

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o
#include <glad.h>

import const (
	GL_CLIP_DEPTH_MODE
	GL_CLIP_ORIGIN
	GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT
	GL_CONTEXT_LOST
	GL_CONTEXT_RELEASE_BEHAVIOR
	GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH
	GL_GUILTY_CONTEXT_RESET
	GL_INNOCENT_CONTEXT_RESET
	GL_LOSE_CONTEXT_ON_RESET
	GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES
	GL_MAX_CULL_DISTANCES
	GL_NEGATIVE_ONE_TO_ONE
	GL_NO_RESET_NOTIFICATION
	GL_QUERY_BY_REGION_NO_WAIT_INVERTED
	GL_QUERY_BY_REGION_WAIT_INVERTED
	GL_QUERY_NO_WAIT_INVERTED
	GL_QUERY_TARGET
	GL_QUERY_WAIT_INVERTED
	GL_RESET_NOTIFICATION_STRATEGY
	GL_TEXTURE_TARGET
	GL_UNKNOWN_CONTEXT_RESET
	GL_ZERO_TO_ONE
)

pub fn bind_texture_unit(unit int, texture int) {
	C.glBindTextureUnit(unit, texture)
}

pub fn blit_named_framebuffer(read_framebuffer int, draw_framebuffer int, src_x0 int, src_y0 int, src_x1 int, src_y1 int, dst_x0 int, dst_y0 int, dst_x1 int, dst_y1 int, mask int, filter int) {
	C.glBlitNamedFramebuffer(read_framebuffer, draw_framebuffer, src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)
}

pub fn check_named_framebuffer_status(framebuffer int, target int) int {
	return C.glCheckNamedFramebufferStatus(framebuffer, target)
}

pub fn clear_named_buffer_data(buffer int, internalformat int, format int, type int, data []f32) {
	C.glClearNamedBufferData(buffer, internalformat, format, type, data)
}

pub fn clear_named_buffer_data(buffer int, internalformat int, format int, type int, data []int) {
	C.glClearNamedBufferData(buffer, internalformat, format, type, data)
}

pub fn clear_named_buffer_data(buffer int, internalformat int, format int, type int, data []i16) {
	C.glClearNamedBufferData(buffer, internalformat, format, type, data)
}

pub fn clear_named_buffer_data(buffer int, internalformat int, format int, type int, data voidptr) {
	C.glClearNamedBufferData(buffer, internalformat, format, type, data)
}

pub fn clear_named_buffer_data(buffer int, internalformat int, format int, type int, data voidptr) {
	C.glClearNamedBufferData(buffer, internalformat, format, type, data)
}

pub fn clear_named_buffer_data(buffer int, internalformat int, format int, type int, data voidptr) {
	C.glClearNamedBufferData(buffer, internalformat, format, type, data)
}

pub fn clear_named_buffer_data(buffer int, internalformat int, format int, type int, data voidptr) {
	C.glClearNamedBufferData(buffer, internalformat, format, type, data)
}

pub fn clear_named_buffer_sub_data(buffer int, internalformat int, offset i64, size i64, format int, type int, data []f32) {
	C.glClearNamedBufferSubData(buffer, internalformat, offset, size, format, type, data)
}

pub fn clear_named_buffer_sub_data(buffer int, internalformat int, offset i64, size i64, format int, type int, data []int) {
	C.glClearNamedBufferSubData(buffer, internalformat, offset, size, format, type, data)
}

pub fn clear_named_buffer_sub_data(buffer int, internalformat int, offset i64, size i64, format int, type int, data []i16) {
	C.glClearNamedBufferSubData(buffer, internalformat, offset, size, format, type, data)
}

pub fn clear_named_buffer_sub_data(buffer int, internalformat int, offset i64, size i64, format int, type int, data voidptr) {
	C.glClearNamedBufferSubData(buffer, internalformat, offset, size, format, type, data)
}

pub fn clear_named_buffer_sub_data(buffer int, internalformat int, offset i64, size i64, format int, type int, data voidptr) {
	C.glClearNamedBufferSubData(buffer, internalformat, offset, size, format, type, data)
}

pub fn clear_named_buffer_sub_data(buffer int, internalformat int, offset i64, size i64, format int, type int, data voidptr) {
	C.glClearNamedBufferSubData(buffer, internalformat, offset, size, format, type, data)
}

pub fn clear_named_buffer_sub_data(buffer int, internalformat int, offset i64, size i64, format int, type int, data voidptr) {
	C.glClearNamedBufferSubData(buffer, internalformat, offset, size, format, type, data)
}

pub fn clear_named_framebufferfi(framebuffer int, buffer int, drawbuffer int, depth f32, stencil int) {
	C.glClearNamedFramebufferfi(framebuffer, buffer, drawbuffer, depth, stencil)
}

pub fn clear_named_framebufferfv(framebuffer int, buffer int, drawbuffer int, value []f32) {
	C.glClearNamedFramebufferfv(framebuffer, buffer, drawbuffer, value)
}

pub fn clear_named_framebufferfv(framebuffer int, buffer int, drawbuffer int, value voidptr) {
	C.glClearNamedFramebufferfv(framebuffer, buffer, drawbuffer, value)
}

pub fn clear_named_framebufferiv(framebuffer int, buffer int, drawbuffer int, value []int) {
	C.glClearNamedFramebufferiv(framebuffer, buffer, drawbuffer, value)
}

pub fn clear_named_framebufferiv(framebuffer int, buffer int, drawbuffer int, value voidptr) {
	C.glClearNamedFramebufferiv(framebuffer, buffer, drawbuffer, value)
}

pub fn clear_named_framebufferuiv(framebuffer int, buffer int, drawbuffer int, value []int) {
	C.glClearNamedFramebufferuiv(framebuffer, buffer, drawbuffer, value)
}

pub fn clear_named_framebufferuiv(framebuffer int, buffer int, drawbuffer int, value voidptr) {
	C.glClearNamedFramebufferuiv(framebuffer, buffer, drawbuffer, value)
}

pub fn clip_control(origin int, depth int) {
	C.glClipControl(origin, depth)
}

pub fn compressed_texture_sub_image1d(texture int, level int, xoffset int, width int, format int, image_size int, data i64) {
	C.glCompressedTextureSubImage1D(texture, level, xoffset, width, format, image_size, data)
}

pub fn compressed_texture_sub_image1d(texture int, level int, xoffset int, width int, format int, data voidptr) {
	C.glCompressedTextureSubImage1D(texture, level, xoffset, width, format, data)
}

pub fn compressed_texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, image_size int, data i64) {
	C.glCompressedTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, image_size, data)
}

pub fn compressed_texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, data voidptr) {
	C.glCompressedTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, data)
}

pub fn compressed_texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, image_size int, data i64) {
	C.glCompressedTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, data)
}

pub fn compressed_texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, data voidptr) {
	C.glCompressedTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, data)
}

pub fn copy_named_buffer_sub_data(read_buffer int, write_buffer int, read_offset i64, write_offset i64, size i64) {
	C.glCopyNamedBufferSubData(read_buffer, write_buffer, read_offset, write_offset, size)
}

pub fn copy_texture_sub_image1d(texture int, level int, xoffset int, x int, y int, width int) {
	C.glCopyTextureSubImage1D(texture, level, xoffset, x, y, width)
}

pub fn copy_texture_sub_image2d(texture int, level int, xoffset int, yoffset int, x int, y int, width int, height int) {
	C.glCopyTextureSubImage2D(texture, level, xoffset, yoffset, x, y, width, height)
}

pub fn copy_texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, x int, y int, width int, height int) {
	C.glCopyTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, x, y, width, height)
}

pub fn create_buffers() int {
	return C.glCreateBuffers()
}

pub fn create_buffers(buffers []int) {
	C.glCreateBuffers(buffers)
}

pub fn create_buffers(buffers voidptr) {
	C.glCreateBuffers(buffers)
}

pub fn create_framebuffers() int {
	return C.glCreateFramebuffers()
}

pub fn create_framebuffers(framebuffers []int) {
	C.glCreateFramebuffers(framebuffers)
}

pub fn create_framebuffers(framebuffers voidptr) {
	C.glCreateFramebuffers(framebuffers)
}

pub fn create_program_pipelines() int {
	return C.glCreateProgramPipelines()
}

pub fn create_program_pipelines(pipelines []int) {
	C.glCreateProgramPipelines(pipelines)
}

pub fn create_program_pipelines(pipelines voidptr) {
	C.glCreateProgramPipelines(pipelines)
}

pub fn create_queries(target int) int {
	return C.glCreateQueries(target)
}

pub fn create_queries(target int, ids []int) {
	C.glCreateQueries(target, ids)
}

pub fn create_queries(target int, ids voidptr) {
	C.glCreateQueries(target, ids)
}

pub fn create_renderbuffers() int {
	return C.glCreateRenderbuffers()
}

pub fn create_renderbuffers(renderbuffers []int) {
	C.glCreateRenderbuffers(renderbuffers)
}

pub fn create_renderbuffers(renderbuffers voidptr) {
	C.glCreateRenderbuffers(renderbuffers)
}

pub fn create_samplers() int {
	return C.glCreateSamplers()
}

pub fn create_samplers(samplers []int) {
	C.glCreateSamplers(samplers)
}

pub fn create_samplers(samplers voidptr) {
	C.glCreateSamplers(samplers)
}

pub fn create_textures(target int) int {
	return C.glCreateTextures(target)
}

pub fn create_textures(target int, textures []int) {
	C.glCreateTextures(target, textures)
}

pub fn create_textures(target int, textures voidptr) {
	C.glCreateTextures(target, textures)
}

pub fn create_transform_feedbacks() int {
	return C.glCreateTransformFeedbacks()
}

pub fn create_transform_feedbacks(ids []int) {
	C.glCreateTransformFeedbacks(ids)
}

pub fn create_transform_feedbacks(ids voidptr) {
	C.glCreateTransformFeedbacks(ids)
}

pub fn create_vertex_arrays() int {
	return C.glCreateVertexArrays()
}

pub fn create_vertex_arrays(arrays []int) {
	C.glCreateVertexArrays(arrays)
}

pub fn create_vertex_arrays(arrays voidptr) {
	C.glCreateVertexArrays(arrays)
}

pub fn disable_vertex_array_attrib(vaobj int, index int) {
	C.glDisableVertexArrayAttrib(vaobj, index)
}

pub fn enable_vertex_array_attrib(vaobj int, index int) {
	C.glEnableVertexArrayAttrib(vaobj, index)
}

pub fn flush_mapped_named_buffer_range(buffer int, offset i64, length i64) {
	C.glFlushMappedNamedBufferRange(buffer, offset, length)
}

pub fn generate_texture_mipmap(texture int) {
	C.glGenerateTextureMipmap(texture)
}

pub fn get_compressed_texture_image(texture int, level int, buf_size int, pixels i64) {
	C.glGetCompressedTextureImage(texture, level, buf_size, pixels)
}

pub fn get_compressed_texture_image(texture int, level int, pixels voidptr) {
	C.glGetCompressedTextureImage(texture, level, pixels)
}

pub fn get_compressed_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, pixels []f64) {
	C.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, pixels)
}

pub fn get_compressed_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, pixels []f32) {
	C.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, pixels)
}

pub fn get_compressed_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, pixels []int) {
	C.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, pixels)
}

pub fn get_compressed_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, buf_size int, pixels i64) {
	C.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, buf_size, pixels)
}

pub fn get_compressed_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, pixels []i16) {
	C.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, pixels)
}

pub fn get_compressed_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, pixels voidptr) {
	C.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, pixels)
}

pub fn get_compressed_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, pixels voidptr) {
	C.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, pixels)
}

pub fn get_compressed_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, pixels voidptr) {
	C.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, pixels)
}

pub fn get_compressed_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, pixels voidptr) {
	C.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, pixels)
}

pub fn get_compressed_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, pixels voidptr) {
	C.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, pixels)
}

pub fn get_graphics_reset_status() int {
	return C.glGetGraphicsResetStatus()
}

pub fn get_named_buffer_parameteri(buffer int, pname int) int {
	return C.glGetNamedBufferParameteri(buffer, pname)
}

pub fn get_named_buffer_parameteri64(buffer int, pname int) i64 {
	return C.glGetNamedBufferParameteri64(buffer, pname)
}

pub fn get_named_buffer_parameteri64v(buffer int, pname int, params []i64) {
	C.glGetNamedBufferParameteri64v(buffer, pname, params)
}

pub fn get_named_buffer_parameteri64v(buffer int, pname int, params voidptr) {
	C.glGetNamedBufferParameteri64v(buffer, pname, params)
}

pub fn get_named_buffer_parameteriv(buffer int, pname int, params []int) {
	C.glGetNamedBufferParameteriv(buffer, pname, params)
}

pub fn get_named_buffer_parameteriv(buffer int, pname int, params voidptr) {
	C.glGetNamedBufferParameteriv(buffer, pname, params)
}

pub fn get_named_buffer_pointer(buffer int, pname int) i64 {
	return C.glGetNamedBufferPointer(buffer, pname)
}

pub fn get_named_buffer_pointerv(buffer int, pname int, params *voidptr) {
	C.glGetNamedBufferPointerv(buffer, pname, params)
}

pub fn get_named_buffer_sub_data(buffer int, offset i64, data []f64) {
	C.glGetNamedBufferSubData(buffer, offset, data)
}

pub fn get_named_buffer_sub_data(buffer int, offset i64, data []f32) {
	C.glGetNamedBufferSubData(buffer, offset, data)
}

pub fn get_named_buffer_sub_data(buffer int, offset i64, data []int) {
	C.glGetNamedBufferSubData(buffer, offset, data)
}

pub fn get_named_buffer_sub_data(buffer int, offset i64, data []i64) {
	C.glGetNamedBufferSubData(buffer, offset, data)
}

pub fn get_named_buffer_sub_data(buffer int, offset i64, data []i16) {
	C.glGetNamedBufferSubData(buffer, offset, data)
}

pub fn get_named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glGetNamedBufferSubData(buffer, offset, data)
}

pub fn get_named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glGetNamedBufferSubData(buffer, offset, data)
}

pub fn get_named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glGetNamedBufferSubData(buffer, offset, data)
}

pub fn get_named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glGetNamedBufferSubData(buffer, offset, data)
}

pub fn get_named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glGetNamedBufferSubData(buffer, offset, data)
}

pub fn get_named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glGetNamedBufferSubData(buffer, offset, data)
}

pub fn get_named_framebuffer_attachment_parameteri(framebuffer int, attachment int, pname int) int {
	return C.glGetNamedFramebufferAttachmentParameteri(framebuffer, attachment, pname)
}

pub fn get_named_framebuffer_attachment_parameteriv(framebuffer int, attachment int, pname int, params []int) {
	C.glGetNamedFramebufferAttachmentParameteriv(framebuffer, attachment, pname, params)
}

pub fn get_named_framebuffer_attachment_parameteriv(framebuffer int, attachment int, pname int, params voidptr) {
	C.glGetNamedFramebufferAttachmentParameteriv(framebuffer, attachment, pname, params)
}

pub fn get_named_framebuffer_parameteri(framebuffer int, pname int) int {
	return C.glGetNamedFramebufferParameteri(framebuffer, pname)
}

pub fn get_named_framebuffer_parameteriv(framebuffer int, pname int, params []int) {
	C.glGetNamedFramebufferParameteriv(framebuffer, pname, params)
}

pub fn get_named_framebuffer_parameteriv(framebuffer int, pname int, params voidptr) {
	C.glGetNamedFramebufferParameteriv(framebuffer, pname, params)
}

pub fn get_named_renderbuffer_parameteri(renderbuffer int, pname int) int {
	return C.glGetNamedRenderbufferParameteri(renderbuffer, pname)
}

pub fn get_named_renderbuffer_parameteriv(renderbuffer int, pname int, params []int) {
	C.glGetNamedRenderbufferParameteriv(renderbuffer, pname, params)
}

pub fn get_named_renderbuffer_parameteriv(renderbuffer int, pname int, params voidptr) {
	C.glGetNamedRenderbufferParameteriv(renderbuffer, pname, params)
}

pub fn getn_color_table(target int, format int, type int, table []f32) {
	C.glGetnColorTable(target, format, type, table)
}

pub fn getn_color_table(target int, format int, type int, table []int) {
	C.glGetnColorTable(target, format, type, table)
}

pub fn getn_color_table(target int, format int, type int, buf_size int, table i64) {
	C.glGetnColorTable(target, format, type, buf_size, table)
}

pub fn getn_color_table(target int, format int, type int, table []i16) {
	C.glGetnColorTable(target, format, type, table)
}

pub fn getn_color_table(target int, format int, type int, table voidptr) {
	C.glGetnColorTable(target, format, type, table)
}

pub fn getn_color_table(target int, format int, type int, table voidptr) {
	C.glGetnColorTable(target, format, type, table)
}

pub fn getn_color_table(target int, format int, type int, table voidptr) {
	C.glGetnColorTable(target, format, type, table)
}

pub fn getn_color_table(target int, format int, type int, table voidptr) {
	C.glGetnColorTable(target, format, type, table)
}

pub fn getn_compressed_tex_image(target int, level int, buf_size int, img i64) {
	C.glGetnCompressedTexImage(target, level, buf_size, img)
}

pub fn getn_compressed_tex_image(target int, level int, img voidptr) {
	C.glGetnCompressedTexImage(target, level, img)
}

pub fn getn_convolution_filter(target int, format int, type int, buf_size int, image i64) {
	C.glGetnConvolutionFilter(target, format, type, buf_size, image)
}

pub fn getn_convolution_filter(target int, format int, type int, image voidptr) {
	C.glGetnConvolutionFilter(target, format, type, image)
}

pub fn getn_histogram(target int, reset bool, format int, type int, buf_size int, values i64) {
	C.glGetnHistogram(target, reset, format, type, buf_size, values)
}

pub fn getn_histogram(target int, reset bool, format int, type int, values voidptr) {
	C.glGetnHistogram(target, reset, format, type, values)
}

pub fn getn_mapd(target int, query int) f64 {
	return C.glGetnMapd(target, query)
}

pub fn getn_mapdv(target int, query int, data []f64) {
	C.glGetnMapdv(target, query, data)
}

pub fn getn_mapdv(target int, query int, data voidptr) {
	C.glGetnMapdv(target, query, data)
}

pub fn getn_mapf(target int, query int) f32 {
	return C.glGetnMapf(target, query)
}

pub fn getn_mapfv(target int, query int, data []f32) {
	C.glGetnMapfv(target, query, data)
}

pub fn getn_mapfv(target int, query int, data voidptr) {
	C.glGetnMapfv(target, query, data)
}

pub fn getn_mapi(target int, query int) int {
	return C.glGetnMapi(target, query)
}

pub fn getn_mapiv(target int, query int, data []int) {
	C.glGetnMapiv(target, query, data)
}

pub fn getn_mapiv(target int, query int, data voidptr) {
	C.glGetnMapiv(target, query, data)
}

pub fn getn_minmax(target int, reset bool, format int, type int, buf_size int, values i64) {
	C.glGetnMinmax(target, reset, format, type, buf_size, values)
}

pub fn getn_minmax(target int, reset bool, format int, type int, values voidptr) {
	C.glGetnMinmax(target, reset, format, type, values)
}

pub fn getn_pixel_mapfv(map int, data []f32) {
	C.glGetnPixelMapfv(map, data)
}

pub fn getn_pixel_mapfv(map int, data voidptr) {
	C.glGetnPixelMapfv(map, data)
}

pub fn getn_pixel_mapuiv(map int, data []int) {
	C.glGetnPixelMapuiv(map, data)
}

pub fn getn_pixel_mapuiv(map int, data voidptr) {
	C.glGetnPixelMapuiv(map, data)
}

pub fn getn_pixel_mapusv(map int, data []i16) {
	C.glGetnPixelMapusv(map, data)
}

pub fn getn_pixel_mapusv(map int, data voidptr) {
	C.glGetnPixelMapusv(map, data)
}

pub fn getn_polygon_stipple(buf_size int, pattern i64) {
	C.glGetnPolygonStipple(buf_size, pattern)
}

pub fn getn_polygon_stipple(pattern voidptr) {
	C.glGetnPolygonStipple(pattern)
}

pub fn getn_separable_filter(target int, format int, type int, row_buf_size int, row i64, column_buf_size int, column i64, span voidptr) {
	C.glGetnSeparableFilter(target, format, type, row_buf_size, row, column_buf_size, column, span)
}

pub fn getn_separable_filter(target int, format int, type int, row voidptr, column voidptr, span voidptr) {
	C.glGetnSeparableFilter(target, format, type, row, column, span)
}

pub fn getn_tex_image(tex int, level int, format int, type int, img []f64) {
	C.glGetnTexImage(tex, level, format, type, img)
}

pub fn getn_tex_image(tex int, level int, format int, type int, img []f32) {
	C.glGetnTexImage(tex, level, format, type, img)
}

pub fn getn_tex_image(tex int, level int, format int, type int, img []int) {
	C.glGetnTexImage(tex, level, format, type, img)
}

pub fn getn_tex_image(tex int, level int, format int, type int, buf_size int, img i64) {
	C.glGetnTexImage(tex, level, format, type, buf_size, img)
}

pub fn getn_tex_image(tex int, level int, format int, type int, img []i16) {
	C.glGetnTexImage(tex, level, format, type, img)
}

pub fn getn_tex_image(tex int, level int, format int, type int, img voidptr) {
	C.glGetnTexImage(tex, level, format, type, img)
}

pub fn getn_tex_image(tex int, level int, format int, type int, img voidptr) {
	C.glGetnTexImage(tex, level, format, type, img)
}

pub fn getn_tex_image(tex int, level int, format int, type int, img voidptr) {
	C.glGetnTexImage(tex, level, format, type, img)
}

pub fn getn_tex_image(tex int, level int, format int, type int, img voidptr) {
	C.glGetnTexImage(tex, level, format, type, img)
}

pub fn getn_tex_image(tex int, level int, format int, type int, img voidptr) {
	C.glGetnTexImage(tex, level, format, type, img)
}

pub fn getn_uniformd(program int, location int) f64 {
	return C.glGetnUniformd(program, location)
}

pub fn getn_uniformdv(program int, location int, params []f64) {
	C.glGetnUniformdv(program, location, params)
}

pub fn getn_uniformdv(program int, location int, params voidptr) {
	C.glGetnUniformdv(program, location, params)
}

pub fn getn_uniformf(program int, location int) f32 {
	return C.glGetnUniformf(program, location)
}

pub fn getn_uniformfv(program int, location int, params []f32) {
	C.glGetnUniformfv(program, location, params)
}

pub fn getn_uniformfv(program int, location int, params voidptr) {
	C.glGetnUniformfv(program, location, params)
}

pub fn getn_uniformi(program int, location int) f32 {
	return C.glGetnUniformi(program, location)
}

pub fn getn_uniformiv(program int, location int, params []f32) {
	C.glGetnUniformiv(program, location, params)
}

pub fn getn_uniformiv(program int, location int, params voidptr) {
	C.glGetnUniformiv(program, location, params)
}

pub fn getn_uniformui(program int, location int) f32 {
	return C.glGetnUniformui(program, location)
}

pub fn getn_uniformuiv(program int, location int, params []f32) {
	C.glGetnUniformuiv(program, location, params)
}

pub fn getn_uniformuiv(program int, location int, params voidptr) {
	C.glGetnUniformuiv(program, location, params)
}

pub fn get_query_buffer_objecti64v(id int, buffer int, pname int, offset i64) {
	C.glGetQueryBufferObjecti64v(id, buffer, pname, offset)
}

pub fn get_query_buffer_objectiv(id int, buffer int, pname int, offset i64) {
	C.glGetQueryBufferObjectiv(id, buffer, pname, offset)
}

pub fn get_query_buffer_objectui64v(id int, buffer int, pname int, offset i64) {
	C.glGetQueryBufferObjectui64v(id, buffer, pname, offset)
}

pub fn get_query_buffer_objectuiv(id int, buffer int, pname int, offset i64) {
	C.glGetQueryBufferObjectuiv(id, buffer, pname, offset)
}

pub fn get_texture_image(texture int, level int, format int, type int, pixels []f64) {
	C.glGetTextureImage(texture, level, format, type, pixels)
}

pub fn get_texture_image(texture int, level int, format int, type int, pixels []f32) {
	C.glGetTextureImage(texture, level, format, type, pixels)
}

pub fn get_texture_image(texture int, level int, format int, type int, pixels []int) {
	C.glGetTextureImage(texture, level, format, type, pixels)
}

pub fn get_texture_image(texture int, level int, format int, type int, buf_size int, pixels i64) {
	C.glGetTextureImage(texture, level, format, type, buf_size, pixels)
}

pub fn get_texture_image(texture int, level int, format int, type int, pixels []i16) {
	C.glGetTextureImage(texture, level, format, type, pixels)
}

pub fn get_texture_image(texture int, level int, format int, type int, pixels voidptr) {
	C.glGetTextureImage(texture, level, format, type, pixels)
}

pub fn get_texture_image(texture int, level int, format int, type int, pixels voidptr) {
	C.glGetTextureImage(texture, level, format, type, pixels)
}

pub fn get_texture_image(texture int, level int, format int, type int, pixels voidptr) {
	C.glGetTextureImage(texture, level, format, type, pixels)
}

pub fn get_texture_image(texture int, level int, format int, type int, pixels voidptr) {
	C.glGetTextureImage(texture, level, format, type, pixels)
}

pub fn get_texture_image(texture int, level int, format int, type int, pixels voidptr) {
	C.glGetTextureImage(texture, level, format, type, pixels)
}

pub fn get_texture_level_parameterf(texture int, level int, pname int) f32 {
	return C.glGetTextureLevelParameterf(texture, level, pname)
}

pub fn get_texture_level_parameterfv(texture int, level int, pname int, params []f32) {
	C.glGetTextureLevelParameterfv(texture, level, pname, params)
}

pub fn get_texture_level_parameterfv(texture int, level int, pname int, params voidptr) {
	C.glGetTextureLevelParameterfv(texture, level, pname, params)
}

pub fn get_texture_level_parameteri(texture int, level int, pname int) int {
	return C.glGetTextureLevelParameteri(texture, level, pname)
}

pub fn get_texture_level_parameteriv(texture int, level int, pname int, params []int) {
	C.glGetTextureLevelParameteriv(texture, level, pname, params)
}

pub fn get_texture_level_parameteriv(texture int, level int, pname int, params voidptr) {
	C.glGetTextureLevelParameteriv(texture, level, pname, params)
}

pub fn get_texture_parameterf(texture int, pname int) f32 {
	return C.glGetTextureParameterf(texture, pname)
}

pub fn get_texture_parameterfv(texture int, pname int, params []f32) {
	C.glGetTextureParameterfv(texture, pname, params)
}

pub fn get_texture_parameterfv(texture int, pname int, params voidptr) {
	C.glGetTextureParameterfv(texture, pname, params)
}

pub fn get_texture_parameteri(texture int, pname int) int {
	return C.glGetTextureParameteri(texture, pname)
}

pub fn get_texture_parameter_ii(texture int, pname int) int {
	return C.glGetTextureParameterIi(texture, pname)
}

pub fn get_texture_parameter_iiv(texture int, pname int, params []int) {
	C.glGetTextureParameterIiv(texture, pname, params)
}

pub fn get_texture_parameter_iiv(texture int, pname int, params voidptr) {
	C.glGetTextureParameterIiv(texture, pname, params)
}

pub fn get_texture_parameter_iui(texture int, pname int) int {
	return C.glGetTextureParameterIui(texture, pname)
}

pub fn get_texture_parameter_iuiv(texture int, pname int, params []int) {
	C.glGetTextureParameterIuiv(texture, pname, params)
}

pub fn get_texture_parameter_iuiv(texture int, pname int, params voidptr) {
	C.glGetTextureParameterIuiv(texture, pname, params)
}

pub fn get_texture_parameteriv(texture int, pname int, params []int) {
	C.glGetTextureParameteriv(texture, pname, params)
}

pub fn get_texture_parameteriv(texture int, pname int, params voidptr) {
	C.glGetTextureParameteriv(texture, pname, params)
}

pub fn get_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []f64) {
	C.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn get_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []f32) {
	C.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn get_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []int) {
	C.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn get_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, buf_size int, pixels i64) {
	C.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, buf_size, pixels)
}

pub fn get_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []i16) {
	C.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn get_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn get_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn get_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn get_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn get_texture_sub_image(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn get_transform_feedbacki(xfb int, pname int) int {
	return C.glGetTransformFeedbacki(xfb, pname)
}

pub fn get_transform_feedbacki(xfb int, pname int, index int) int {
	return C.glGetTransformFeedbacki(xfb, pname, index)
}

pub fn get_transform_feedbacki_v(xfb int, pname int, index int, param []int) {
	C.glGetTransformFeedbacki_v(xfb, pname, index, param)
}

pub fn get_transform_feedbacki_v(xfb int, pname int, index int, param voidptr) {
	C.glGetTransformFeedbacki_v(xfb, pname, index, param)
}

pub fn get_transform_feedbacki64(xfb int, pname int, index int) i64 {
	return C.glGetTransformFeedbacki64(xfb, pname, index)
}

pub fn get_transform_feedbacki64_v(xfb int, pname int, index int, param []i64) {
	C.glGetTransformFeedbacki64_v(xfb, pname, index, param)
}

pub fn get_transform_feedbacki64_v(xfb int, pname int, index int, param voidptr) {
	C.glGetTransformFeedbacki64_v(xfb, pname, index, param)
}

pub fn get_transform_feedbackiv(xfb int, pname int, param []int) {
	C.glGetTransformFeedbackiv(xfb, pname, param)
}

pub fn get_transform_feedbackiv(xfb int, pname int, param voidptr) {
	C.glGetTransformFeedbackiv(xfb, pname, param)
}

pub fn get_vertex_arrayi(vaobj int, pname int) int {
	return C.glGetVertexArrayi(vaobj, pname)
}

pub fn get_vertex_array_indexed64i(vaobj int, index int, pname int) i64 {
	return C.glGetVertexArrayIndexed64i(vaobj, index, pname)
}

pub fn get_vertex_array_indexed64iv(vaobj int, index int, pname int, param []i64) {
	C.glGetVertexArrayIndexed64iv(vaobj, index, pname, param)
}

pub fn get_vertex_array_indexed64iv(vaobj int, index int, pname int, param voidptr) {
	C.glGetVertexArrayIndexed64iv(vaobj, index, pname, param)
}

pub fn get_vertex_array_indexedi(vaobj int, index int, pname int) int {
	return C.glGetVertexArrayIndexedi(vaobj, index, pname)
}

pub fn get_vertex_array_indexediv(vaobj int, index int, pname int, param []int) {
	C.glGetVertexArrayIndexediv(vaobj, index, pname, param)
}

pub fn get_vertex_array_indexediv(vaobj int, index int, pname int, param voidptr) {
	C.glGetVertexArrayIndexediv(vaobj, index, pname, param)
}

pub fn get_vertex_arrayiv(vaobj int, pname int, param []int) {
	C.glGetVertexArrayiv(vaobj, pname, param)
}

pub fn get_vertex_arrayiv(vaobj int, pname int, param voidptr) {
	C.glGetVertexArrayiv(vaobj, pname, param)
}

pub fn invalidate_named_framebuffer_data(framebuffer int, attachment int) {
	C.glInvalidateNamedFramebufferData(framebuffer, attachment)
}

pub fn invalidate_named_framebuffer_data(framebuffer int, attachments []int) {
	C.glInvalidateNamedFramebufferData(framebuffer, attachments)
}

pub fn invalidate_named_framebuffer_data(framebuffer int, attachments voidptr) {
	C.glInvalidateNamedFramebufferData(framebuffer, attachments)
}

pub fn invalidate_named_framebuffer_sub_data(framebuffer int, attachments []int, x int, y int, width int, height int) {
	C.glInvalidateNamedFramebufferSubData(framebuffer, attachments, x, y, width, height)
}

pub fn invalidate_named_framebuffer_sub_data(framebuffer int, attachment int, x int, y int, width int, height int) {
	C.glInvalidateNamedFramebufferSubData(framebuffer, attachment, x, y, width, height)
}

pub fn invalidate_named_framebuffer_sub_data(framebuffer int, attachments voidptr, x int, y int, width int, height int) {
	C.glInvalidateNamedFramebufferSubData(framebuffer, attachments, x, y, width, height)
}

pub fn map_named_buffer(buffer int, access int) voidptr {
	return C.glMapNamedBuffer(buffer, access)
}

pub fn map_named_buffer(buffer int, access int, length i64, old_buffer voidptr) voidptr {
	return C.glMapNamedBuffer(buffer, access, length, old_buffer)
}

pub fn map_named_buffer(buffer int, access int, old_buffer voidptr) voidptr {
	return C.glMapNamedBuffer(buffer, access, old_buffer)
}

pub fn map_named_buffer_range(buffer int, offset i64, length i64, access int) voidptr {
	return C.glMapNamedBufferRange(buffer, offset, length, access)
}

pub fn map_named_buffer_range(buffer int, offset i64, length i64, access int, old_buffer voidptr) voidptr {
	return C.glMapNamedBufferRange(buffer, offset, length, access, old_buffer)
}

pub fn memory_barrier_by_region(barriers int) {
	C.glMemoryBarrierByRegion(barriers)
}

pub fn named_buffer_data(buffer int, data []f64, usage int) {
	C.glNamedBufferData(buffer, data, usage)
}

pub fn named_buffer_data(buffer int, data []f32, usage int) {
	C.glNamedBufferData(buffer, data, usage)
}

pub fn named_buffer_data(buffer int, data []int, usage int) {
	C.glNamedBufferData(buffer, data, usage)
}

pub fn named_buffer_data(buffer int, data []i64, usage int) {
	C.glNamedBufferData(buffer, data, usage)
}

pub fn named_buffer_data(buffer int, size i64, usage int) {
	C.glNamedBufferData(buffer, size, usage)
}

pub fn named_buffer_data(buffer int, data []i16, usage int) {
	C.glNamedBufferData(buffer, data, usage)
}

pub fn named_buffer_data(buffer int, data voidptr, usage int) {
	C.glNamedBufferData(buffer, data, usage)
}

pub fn named_buffer_data(buffer int, data voidptr, usage int) {
	C.glNamedBufferData(buffer, data, usage)
}

pub fn named_buffer_data(buffer int, data voidptr, usage int) {
	C.glNamedBufferData(buffer, data, usage)
}

pub fn named_buffer_data(buffer int, data voidptr, usage int) {
	C.glNamedBufferData(buffer, data, usage)
}

pub fn named_buffer_data(buffer int, data voidptr, usage int) {
	C.glNamedBufferData(buffer, data, usage)
}

pub fn named_buffer_data(buffer int, data voidptr, usage int) {
	C.glNamedBufferData(buffer, data, usage)
}

pub fn named_buffer_storage(buffer int, data []f64, flags int) {
	C.glNamedBufferStorage(buffer, data, flags)
}

pub fn named_buffer_storage(buffer int, data []f32, flags int) {
	C.glNamedBufferStorage(buffer, data, flags)
}

pub fn named_buffer_storage(buffer int, data []int, flags int) {
	C.glNamedBufferStorage(buffer, data, flags)
}

pub fn named_buffer_storage(buffer int, size i64, flags int) {
	C.glNamedBufferStorage(buffer, size, flags)
}

pub fn named_buffer_storage(buffer int, data []i16, flags int) {
	C.glNamedBufferStorage(buffer, data, flags)
}

pub fn named_buffer_storage(buffer int, data voidptr, flags int) {
	C.glNamedBufferStorage(buffer, data, flags)
}

pub fn named_buffer_storage(buffer int, data voidptr, flags int) {
	C.glNamedBufferStorage(buffer, data, flags)
}

pub fn named_buffer_storage(buffer int, data voidptr, flags int) {
	C.glNamedBufferStorage(buffer, data, flags)
}

pub fn named_buffer_storage(buffer int, data voidptr, flags int) {
	C.glNamedBufferStorage(buffer, data, flags)
}

pub fn named_buffer_storage(buffer int, data voidptr, flags int) {
	C.glNamedBufferStorage(buffer, data, flags)
}

pub fn named_buffer_sub_data(buffer int, offset i64, data []f64) {
	C.glNamedBufferSubData(buffer, offset, data)
}

pub fn named_buffer_sub_data(buffer int, offset i64, data []f32) {
	C.glNamedBufferSubData(buffer, offset, data)
}

pub fn named_buffer_sub_data(buffer int, offset i64, data []int) {
	C.glNamedBufferSubData(buffer, offset, data)
}

pub fn named_buffer_sub_data(buffer int, offset i64, data []i64) {
	C.glNamedBufferSubData(buffer, offset, data)
}

pub fn named_buffer_sub_data(buffer int, offset i64, data []i16) {
	C.glNamedBufferSubData(buffer, offset, data)
}

pub fn named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glNamedBufferSubData(buffer, offset, data)
}

pub fn named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glNamedBufferSubData(buffer, offset, data)
}

pub fn named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glNamedBufferSubData(buffer, offset, data)
}

pub fn named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glNamedBufferSubData(buffer, offset, data)
}

pub fn named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glNamedBufferSubData(buffer, offset, data)
}

pub fn named_buffer_sub_data(buffer int, offset i64, data voidptr) {
	C.glNamedBufferSubData(buffer, offset, data)
}

pub fn named_framebuffer_draw_buffer(framebuffer int, buf int) {
	C.glNamedFramebufferDrawBuffer(framebuffer, buf)
}

pub fn named_framebuffer_draw_buffers(framebuffer int, buf int) {
	C.glNamedFramebufferDrawBuffers(framebuffer, buf)
}

pub fn named_framebuffer_draw_buffers(framebuffer int, bufs []int) {
	C.glNamedFramebufferDrawBuffers(framebuffer, bufs)
}

pub fn named_framebuffer_draw_buffers(framebuffer int, bufs voidptr) {
	C.glNamedFramebufferDrawBuffers(framebuffer, bufs)
}

pub fn named_framebuffer_parameteri(framebuffer int, pname int, param int) {
	C.glNamedFramebufferParameteri(framebuffer, pname, param)
}

pub fn named_framebuffer_read_buffer(framebuffer int, src int) {
	C.glNamedFramebufferReadBuffer(framebuffer, src)
}

pub fn named_framebuffer_renderbuffer(framebuffer int, attachment int, renderbuffertarget int, renderbuffer int) {
	C.glNamedFramebufferRenderbuffer(framebuffer, attachment, renderbuffertarget, renderbuffer)
}

pub fn named_framebuffer_texture(framebuffer int, attachment int, texture int, level int) {
	C.glNamedFramebufferTexture(framebuffer, attachment, texture, level)
}

pub fn named_framebuffer_texture_layer(framebuffer int, attachment int, texture int, level int, layer int) {
	C.glNamedFramebufferTextureLayer(framebuffer, attachment, texture, level, layer)
}

pub fn named_renderbuffer_storage(renderbuffer int, internalformat int, width int, height int) {
	C.glNamedRenderbufferStorage(renderbuffer, internalformat, width, height)
}

pub fn named_renderbuffer_storage_multisample(renderbuffer int, samples int, internalformat int, width int, height int) {
	C.glNamedRenderbufferStorageMultisample(renderbuffer, samples, internalformat, width, height)
}

pub fn readn_pixels(x int, y int, width int, height int, format int, type int, pixels []f32) {
	C.glReadnPixels(x, y, width, height, format, type, pixels)
}

pub fn readn_pixels(x int, y int, width int, height int, format int, type int, pixels []int) {
	C.glReadnPixels(x, y, width, height, format, type, pixels)
}

pub fn readn_pixels(x int, y int, width int, height int, format int, type int, buf_size int, pixels i64) {
	C.glReadnPixels(x, y, width, height, format, type, buf_size, pixels)
}

pub fn readn_pixels(x int, y int, width int, height int, format int, type int, pixels []i16) {
	C.glReadnPixels(x, y, width, height, format, type, pixels)
}

pub fn readn_pixels(x int, y int, width int, height int, format int, type int, pixels voidptr) {
	C.glReadnPixels(x, y, width, height, format, type, pixels)
}

pub fn readn_pixels(x int, y int, width int, height int, format int, type int, pixels voidptr) {
	C.glReadnPixels(x, y, width, height, format, type, pixels)
}

pub fn readn_pixels(x int, y int, width int, height int, format int, type int, pixels voidptr) {
	C.glReadnPixels(x, y, width, height, format, type, pixels)
}

pub fn readn_pixels(x int, y int, width int, height int, format int, type int, pixels voidptr) {
	C.glReadnPixels(x, y, width, height, format, type, pixels)
}

pub fn texture_barrier() {
	C.glTextureBarrier()
}

pub fn texture_buffer(texture int, internalformat int, buffer int) {
	C.glTextureBuffer(texture, internalformat, buffer)
}

pub fn texture_buffer_range(texture int, internalformat int, buffer int, offset i64, size i64) {
	C.glTextureBufferRange(texture, internalformat, buffer, offset, size)
}

pub fn texture_parameterf(texture int, pname int, param f32) {
	C.glTextureParameterf(texture, pname, param)
}

pub fn texture_parameterfv(texture int, pname int, params []f32) {
	C.glTextureParameterfv(texture, pname, params)
}

pub fn texture_parameterfv(texture int, pname int, params voidptr) {
	C.glTextureParameterfv(texture, pname, params)
}

pub fn texture_parameteri(texture int, pname int, param int) {
	C.glTextureParameteri(texture, pname, param)
}

pub fn texture_parameter_ii(texture int, pname int, param int) {
	C.glTextureParameterIi(texture, pname, param)
}

pub fn texture_parameter_iiv(texture int, pname int, params []int) {
	C.glTextureParameterIiv(texture, pname, params)
}

pub fn texture_parameter_iiv(texture int, pname int, params voidptr) {
	C.glTextureParameterIiv(texture, pname, params)
}

pub fn texture_parameter_iui(texture int, pname int, param int) {
	C.glTextureParameterIui(texture, pname, param)
}

pub fn texture_parameter_iuiv(texture int, pname int, params []int) {
	C.glTextureParameterIuiv(texture, pname, params)
}

pub fn texture_parameter_iuiv(texture int, pname int, params voidptr) {
	C.glTextureParameterIuiv(texture, pname, params)
}

pub fn texture_parameteriv(texture int, pname int, params []int) {
	C.glTextureParameteriv(texture, pname, params)
}

pub fn texture_parameteriv(texture int, pname int, params voidptr) {
	C.glTextureParameteriv(texture, pname, params)
}

pub fn texture_storage1d(texture int, levels int, internalformat int, width int) {
	C.glTextureStorage1D(texture, levels, internalformat, width)
}

pub fn texture_storage2d(texture int, levels int, internalformat int, width int, height int) {
	C.glTextureStorage2D(texture, levels, internalformat, width, height)
}

pub fn texture_storage2_d_multisample(texture int, samples int, internalformat int, width int, height int, fixedsamplelocations bool) {
	C.glTextureStorage2DMultisample(texture, samples, internalformat, width, height, fixedsamplelocations)
}

pub fn texture_storage3d(texture int, levels int, internalformat int, width int, height int, depth int) {
	C.glTextureStorage3D(texture, levels, internalformat, width, height, depth)
}

pub fn texture_storage3_d_multisample(texture int, samples int, internalformat int, width int, height int, depth int, fixedsamplelocations bool) {
	C.glTextureStorage3DMultisample(texture, samples, internalformat, width, height, depth, fixedsamplelocations)
}

pub fn texture_sub_image1d(texture int, level int, xoffset int, width int, format int, type int, pixels []f64) {
	C.glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels)
}

pub fn texture_sub_image1d(texture int, level int, xoffset int, width int, format int, type int, pixels []f32) {
	C.glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels)
}

pub fn texture_sub_image1d(texture int, level int, xoffset int, width int, format int, type int, pixels []int) {
	C.glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels)
}

pub fn texture_sub_image1d(texture int, level int, xoffset int, width int, format int, type int, pixels i64) {
	C.glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels)
}

pub fn texture_sub_image1d(texture int, level int, xoffset int, width int, format int, type int, pixels []i16) {
	C.glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels)
}

pub fn texture_sub_image1d(texture int, level int, xoffset int, width int, format int, type int, pixels voidptr) {
	C.glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels)
}

pub fn texture_sub_image1d(texture int, level int, xoffset int, width int, format int, type int, pixels voidptr) {
	C.glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels)
}

pub fn texture_sub_image1d(texture int, level int, xoffset int, width int, format int, type int, pixels voidptr) {
	C.glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels)
}

pub fn texture_sub_image1d(texture int, level int, xoffset int, width int, format int, type int, pixels voidptr) {
	C.glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels)
}

pub fn texture_sub_image1d(texture int, level int, xoffset int, width int, format int, type int, pixels voidptr) {
	C.glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels)
}

pub fn texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels []f64) {
	C.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels []f32) {
	C.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels []int) {
	C.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels i64) {
	C.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels []i16) {
	C.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels voidptr) {
	C.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels voidptr) {
	C.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels voidptr) {
	C.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels voidptr) {
	C.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn texture_sub_image2d(texture int, level int, xoffset int, yoffset int, width int, height int, format int, type int, pixels voidptr) {
	C.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels)
}

pub fn texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []f64) {
	C.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []f32) {
	C.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []int) {
	C.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels i64) {
	C.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels []i16) {
	C.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn texture_sub_image3d(texture int, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format int, type int, pixels voidptr) {
	C.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)
}

pub fn transform_feedback_buffer_base(xfb int, index int, buffer int) {
	C.glTransformFeedbackBufferBase(xfb, index, buffer)
}

pub fn transform_feedback_buffer_range(xfb int, index int, buffer int, offset i64, size i64) {
	C.glTransformFeedbackBufferRange(xfb, index, buffer, offset, size)
}

pub fn unmap_named_buffer(buffer int) bool {
	return C.glUnmapNamedBuffer(buffer)
}

pub fn vertex_array_attrib_binding(vaobj int, attribindex int, bindingindex int) {
	C.glVertexArrayAttribBinding(vaobj, attribindex, bindingindex)
}

pub fn vertex_array_attrib_format(vaobj int, attribindex int, size int, type int, normalized bool, relativeoffset int) {
	C.glVertexArrayAttribFormat(vaobj, attribindex, size, type, normalized, relativeoffset)
}

pub fn vertex_array_attrib_i_format(vaobj int, attribindex int, size int, type int, relativeoffset int) {
	C.glVertexArrayAttribIFormat(vaobj, attribindex, size, type, relativeoffset)
}

pub fn vertex_array_attrib_l_format(vaobj int, attribindex int, size int, type int, relativeoffset int) {
	C.glVertexArrayAttribLFormat(vaobj, attribindex, size, type, relativeoffset)
}

pub fn vertex_array_binding_divisor(vaobj int, bindingindex int, divisor int) {
	C.glVertexArrayBindingDivisor(vaobj, bindingindex, divisor)
}

pub fn vertex_array_element_buffer(vaobj int, buffer int) {
	C.glVertexArrayElementBuffer(vaobj, buffer)
}

pub fn vertex_array_vertex_buffer(vaobj int, bindingindex int, buffer int, offset i64, stride int) {
	C.glVertexArrayVertexBuffer(vaobj, bindingindex, buffer, offset, stride)
}

pub fn vertex_array_vertex_buffers(vaobj int, first int, buffers []int, offsets *voidptr, strides []int) {
	C.glVertexArrayVertexBuffers(vaobj, first, buffers, offsets, strides)
}

pub fn vertex_array_vertex_buffers(vaobj int, first int, buffers voidptr, offsets *voidptr, strides voidptr) {
	C.glVertexArrayVertexBuffers(vaobj, first, buffers, offsets, strides)
}
