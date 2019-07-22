module gl45

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_CONTEXT_LOST
	GL_LOWER_LEFT
	GL_UPPER_LEFT
	GL_NEGATIVE_ONE_TO_ONE
	GL_ZERO_TO_ONE
	GL_CLIP_ORIGIN
	GL_CLIP_DEPTH_MODE
	GL_QUERY_WAIT_INVERTED
	GL_QUERY_NO_WAIT_INVERTED
	GL_QUERY_BY_REGION_WAIT_INVERTED
	GL_QUERY_BY_REGION_NO_WAIT_INVERTED
	GL_MAX_CULL_DISTANCES
	GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES
	GL_TEXTURE_TARGET
	GL_QUERY_TARGET
	GL_TEXTURE_BINDING_1D
	GL_TEXTURE_BINDING_1D_ARRAY
	GL_TEXTURE_BINDING_2D
	GL_TEXTURE_BINDING_2D_ARRAY
	GL_TEXTURE_BINDING_2D_MULTISAMPLE
	GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
	GL_TEXTURE_BINDING_3D
	GL_TEXTURE_BINDING_BUFFER
	GL_TEXTURE_BINDING_CUBE_MAP
	GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
	GL_TEXTURE_BINDING_RECTANGLE
	GL_BACK
	GL_NO_ERROR
	GL_GUILTY_CONTEXT_RESET
	GL_INNOCENT_CONTEXT_RESET
	GL_UNKNOWN_CONTEXT_RESET
	GL_RESET_NOTIFICATION_STRATEGY
	GL_LOSE_CONTEXT_ON_RESET
	GL_NO_RESET_NOTIFICATION
	GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT
	GL_CONTEXT_LOST
	GL_CONTEXT_RELEASE_BEHAVIOR
	GL_NONE
	GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH
)

pub fn clip_control(origin u32, depth u32) {
	C.glClipControl(origin, depth)
}

// TODO
pub fn create_transform_feedbacks(n int, ids []u32) {
	C.glCreateTransformFeedbacks(n, ids.data)
}

pub fn transform_feedback_buffer_base(xfb u32, index u32, buffer u32) {
	C.glTransformFeedbackBufferBase(xfb, index, buffer)
}

pub fn transform_feedback_buffer_range(xfb u32, index u32, buffer u32, offset []int, size []int) {
	C.glTransformFeedbackBufferRange(xfb, index, buffer, offset.data, size.data)
}

// TODO
pub fn get_transform_feedbackiv(xfb u32, pname u32, param []int) {
	C.glGetTransformFeedbackiv(xfb, pname, param.data)
}

// TODO
pub fn get_transform_feedbacki_v(xfb u32, pname u32, index u32, param []int) {
	C.glGetTransformFeedbacki_v(xfb, pname, index, param.data)
}

// TODO
pub fn get_transform_feedbacki64_v(xfb u32, pname u32, index u32, param []i64) {
	C.glGetTransformFeedbacki64_v(xfb, pname, index, param.data)
}

// TODO
pub fn create_buffers(n int, buffers []u32) {
	C.glCreateBuffers(n, buffers.data)
}

// TODO
pub fn named_buffer_storage(buffer u32, size []int, data voidptr, flags u32) {
	C.glNamedBufferStorage(buffer, size.data, data, flags)
}

// TODO
pub fn named_buffer_data(buffer u32, size []int, data voidptr, usage u32) {
	C.glNamedBufferData(buffer, size.data, data, usage)
}

// TODO
pub fn named_buffer_sub_data(buffer u32, offset []int, size []int, data voidptr) {
	C.glNamedBufferSubData(buffer, offset.data, size.data, data)
}

pub fn copy_named_buffer_sub_data(readBuffer u32, writeBuffer u32, readOffset []int, writeOffset []int, size []int) {
	C.glCopyNamedBufferSubData(readBuffer, writeBuffer, readOffset.data, writeOffset.data, size.data)
}

// TODO
pub fn clear_named_buffer_data(buffer u32, internalformat u32, format u32, type_ u32, data voidptr) {
	C.glClearNamedBufferData(buffer, internalformat, format, type_, data)
}

