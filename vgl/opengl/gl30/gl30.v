module gl30

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o
#include <glad.h>

import const (
	GL_ALPHA_INTEGER
	GL_BGR_INTEGER
	GL_BGRA_INTEGER
	GL_BLUE_INTEGER
	GL_BUFFER_ACCESS_FLAGS
	GL_BUFFER_MAP_LENGTH
	GL_BUFFER_MAP_OFFSET
	GL_CLAMP_FRAGMENT_COLOR
	GL_CLAMP_READ_COLOR
	GL_CLAMP_VERTEX_COLOR
	GL_CLIP_DISTANCE0
	GL_CLIP_DISTANCE1
	GL_CLIP_DISTANCE2
	GL_CLIP_DISTANCE3
	GL_CLIP_DISTANCE4
	GL_CLIP_DISTANCE5
	GL_CLIP_DISTANCE6
	GL_CLIP_DISTANCE7
	GL_COLOR_ATTACHMENT0
	GL_COLOR_ATTACHMENT1
	GL_COLOR_ATTACHMENT10
	GL_COLOR_ATTACHMENT11
	GL_COLOR_ATTACHMENT12
	GL_COLOR_ATTACHMENT13
	GL_COLOR_ATTACHMENT14
	GL_COLOR_ATTACHMENT15
	GL_COLOR_ATTACHMENT16
	GL_COLOR_ATTACHMENT17
	GL_COLOR_ATTACHMENT18
	GL_COLOR_ATTACHMENT19
	GL_COLOR_ATTACHMENT2
	GL_COLOR_ATTACHMENT20
	GL_COLOR_ATTACHMENT21
	GL_COLOR_ATTACHMENT22
	GL_COLOR_ATTACHMENT23
	GL_COLOR_ATTACHMENT24
	GL_COLOR_ATTACHMENT25
	GL_COLOR_ATTACHMENT26
	GL_COLOR_ATTACHMENT27
	GL_COLOR_ATTACHMENT28
	GL_COLOR_ATTACHMENT29
	GL_COLOR_ATTACHMENT3
	GL_COLOR_ATTACHMENT30
	GL_COLOR_ATTACHMENT31
	GL_COLOR_ATTACHMENT4
	GL_COLOR_ATTACHMENT5
	GL_COLOR_ATTACHMENT6
	GL_COLOR_ATTACHMENT7
	GL_COLOR_ATTACHMENT8
	GL_COLOR_ATTACHMENT9
	GL_COMPARE_REF_TO_TEXTURE
	GL_COMPRESSED_RED
	GL_COMPRESSED_RED_RGTC1
	GL_COMPRESSED_RG
	GL_COMPRESSED_RG_RGTC2
	GL_COMPRESSED_SIGNED_RED_RGTC1
	GL_COMPRESSED_SIGNED_RG_RGTC2
	GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT
	GL_CONTEXT_FLAGS
	GL_DEPTH_ATTACHMENT
	GL_DEPTH_COMPONENT32F
	GL_DEPTH_STENCIL
	GL_DEPTH_STENCIL_ATTACHMENT
	GL_DEPTH24_STENCIL8
	GL_DEPTH32F_STENCIL8
	GL_DRAW_FRAMEBUFFER
	GL_DRAW_FRAMEBUFFER_BINDING
	GL_FIXED_ONLY
	GL_FLOAT_32_UNSIGNED_INT_24_8_REV
	GL_FRAMEBUFFER
	GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
	GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
	GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
	GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
	GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
	GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
	GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
	GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
	GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE
	GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
	GL_FRAMEBUFFER_BINDING
	GL_FRAMEBUFFER_COMPLETE
	GL_FRAMEBUFFER_DEFAULT
	GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
	GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
	GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
	GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
	GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
	GL_FRAMEBUFFER_SRGB
	GL_FRAMEBUFFER_UNDEFINED
	GL_FRAMEBUFFER_UNSUPPORTED
	GL_GREEN_INTEGER
	GL_HALF_FLOAT
	GL_INDEX
	GL_INT_SAMPLER_1D
	GL_INT_SAMPLER_1D_ARRAY
	GL_INT_SAMPLER_2D
	GL_INT_SAMPLER_2D_ARRAY
	GL_INT_SAMPLER_3D
	GL_INT_SAMPLER_CUBE
	GL_INTERLEAVED_ATTRIBS
	GL_INVALID_FRAMEBUFFER_OPERATION
	GL_MAJOR_VERSION
	GL_MAP_FLUSH_EXPLICIT_BIT
	GL_MAP_INVALIDATE_BUFFER_BIT
	GL_MAP_INVALIDATE_RANGE_BIT
	GL_MAP_READ_BIT
	GL_MAP_UNSYNCHRONIZED_BIT
	GL_MAP_WRITE_BIT
	GL_MAX_ARRAY_TEXTURE_LAYERS
	GL_MAX_CLIP_DISTANCES
	GL_MAX_COLOR_ATTACHMENTS
	GL_MAX_PROGRAM_TEXEL_OFFSET
	GL_MAX_RENDERBUFFER_SIZE
	GL_MAX_SAMPLES
	GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS
	GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS
	GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS
	GL_MAX_VARYING_COMPONENTS
	GL_MIN_PROGRAM_TEXEL_OFFSET
	GL_MINOR_VERSION
	GL_NUM_EXTENSIONS
	GL_PRIMITIVES_GENERATED
	GL_PROXY_TEXTURE_1D_ARRAY
	GL_PROXY_TEXTURE_2D_ARRAY
	GL_QUERY_BY_REGION_NO_WAIT
	GL_QUERY_BY_REGION_WAIT
	GL_QUERY_NO_WAIT
	GL_QUERY_WAIT
	GL_R11F_G11F_B10F
	GL_R16
	GL_R16F
	GL_R16I
	GL_R16UI
	GL_R32F
	GL_R32I
	GL_R32UI
	GL_R8
	GL_R8I
	GL_R8UI
	GL_RASTERIZER_DISCARD
	GL_READ_FRAMEBUFFER
	GL_READ_FRAMEBUFFER_BINDING
	GL_RED_INTEGER
	GL_RENDERBUFFER
	GL_RENDERBUFFER_ALPHA_SIZE
	GL_RENDERBUFFER_BINDING
	GL_RENDERBUFFER_BLUE_SIZE
	GL_RENDERBUFFER_DEPTH_SIZE
	GL_RENDERBUFFER_GREEN_SIZE
	GL_RENDERBUFFER_HEIGHT
	GL_RENDERBUFFER_INTERNAL_FORMAT
	GL_RENDERBUFFER_RED_SIZE
	GL_RENDERBUFFER_SAMPLES
	GL_RENDERBUFFER_STENCIL_SIZE
	GL_RENDERBUFFER_WIDTH
	GL_RG
	GL_RG_INTEGER
	GL_RG16
	GL_RG16F
	GL_RG16I
	GL_RG16UI
	GL_RG32F
	GL_RG32I
	GL_RG32UI
	GL_RG8
	GL_RG8I
	GL_RG8UI
	GL_RGB_INTEGER
	GL_RGB16F
	GL_RGB16I
	GL_RGB16UI
	GL_RGB32F
	GL_RGB32I
	GL_RGB32UI
	GL_RGB8I
	GL_RGB8UI
	GL_RGB9_E5
	GL_RGBA_INTEGER
	GL_RGBA16F
	GL_RGBA16I
	GL_RGBA16UI
	GL_RGBA32F
	GL_RGBA32I
	GL_RGBA32UI
	GL_RGBA8I
	GL_RGBA8UI
	GL_SAMPLER_1D_ARRAY
	GL_SAMPLER_1D_ARRAY_SHADOW
	GL_SAMPLER_2D_ARRAY
	GL_SAMPLER_2D_ARRAY_SHADOW
	GL_SAMPLER_CUBE_SHADOW
	GL_SEPARATE_ATTRIBS
	GL_STENCIL_ATTACHMENT
	GL_STENCIL_INDEX1
	GL_STENCIL_INDEX16
	GL_STENCIL_INDEX4
	GL_STENCIL_INDEX8
	GL_TEXTURE_1D_ARRAY
	GL_TEXTURE_2D_ARRAY
	GL_TEXTURE_ALPHA_TYPE
	GL_TEXTURE_BINDING_1D_ARRAY
	GL_TEXTURE_BINDING_2D_ARRAY
	GL_TEXTURE_BLUE_TYPE
	GL_TEXTURE_DEPTH_TYPE
	GL_TEXTURE_GREEN_TYPE
	GL_TEXTURE_INTENSITY_TYPE
	GL_TEXTURE_LUMINANCE_TYPE
	GL_TEXTURE_RED_TYPE
	GL_TEXTURE_SHARED_SIZE
	GL_TEXTURE_STENCIL_SIZE
	GL_TRANSFORM_FEEDBACK_BUFFER
	GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
	GL_TRANSFORM_FEEDBACK_BUFFER_MODE
	GL_TRANSFORM_FEEDBACK_BUFFER_SIZE
	GL_TRANSFORM_FEEDBACK_BUFFER_START
	GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN
	GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH
	GL_TRANSFORM_FEEDBACK_VARYINGS
	GL_UNSIGNED_INT_10F_11F_11F_REV
	GL_UNSIGNED_INT_24_8
	GL_UNSIGNED_INT_5_9_9_9_REV
	GL_UNSIGNED_INT_SAMPLER_1D
	GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
	GL_UNSIGNED_INT_SAMPLER_2D
	GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
	GL_UNSIGNED_INT_SAMPLER_3D
	GL_UNSIGNED_INT_SAMPLER_CUBE
	GL_UNSIGNED_INT_VEC2
	GL_UNSIGNED_INT_VEC3
	GL_UNSIGNED_INT_VEC4
	GL_UNSIGNED_NORMALIZED
	GL_VERTEX_ARRAY_BINDING
	GL_VERTEX_ATTRIB_ARRAY_INTEGER
)

pub fn begin_conditional_render(id int, mode int) {
	C.glBeginConditionalRender(id, mode)
}

pub fn begin_transform_feedback(primitive_mode int) {
	C.glBeginTransformFeedback(primitive_mode)
}

pub fn bind_buffer_base(target int, index int, buffer int) {
	C.glBindBufferBase(target, index, buffer)
}

pub fn bind_buffer_range(target int, index int, buffer int, offset i64, size i64) {
	C.glBindBufferRange(target, index, buffer, offset, size)
}

pub fn bind_frag_data_location(program int, color_number int, name byteptr) {
	C.glBindFragDataLocation(program, color_number, name)
}

pub fn bind_frag_data_location(program int, color_number int, name voidptr) {
	C.glBindFragDataLocation(program, color_number, name)
}

pub fn bind_framebuffer(target int, framebuffer int) {
	C.glBindFramebuffer(target, framebuffer)
}

pub fn bind_renderbuffer(target int, renderbuffer int) {
	C.glBindRenderbuffer(target, renderbuffer)
}

pub fn bind_vertex_array(array int) {
	C.glBindVertexArray(array)
}

pub fn blit_framebuffer(src_x0 int, src_y0 int, src_x1 int, src_y1 int, dst_x0 int, dst_y0 int, dst_x1 int, dst_y1 int, mask int, filter int) {
	C.glBlitFramebuffer(src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)
}