// TODO
pub fn clear_named_buffer_sub_data(buffer u32, internalformat u32, offset []int, size []int, format u32, type_ u32, data voidptr) {
	C.glClearNamedBufferSubData(buffer, internalformat, offset.data, size.data, format, type_, data)
}

// TODO
pub fn map_named_buffer(buffer u32, access u32) voidptr {
	return C.glMapNamedBuffer(buffer, access)
}

// TODO
pub fn map_named_buffer_range(buffer u32, offset []int, length []int, access u32) voidptr {
	return C.glMapNamedBufferRange(buffer, offset.data, length.data, access)
}

pub fn unmap_named_buffer(buffer u32) bool {
	return C.glUnmapNamedBuffer(buffer)
}

pub fn flush_mapped_named_buffer_range(buffer u32, offset []int, length []int) {
	C.glFlushMappedNamedBufferRange(buffer, offset.data, length.data)
}

// TODO
pub fn get_named_buffer_parameteriv(buffer u32, pname u32, params []int) {
	C.glGetNamedBufferParameteriv(buffer, pname, params.data)
}

// TODO
pub fn get_named_buffer_parameteri64v(buffer u32, pname u32, params []i64) {
	C.glGetNamedBufferParameteri64v(buffer, pname, params.data)
}

// TODO
pub fn get_named_buffer_pointerv(buffer u32, pname u32, params *voidptr) {
	C.glGetNamedBufferPointerv(buffer, pname, params)
}

// TODO
pub fn get_named_buffer_sub_data(buffer u32, offset []int, size []int, data voidptr) {
	C.glGetNamedBufferSubData(buffer, offset.data, size.data, data)
}

// TODO
pub fn create_framebuffers(n int, framebuffers []u32) {
	C.glCreateFramebuffers(n, framebuffers.data)
}

pub fn named_framebuffer_renderbuffer(framebuffer u32, attachment u32, renderbuffertarget u32, renderbuffer u32) {
	C.glNamedFramebufferRenderbuffer(framebuffer, attachment, renderbuffertarget, renderbuffer)
}

pub fn named_framebuffer_parameteri(framebuffer u32, pname u32, param int) {
	C.glNamedFramebufferParameteri(framebuffer, pname, param)
}

pub fn named_framebuffer_texture(framebuffer u32, attachment u32, texture u32, level int) {
	C.glNamedFramebufferTexture(framebuffer, attachment, texture, level)
}

pub fn named_framebuffer_texture_layer(framebuffer u32, attachment u32, texture u32, level int, layer int) {
	C.glNamedFramebufferTextureLayer(framebuffer, attachment, texture, level, layer)
}

pub fn named_framebuffer_draw_buffer(framebuffer u32, buf u32) {
	C.glNamedFramebufferDrawBuffer(framebuffer, buf)
}

// TODO
pub fn named_framebuffer_draw_buffers(framebuffer u32, n int, bufs []u32) {
	C.glNamedFramebufferDrawBuffers(framebuffer, n, bufs.data)
}

pub fn named_framebuffer_read_buffer(framebuffer u32, src u32) {
	C.glNamedFramebufferReadBuffer(framebuffer, src)
}

// TODO
pub fn invalidate_named_framebuffer_data(framebuffer u32, numAttachments int, attachments []u32) {
	C.glInvalidateNamedFramebufferData(framebuffer, numAttachments, attachments.data)
}

// TODO
pub fn invalidate_named_framebuffer_sub_data(framebuffer u32, numAttachments int, attachments []u32, x int, y int, width int, height int) {
	C.glInvalidateNamedFramebufferSubData(framebuffer, numAttachments, attachments.data, x, y, width, height)
}

// TODO
pub fn clear_named_framebufferiv(framebuffer u32, buffer u32, drawbuffer int, value []int) {
	C.glClearNamedFramebufferiv(framebuffer, buffer, drawbuffer, value.data)
}

// TODO
pub fn clear_named_framebufferuiv(framebuffer u32, buffer u32, drawbuffer int, value []u32) {
	C.glClearNamedFramebufferuiv(framebuffer, buffer, drawbuffer, value.data)
}