pub fn check_framebuffer_status(target int) int {
	return C.glCheckFramebufferStatus(target)
}

pub fn clamp_color(target int, clamp int) {
	C.glClampColor(target, clamp)
}

pub fn clear_bufferfi(buffer int, drawbuffer int, depth f32, stencil int) {
	C.glClearBufferfi(buffer, drawbuffer, depth, stencil)
}

pub fn clear_bufferfv(buffer int, drawbuffer int, value []f32) {
	C.glClearBufferfv(buffer, drawbuffer, value)
}

pub fn clear_bufferfv(buffer int, drawbuffer int, value voidptr) {
	C.glClearBufferfv(buffer, drawbuffer, value)
}

pub fn clear_bufferiv(buffer int, drawbuffer int, value []int) {
	C.glClearBufferiv(buffer, drawbuffer, value)
}

pub fn clear_bufferiv(buffer int, drawbuffer int, value voidptr) {
	C.glClearBufferiv(buffer, drawbuffer, value)
}

pub fn clear_bufferuiv(buffer int, drawbuffer int, value []int) {
	C.glClearBufferuiv(buffer, drawbuffer, value)
}

pub fn clear_bufferuiv(buffer int, drawbuffer int, value voidptr) {
	C.glClearBufferuiv(buffer, drawbuffer, value)
}

pub fn color_maski(buf int, r bool, g bool, b bool, a bool) {
	C.glColorMaski(buf, r, g, b, a)
}

pub fn delete_framebuffers(framebuffer int) {
	C.glDeleteFramebuffers(framebuffer)
}

pub fn delete_framebuffers(framebuffers []int) {
	C.glDeleteFramebuffers(framebuffers)
}

pub fn delete_framebuffers(framebuffers voidptr) {
	C.glDeleteFramebuffers(framebuffers)
}

pub fn delete_renderbuffers(renderbuffer int) {
	C.glDeleteRenderbuffers(renderbuffer)
}

pub fn delete_renderbuffers(renderbuffers []int) {
	C.glDeleteRenderbuffers(renderbuffers)
}

pub fn delete_renderbuffers(renderbuffers voidptr) {
	C.glDeleteRenderbuffers(renderbuffers)
}

pub fn delete_vertex_arrays(array int) {
	C.glDeleteVertexArrays(array)
}

pub fn delete_vertex_arrays(arrays []int) {
	C.glDeleteVertexArrays(arrays)
}

pub fn delete_vertex_arrays(arrays voidptr) {
	C.glDeleteVertexArrays(arrays)
}

pub fn disablei(target int, index int) {
	C.glDisablei(target, index)
}

pub fn enablei(cap int, index int) {
	C.glEnablei(cap, index)
}

pub fn end_conditional_render() {
	C.glEndConditionalRender()
}

pub fn end_transform_feedback() {
	C.glEndTransformFeedback()
}

pub fn flush_mapped_buffer_range(target int, offset i64, length i64) {
	C.glFlushMappedBufferRange(target, offset, length)
}

pub fn framebuffer_renderbuffer(target int, attachment int, renderbuffertarget int, renderbuffer int) {
	C.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer)
}

pub fn framebuffer_texture1d(target int, attachment int, textarget int, texture int, level int) {
	C.glFramebufferTexture1D(target, attachment, textarget, texture, level)
}

pub fn framebuffer_texture2d(target int, attachment int, textarget int, texture int, level int) {
	C.glFramebufferTexture2D(target, attachment, textarget, texture, level)
}

pub fn framebuffer_texture3d(target int, attachment int, textarget int, texture int, level int, layer int) {
	C.glFramebufferTexture3D(target, attachment, textarget, texture, level, layer)
}

pub fn framebuffer_texture_layer(target int, attachment int, texture int, level int, layer int) {
	C.glFramebufferTextureLayer(target, attachment, texture, level, layer)
}

pub fn generate_mipmap(target int) {
	C.glGenerateMipmap(target)
}

pub fn gen_framebuffers() int {
	return C.glGenFramebuffers()
}

pub fn gen_framebuffers(framebuffers []int) {
	C.glGenFramebuffers(framebuffers)
}

pub fn gen_framebuffers(framebuffers voidptr) {
	C.glGenFramebuffers(framebuffers)
}

pub fn gen_renderbuffers() int {
	return C.glGenRenderbuffers()
}

pub fn gen_renderbuffers(renderbuffers []int) {
	C.glGenRenderbuffers(renderbuffers)
}

pub fn gen_renderbuffers(renderbuffers voidptr) {
	C.glGenRenderbuffers(renderbuffers)
}

pub fn gen_vertex_arrays() int {
	return C.glGenVertexArrays()
}

pub fn gen_vertex_arrays(arrays []int) {
	C.glGenVertexArrays(arrays)
}

pub fn gen_vertex_arrays(arrays voidptr) {
	C.glGenVertexArrays(arrays)
}

pub fn get_booleani(target int, index int) bool {
	return C.glGetBooleani(target, index)
}

pub fn get_booleani_v(target int, index int, data voidptr) {
	C.glGetBooleani_v(target, index, data)
}

pub fn get_frag_data_location(program int, name byteptr) int {
	return C.glGetFragDataLocation(program, name)
}