// TODO
pub fn clear_named_framebufferfv(framebuffer u32, buffer u32, drawbuffer int, value []f32) {
	C.glClearNamedFramebufferfv(framebuffer, buffer, drawbuffer, value.data)
}

pub fn clear_named_framebufferfi(framebuffer u32, buffer u32, drawbuffer int, depth f32, stencil int) {
	C.glClearNamedFramebufferfi(framebuffer, buffer, drawbuffer, depth, stencil)
}

pub fn blit_named_framebuffer(readFramebuffer u32, drawFramebuffer u32, srcX0 int, srcY0 int, srcX1 int, srcY1 int, dstX0 int, dstY0 int, dstX1 int, dstY1 int, mask u32, filter u32) {
	C.glBlitNamedFramebuffer(readFramebuffer, drawFramebuffer, srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)
}

pub fn check_named_framebuffer_status(framebuffer u32, target u32) u32 {
	return C.glCheckNamedFramebufferStatus(framebuffer, target)
}

// TODO
pub fn get_named_framebuffer_parameteriv(framebuffer u32, pname u32, param []int) {
	C.glGetNamedFramebufferParameteriv(framebuffer, pname, param.data)
}

// TODO
pub fn get_named_framebuffer_attachment_parameteriv(framebuffer u32, attachment u32, pname u32, params []int) {
	C.glGetNamedFramebufferAttachmentParameteriv(framebuffer, attachment, pname, params.data)
}

// TODO
pub fn create_renderbuffers(n int, renderbuffers []u32) {
	C.glCreateRenderbuffers(n, renderbuffers.data)
}

pub fn named_renderbuffer_storage(renderbuffer u32, internalformat u32, width int, height int) {
	C.glNamedRenderbufferStorage(renderbuffer, internalformat, width, height)
}

pub fn named_renderbuffer_storage_multisample(renderbuffer u32, samples int, internalformat u32, width int, height int) {
	C.glNamedRenderbufferStorageMultisample(renderbuffer, samples, internalformat, width, height)
}

// TODO
pub fn get_named_renderbuffer_parameteriv(renderbuffer u32, pname u32, params []int) {
	C.glGetNamedRenderbufferParameteriv(renderbuffer, pname, params.data)
}

// TODO
pub fn create_textures(target u32, n int, textures []u32) {
	C.glCreateTextures(target, n, textures.data)
}

pub fn texture_buffer(texture u32, internalformat u32, buffer u32) {
	C.glTextureBuffer(texture, internalformat, buffer)
}

pub fn texture_buffer_range(texture u32, internalformat u32, buffer u32, offset []int, size []int) {
	C.glTextureBufferRange(texture, internalformat, buffer, offset.data, size.data)
}

pub fn texture_storage1_d(texture u32, levels int, internalformat u32, width int) {
	C.glTextureStorage1D(texture, levels, internalformat, width)
}

pub fn texture_storage2_d(texture u32, levels int, internalformat u32, width int, height int) {
	C.glTextureStorage2D(texture, levels, internalformat, width, height)
}

pub fn texture_storage3_d(texture u32, levels int, internalformat u32, width int, height int, depth int) {
	C.glTextureStorage3D(texture, levels, internalformat, width, height, depth)
}

pub fn texture_storage2_d_multisample(texture u32, samples int, internalformat u32, width int, height int, fixedsamplelocations bool) {
	C.glTextureStorage2DMultisample(texture, samples, internalformat, width, height, fixedsamplelocations)
}

pub fn texture_storage3_d_multisample(texture u32, samples int, internalformat u32, width int, height int, depth int, fixedsamplelocations bool) {
	C.glTextureStorage3DMultisample(texture, samples, internalformat, width, height, depth, fixedsamplelocations)
}

// TODO
pub fn texture_sub_image1_d(texture u32, level int, xoffset int, width int, format u32, type_ u32, pixels voidptr) {
	C.glTextureSubImage1D(texture, level, xoffset, width, format, type_, pixels)
}