pub fn get_frag_data_location(program int, name voidptr) int {
	return C.glGetFragDataLocation(program, name)
}

pub fn get_framebuffer_attachment_parameteri(target int, attachment int, pname int) int {
	return C.glGetFramebufferAttachmentParameteri(target, attachment, pname)
}

pub fn get_framebuffer_attachment_parameteriv(target int, attachment int, pname int, params []int) {
	C.glGetFramebufferAttachmentParameteriv(target, attachment, pname, params)
}

pub fn get_framebuffer_attachment_parameteriv(target int, attachment int, pname int, params voidptr) {
	C.glGetFramebufferAttachmentParameteriv(target, attachment, pname, params)
}

pub fn get_integeri(target int, index int) int {
	return C.glGetIntegeri(target, index)
}

pub fn get_integeri_v(target int, index int, data []int) {
	C.glGetIntegeri_v(target, index, data)
}

pub fn get_integeri_v(target int, index int, data voidptr) {
	C.glGetIntegeri_v(target, index, data)
}

pub fn get_renderbuffer_parameteri(target int, pname int) int {
	return C.glGetRenderbufferParameteri(target, pname)
}

pub fn get_renderbuffer_parameteriv(target int, pname int, params []int) {
	C.glGetRenderbufferParameteriv(target, pname, params)
}

pub fn get_renderbuffer_parameteriv(target int, pname int, params voidptr) {
	C.glGetRenderbufferParameteriv(target, pname, params)
}

pub fn get_stringi(name int, index int) string {
	return C.glGetStringi(name, index)
}

pub fn get_tex_parameter_ii(target int, pname int) int {
	return C.glGetTexParameterIi(target, pname)
}

pub fn get_tex_parameter_iiv(target int, pname int, params []int) {
	C.glGetTexParameterIiv(target, pname, params)
}

pub fn get_tex_parameter_iiv(target int, pname int, params voidptr) {
	C.glGetTexParameterIiv(target, pname, params)
}

pub fn get_tex_parameter_iui(target int, pname int) int {
	return C.glGetTexParameterIui(target, pname)
}

pub fn get_tex_parameter_iuiv(target int, pname int, params []int) {
	C.glGetTexParameterIuiv(target, pname, params)
}

pub fn get_tex_parameter_iuiv(target int, pname int, params voidptr) {
	C.glGetTexParameterIuiv(target, pname, params)
}

pub fn get_transform_feedback_varying(program int, index int, length []int, size []int, type []int, name voidptr) {
	C.glGetTransformFeedbackVarying(program, index, length, size, type, name)
}

pub fn get_transform_feedback_varying(program int, index int, buf_size int, size voidptr, type voidptr) string {
	return C.glGetTransformFeedbackVarying(program, index, buf_size, size, type)
}

pub fn get_transform_feedback_varying(program int, index int, size voidptr, type voidptr) string {
	return C.glGetTransformFeedbackVarying(program, index, size, type)
}

pub fn get_transform_feedback_varying(program int, index int, length voidptr, size voidptr, type voidptr, name voidptr) {
	C.glGetTransformFeedbackVarying(program, index, length, size, type, name)
}

pub fn get_uniformui(program int, location int) int {
	return C.glGetUniformui(program, location)
}

pub fn get_uniformuiv(program int, location int, params []int) {
	C.glGetUniformuiv(program, location, params)
}

pub fn get_uniformuiv(program int, location int, params voidptr) {
	C.glGetUniformuiv(program, location, params)
}

pub fn get_vertex_attrib_ii(index int, pname int) int {
	return C.glGetVertexAttribIi(index, pname)
}

pub fn get_vertex_attrib_iiv(index int, pname int, params []int) {
	C.glGetVertexAttribIiv(index, pname, params)
}

pub fn get_vertex_attrib_iiv(index int, pname int, params voidptr) {
	C.glGetVertexAttribIiv(index, pname, params)
}

pub fn get_vertex_attrib_iui(index int, pname int) int {
	return C.glGetVertexAttribIui(index, pname)
}

pub fn get_vertex_attrib_iuiv(index int, pname int, params []int) {
	C.glGetVertexAttribIuiv(index, pname, params)
}

pub fn get_vertex_attrib_iuiv(index int, pname int, params voidptr) {
	C.glGetVertexAttribIuiv(index, pname, params)
}

pub fn is_enabledi(target int, index int) bool {
	return C.glIsEnabledi(target, index)
}

pub fn is_framebuffer(framebuffer int) bool {
	return C.glIsFramebuffer(framebuffer)
}

pub fn is_renderbuffer(renderbuffer int) bool {
	return C.glIsRenderbuffer(renderbuffer)
}

pub fn is_vertex_array(array int) bool {
	return C.glIsVertexArray(array)
}

pub fn map_buffer_range(target int, offset i64, length i64, access int) voidptr {
	return C.glMapBufferRange(target, offset, length, access)
}

pub fn map_buffer_range(target int, offset i64, length i64, access int, old_buffer voidptr) voidptr {
	return C.glMapBufferRange(target, offset, length, access, old_buffer)
}

pub fn renderbuffer_storage(target int, internalformat int, width int, height int) {
	C.glRenderbufferStorage(target, internalformat, width, height)
}

pub fn renderbuffer_storage_multisample(target int, samples int, internalformat int, width int, height int) {
	C.glRenderbufferStorageMultisample(target, samples, internalformat, width, height)
}

pub fn tex_parameter_ii(target int, pname int, param int) {
	C.glTexParameterIi(target, pname, param)
}

pub fn tex_parameter_iiv(target int, pname int, params []int) {
	C.glTexParameterIiv(target, pname, params)
}

pub fn tex_parameter_iiv(target int, pname int, params voidptr) {
	C.glTexParameterIiv(target, pname, params)
}

pub fn tex_parameter_iui(target int, pname int, param int) {
	C.glTexParameterIui(target, pname, param)
}

pub fn tex_parameter_iuiv(target int, pname int, params []int) {
	C.glTexParameterIuiv(target, pname, params)
}

pub fn tex_parameter_iuiv(target int, pname int, params voidptr) {
	C.glTexParameterIuiv(target, pname, params)
}

pub fn transform_feedback_varyings(program int, varyings *byteptr, buffer_mode int) {
	C.glTransformFeedbackVaryings(program, varyings, buffer_mode)
}

pub fn transform_feedback_varyings(program int, varying byteptr, buffer_mode int) {
	C.glTransformFeedbackVaryings(program, varying, buffer_mode)
}

pub fn transform_feedback_varyings(program int, varyings *voidptr, buffer_mode int) {
	C.glTransformFeedbackVaryings(program, varyings, buffer_mode)
}

pub fn uniform1ui(location int, v0 int) {
	C.glUniform1ui(location, v0)
}

pub fn uniform1uiv(location int, value []int) {
	C.glUniform1uiv(location, value)
}

pub fn uniform1uiv(location int, value voidptr) {
	C.glUniform1uiv(location, value)
}

pub fn uniform2ui(location int, v0 int, v1 int) {
	C.glUniform2ui(location, v0, v1)
}

pub fn uniform2uiv(location int, value []int) {
	C.glUniform2uiv(location, value)
}

pub fn uniform2uiv(location int, value voidptr) {
	C.glUniform2uiv(location, value)
}

pub fn uniform3ui(location int, v0 int, v1 int, v2 int) {
	C.glUniform3ui(location, v0, v1, v2)
}

pub fn uniform3uiv(location int, value []int) {
	C.glUniform3uiv(location, value)
}

pub fn uniform3uiv(location int, value voidptr) {
	C.glUniform3uiv(location, value)
}

pub fn uniform4ui(location int, v0 int, v1 int, v2 int, v3 int) {
	C.glUniform4ui(location, v0, v1, v2, v3)
}

pub fn uniform4uiv(location int, value []int) {
	C.glUniform4uiv(location, value)
}

pub fn uniform4uiv(location int, value voidptr) {
	C.glUniform4uiv(location, value)
}

pub fn vertex_attrib_i1i(index int, x int) {
	C.glVertexAttribI1i(index, x)
}

pub fn vertex_attrib_i1iv(index int, v []int) {
	C.glVertexAttribI1iv(index, v)
}

pub fn vertex_attrib_i1iv(index int, v voidptr) {
	C.glVertexAttribI1iv(index, v)
}