// TODO
pub fn texture_sub_image2_d(texture u32, level int, xoffset int, yoffset int, width int, height int, format u32, type_ u32, pixels voidptr) {
	C.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type_, pixels)
}

// TODO
pub fn texture_sub_image3_d(texture u32, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format u32, type_ u32, pixels voidptr) {
	C.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, pixels)
}

// TODO
pub fn compressed_texture_sub_image1_d(texture u32, level int, xoffset int, width int, format u32, imageSize int, data voidptr) {
	C.glCompressedTextureSubImage1D(texture, level, xoffset, width, format, imageSize, data)
}

// TODO
pub fn compressed_texture_sub_image2_d(texture u32, level int, xoffset int, yoffset int, width int, height int, format u32, imageSize int, data voidptr) {
	C.glCompressedTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, imageSize, data)
}

// TODO
pub fn compressed_texture_sub_image3_d(texture u32, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format u32, imageSize int, data voidptr) {
	C.glCompressedTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data)
}

pub fn copy_texture_sub_image1_d(texture u32, level int, xoffset int, x int, y int, width int) {
	C.glCopyTextureSubImage1D(texture, level, xoffset, x, y, width)
}

pub fn copy_texture_sub_image2_d(texture u32, level int, xoffset int, yoffset int, x int, y int, width int, height int) {
	C.glCopyTextureSubImage2D(texture, level, xoffset, yoffset, x, y, width, height)
}

pub fn copy_texture_sub_image3_d(texture u32, level int, xoffset int, yoffset int, zoffset int, x int, y int, width int, height int) {
	C.glCopyTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, x, y, width, height)
}

pub fn texture_parameterf(texture u32, pname u32, param f32) {
	C.glTextureParameterf(texture, pname, param)
}

// TODO
pub fn texture_parameterfv(texture u32, pname u32, param []f32) {
	C.glTextureParameterfv(texture, pname, param.data)
}

pub fn texture_parameteri(texture u32, pname u32, param int) {
	C.glTextureParameteri(texture, pname, param)
}

// TODO
pub fn texture_parameter_iiv(texture u32, pname u32, params []int) {
	C.glTextureParameterIiv(texture, pname, params.data)
}

// TODO
pub fn texture_parameter_iuiv(texture u32, pname u32, params []u32) {
	C.glTextureParameterIuiv(texture, pname, params.data)
}

// TODO
pub fn texture_parameteriv(texture u32, pname u32, param []int) {
	C.glTextureParameteriv(texture, pname, param.data)
}

pub fn generate_texture_mipmap(texture u32) {
	C.glGenerateTextureMipmap(texture)
}

pub fn bind_texture_unit(unit u32, texture u32) {
	C.glBindTextureUnit(unit, texture)
}

// TODO
pub fn get_texture_image(texture u32, level int, format u32, type_ u32, bufSize int, pixels voidptr) {
	C.glGetTextureImage(texture, level, format, type_, bufSize, pixels)
}

// TODO
pub fn get_compressed_texture_image(texture u32, level int, bufSize int, pixels voidptr) {
	C.glGetCompressedTextureImage(texture, level, bufSize, pixels)
}

// TODO
pub fn get_texture_level_parameterfv(texture u32, level int, pname u32, params []f32) {
	C.glGetTextureLevelParameterfv(texture, level, pname, params.data)
}

// TODO
pub fn get_texture_level_parameteriv(texture u32, level int, pname u32, params []int) {
	C.glGetTextureLevelParameteriv(texture, level, pname, params.data)
}

// TODO
pub fn get_texture_parameterfv(texture u32, pname u32, params []f32) {
	C.glGetTextureParameterfv(texture, pname, params.data)
}

// TODO
pub fn get_texture_parameter_iiv(texture u32, pname u32, params []int) {
	C.glGetTextureParameterIiv(texture, pname, params.data)
}

// TODO
pub fn get_texture_parameter_iuiv(texture u32, pname u32, params []u32) {
	C.glGetTextureParameterIuiv(texture, pname, params.data)
}

// TODO
pub fn get_texture_parameteriv(texture u32, pname u32, params []int) {
	C.glGetTextureParameteriv(texture, pname, params.data)
}