pub fn vertex_attrib_i1ui(index int, x int) {
	C.glVertexAttribI1ui(index, x)
}

pub fn vertex_attrib_i1uiv(index int, v []int) {
	C.glVertexAttribI1uiv(index, v)
}

pub fn vertex_attrib_i1uiv(index int, v voidptr) {
	C.glVertexAttribI1uiv(index, v)
}

pub fn vertex_attrib_i2i(index int, x int, y int) {
	C.glVertexAttribI2i(index, x, y)
}

pub fn vertex_attrib_i2iv(index int, v []int) {
	C.glVertexAttribI2iv(index, v)
}

pub fn vertex_attrib_i2iv(index int, v voidptr) {
	C.glVertexAttribI2iv(index, v)
}

pub fn vertex_attrib_i2ui(index int, x int, y int) {
	C.glVertexAttribI2ui(index, x, y)
}

pub fn vertex_attrib_i2uiv(index int, v []int) {
	C.glVertexAttribI2uiv(index, v)
}

pub fn vertex_attrib_i2uiv(index int, v voidptr) {
	C.glVertexAttribI2uiv(index, v)
}

pub fn vertex_attrib_i3i(index int, x int, y int, z int) {
	C.glVertexAttribI3i(index, x, y, z)
}

pub fn vertex_attrib_i3iv(index int, v []int) {
	C.glVertexAttribI3iv(index, v)
}

pub fn vertex_attrib_i3iv(index int, v voidptr) {
	C.glVertexAttribI3iv(index, v)
}

pub fn vertex_attrib_i3ui(index int, x int, y int, z int) {
	C.glVertexAttribI3ui(index, x, y, z)
}

pub fn vertex_attrib_i3uiv(index int, v []int) {
	C.glVertexAttribI3uiv(index, v)
}

pub fn vertex_attrib_i3uiv(index int, v voidptr) {
	C.glVertexAttribI3uiv(index, v)
}

pub fn vertex_attrib_i4bv(index int, v voidptr) {
	C.glVertexAttribI4bv(index, v)
}

pub fn vertex_attrib_i4i(index int, x int, y int, z int, w int) {
	C.glVertexAttribI4i(index, x, y, z, w)
}

pub fn vertex_attrib_i4iv(index int, v []int) {
	C.glVertexAttribI4iv(index, v)
}

pub fn vertex_attrib_i4iv(index int, v voidptr) {
	C.glVertexAttribI4iv(index, v)
}

pub fn vertex_attrib_i4sv(index int, v []i16) {
	C.glVertexAttribI4sv(index, v)
}

pub fn vertex_attrib_i4sv(index int, v voidptr) {
	C.glVertexAttribI4sv(index, v)
}

pub fn vertex_attrib_i4ubv(index int, v voidptr) {
	C.glVertexAttribI4ubv(index, v)
}

pub fn vertex_attrib_i4ui(index int, x int, y int, z int, w int) {
	C.glVertexAttribI4ui(index, x, y, z, w)
}

pub fn vertex_attrib_i4uiv(index int, v []int) {
	C.glVertexAttribI4uiv(index, v)
}

pub fn vertex_attrib_i4uiv(index int, v voidptr) {
	C.glVertexAttribI4uiv(index, v)
}

pub fn vertex_attrib_i4usv(index int, v []i16) {
	C.glVertexAttribI4usv(index, v)
}

pub fn vertex_attrib_i4usv(index int, v voidptr) {
	C.glVertexAttribI4usv(index, v)
}

pub fn vertex_attrib_i_pointer(index int, size int, type int, stride int, pointer i64) {
	C.glVertexAttribIPointer(index, size, type, stride, pointer)
}

pub fn vertex_attrib_i_pointer(index int, size int, type int, stride int, pointer voidptr) {
	C.glVertexAttribIPointer(index, size, type, stride, pointer)
}

pub fn vertex_attrib_i_pointer(index int, size int, type int, stride int, pointer voidptr) {
	C.glVertexAttribIPointer(index, size, type, stride, pointer)
}

pub fn vertex_attrib_i_pointer(index int, size int, type int, stride int, pointer voidptr) {
	C.glVertexAttribIPointer(index, size, type, stride, pointer)
}