// TODO
pub fn create_vertex_arrays(n int, arrays []u32) {
	C.glCreateVertexArrays(n, arrays.data)
}

pub fn disable_vertex_array_attrib(vaobj u32, index u32) {
	C.glDisableVertexArrayAttrib(vaobj, index)
}

pub fn enable_vertex_array_attrib(vaobj u32, index u32) {
	C.glEnableVertexArrayAttrib(vaobj, index)
}

pub fn vertex_array_element_buffer(vaobj u32, buffer u32) {
	C.glVertexArrayElementBuffer(vaobj, buffer)
}

pub fn vertex_array_vertex_buffer(vaobj u32, bindingindex u32, buffer u32, offset []int, stride int) {
	C.glVertexArrayVertexBuffer(vaobj, bindingindex, buffer, offset.data, stride)
}

// TODO
pub fn vertex_array_vertex_buffers(vaobj u32, first u32, count int, buffers []u32, offsets *voidptr, strides []int) {
	C.glVertexArrayVertexBuffers(vaobj, first, count, buffers.data, offsets, strides.data)
}

pub fn vertex_array_attrib_binding(vaobj u32, attribindex u32, bindingindex u32) {
	C.glVertexArrayAttribBinding(vaobj, attribindex, bindingindex)
}

pub fn vertex_array_attrib_format(vaobj u32, attribindex u32, size int, type_ u32, normalized bool, relativeoffset u32) {
	C.glVertexArrayAttribFormat(vaobj, attribindex, size, type_, normalized, relativeoffset)
}

pub fn vertex_array_attrib_i_format(vaobj u32, attribindex u32, size int, type_ u32, relativeoffset u32) {
	C.glVertexArrayAttribIFormat(vaobj, attribindex, size, type_, relativeoffset)
}

pub fn vertex_array_attrib_l_format(vaobj u32, attribindex u32, size int, type_ u32, relativeoffset u32) {
	C.glVertexArrayAttribLFormat(vaobj, attribindex, size, type_, relativeoffset)
}

pub fn vertex_array_binding_divisor(vaobj u32, bindingindex u32, divisor u32) {
	C.glVertexArrayBindingDivisor(vaobj, bindingindex, divisor)
}

// TODO
pub fn get_vertex_arrayiv(vaobj u32, pname u32, param []int) {
	C.glGetVertexArrayiv(vaobj, pname, param.data)
}

// TODO
pub fn get_vertex_array_indexediv(vaobj u32, index u32, pname u32, param []int) {
	C.glGetVertexArrayIndexediv(vaobj, index, pname, param.data)
}

// TODO
pub fn get_vertex_array_indexed64iv(vaobj u32, index u32, pname u32, param []i64) {
	C.glGetVertexArrayIndexed64iv(vaobj, index, pname, param.data)
}

// TODO
pub fn create_samplers(n int, samplers []u32) {
	C.glCreateSamplers(n, samplers.data)
}

// TODO
pub fn create_program_pipelines(n int, pipelines []u32) {
	C.glCreateProgramPipelines(n, pipelines.data)
}

// TODO
pub fn create_queries(target u32, n int, ids []u32) {
	C.glCreateQueries(target, n, ids.data)
}

pub fn get_query_buffer_objecti64v(id u32, buffer u32, pname u32, offset []int) {
	C.glGetQueryBufferObjecti64v(id, buffer, pname, offset.data)
}

pub fn get_query_buffer_objectiv(id u32, buffer u32, pname u32, offset []int) {
	C.glGetQueryBufferObjectiv(id, buffer, pname, offset.data)
}

pub fn get_query_buffer_objectui64v(id u32, buffer u32, pname u32, offset []int) {
	C.glGetQueryBufferObjectui64v(id, buffer, pname, offset.data)
}

pub fn get_query_buffer_objectuiv(id u32, buffer u32, pname u32, offset []int) {
	C.glGetQueryBufferObjectuiv(id, buffer, pname, offset.data)
}

pub fn memory_barrier_by_region(barriers u32) {
	C.glMemoryBarrierByRegion(barriers)
}

// TODO
pub fn get_texture_sub_image(texture u32, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, format u32, type_ u32, bufSize int, pixels voidptr) {
	C.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, bufSize, pixels)
}

// TODO
pub fn get_compressed_texture_sub_image(texture u32, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int, bufSize int, pixels voidptr) {
	C.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, bufSize, pixels)
}

pub fn get_graphics_reset_status() u32 {
	return C.glGetGraphicsResetStatus()
}

// TODO
pub fn getn_compressed_tex_image(target u32, lod int, bufSize int, pixels voidptr) {
	C.glGetnCompressedTexImage(target, lod, bufSize, pixels)
}

// TODO
pub fn getn_tex_image(target u32, level int, format u32, type_ u32, bufSize int, pixels voidptr) {
	C.glGetnTexImage(target, level, format, type_, bufSize, pixels)
}

// TODO
pub fn getn_uniformdv(program u32, location int, bufSize int, params []f64) {
	C.glGetnUniformdv(program, location, bufSize, params.data)
}

// TODO
pub fn getn_uniformfv(program u32, location int, bufSize int, params []f32) {
	C.glGetnUniformfv(program, location, bufSize, params.data)
}

// TODO
pub fn getn_uniformiv(program u32, location int, bufSize int, params []int) {
	C.glGetnUniformiv(program, location, bufSize, params.data)
}

// TODO
pub fn getn_uniformuiv(program u32, location int, bufSize int, params []u32) {
	C.glGetnUniformuiv(program, location, bufSize, params.data)
}

// TODO
pub fn readn_pixels(x int, y int, width int, height int, format u32, type_ u32, bufSize int, data voidptr) {
	C.glReadnPixels(x, y, width, height, format, type_, bufSize, data)
}

// TODO
pub fn getn_mapdv(target u32, query u32, bufSize int, v []f64) {
	C.glGetnMapdv(target, query, bufSize, v.data)
}

// TODO
pub fn getn_mapfv(target u32, query u32, bufSize int, v []f32) {
	C.glGetnMapfv(target, query, bufSize, v.data)
}

// TODO
pub fn getn_mapiv(target u32, query u32, bufSize int, v []int) {
	C.glGetnMapiv(target, query, bufSize, v.data)
}

// TODO
pub fn getn_pixel_mapfv(map u32, bufSize int, values []f32) {
	C.glGetnPixelMapfv(map, bufSize, values.data)
}

// TODO
pub fn getn_pixel_mapuiv(map u32, bufSize int, values []u32) {
	C.glGetnPixelMapuiv(map, bufSize, values.data)
}

// TODO
pub fn getn_pixel_mapusv(map u32, bufSize int, values []u16) {
	C.glGetnPixelMapusv(map, bufSize, values.data)
}

// TODO
pub fn getn_polygon_stipple(bufSize int, pattern []u8) {
	C.glGetnPolygonStipple(bufSize, pattern.data)
}

// TODO
pub fn getn_color_table(target u32, format u32, type_ u32, bufSize int, table voidptr) {
	C.glGetnColorTable(target, format, type_, bufSize, table)
}

// TODO
pub fn getn_convolution_filter(target u32, format u32, type_ u32, bufSize int, image voidptr) {
	C.glGetnConvolutionFilter(target, format, type_, bufSize, image)
}

// TODO
pub fn getn_separable_filter(target u32, format u32, type_ u32, rowBufSize int, row voidptr, columnBufSize int, column voidptr, span voidptr) {
	C.glGetnSeparableFilter(target, format, type_, rowBufSize, row, columnBufSize, column, span)
}

// TODO
pub fn getn_histogram(target u32, reset bool, format u32, type_ u32, bufSize int, values voidptr) {
	C.glGetnHistogram(target, reset, format, type_, bufSize, values)
}

// TODO
pub fn getn_minmax(target u32, reset bool, format u32, type_ u32, bufSize int, values voidptr) {
	C.glGetnMinmax(target, reset, format, type_, bufSize, values)
}

pub fn texture_barrier() {
	C.glTextureBarrier()
}
