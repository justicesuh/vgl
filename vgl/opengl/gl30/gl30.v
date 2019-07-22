module gl30

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_COMPARE_REF_TO_TEXTURE
	GL_CLIP_DISTANCE0
	GL_CLIP_DISTANCE1
	GL_CLIP_DISTANCE2
	GL_CLIP_DISTANCE3
	GL_CLIP_DISTANCE4
	GL_CLIP_DISTANCE5
	GL_CLIP_DISTANCE6
	GL_CLIP_DISTANCE7
	GL_MAX_CLIP_DISTANCES
	GL_MAJOR_VERSION
	GL_MINOR_VERSION
	GL_NUM_EXTENSIONS
	GL_CONTEXT_FLAGS
	GL_COMPRESSED_RED
	GL_COMPRESSED_RG
	GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT
	GL_RGBA32F
	GL_RGB32F
	GL_RGBA16F
	GL_RGB16F
	GL_VERTEX_ATTRIB_ARRAY_INTEGER
	GL_MAX_ARRAY_TEXTURE_LAYERS
	GL_MIN_PROGRAM_TEXEL_OFFSET
	GL_MAX_PROGRAM_TEXEL_OFFSET
	GL_CLAMP_READ_COLOR
	GL_FIXED_ONLY
	GL_MAX_VARYING_COMPONENTS
	GL_TEXTURE_1D_ARRAY
	GL_PROXY_TEXTURE_1D_ARRAY
	GL_TEXTURE_2D_ARRAY
	GL_PROXY_TEXTURE_2D_ARRAY
	GL_TEXTURE_BINDING_1D_ARRAY
	GL_TEXTURE_BINDING_2D_ARRAY
	GL_R11F_G11F_B10F
	GL_UNSIGNED_INT_10F_11F_11F_REV
	GL_RGB9_E5
	GL_UNSIGNED_INT_5_9_9_9_REV
	GL_TEXTURE_SHARED_SIZE
	GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH
	GL_TRANSFORM_FEEDBACK_BUFFER_MODE
	GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS
	GL_TRANSFORM_FEEDBACK_VARYINGS
	GL_TRANSFORM_FEEDBACK_BUFFER_START
	GL_TRANSFORM_FEEDBACK_BUFFER_SIZE
	GL_PRIMITIVES_GENERATED
	GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN
	GL_RASTERIZER_DISCARD
	GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS
	GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS
	GL_INTERLEAVED_ATTRIBS
	GL_SEPARATE_ATTRIBS
	GL_TRANSFORM_FEEDBACK_BUFFER
	GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
	GL_RGBA32UI
	GL_RGB32UI
	GL_RGBA16UI
	GL_RGB16UI
	GL_RGBA8UI
	GL_RGB8UI
	GL_RGBA32I
	GL_RGB32I
	GL_RGBA16I
	GL_RGB16I
	GL_RGBA8I
	GL_RGB8I
	GL_RED_INTEGER
	GL_GREEN_INTEGER
	GL_BLUE_INTEGER
	GL_RGB_INTEGER
	GL_RGBA_INTEGER
	GL_BGR_INTEGER
	GL_BGRA_INTEGER
	GL_SAMPLER_1D_ARRAY
	GL_SAMPLER_2D_ARRAY
	GL_SAMPLER_1D_ARRAY_SHADOW
	GL_SAMPLER_2D_ARRAY_SHADOW
	GL_SAMPLER_CUBE_SHADOW
	GL_UNSIGNED_INT_VEC2
	GL_UNSIGNED_INT_VEC3
	GL_UNSIGNED_INT_VEC4
	GL_INT_SAMPLER_1D
	GL_INT_SAMPLER_2D
	GL_INT_SAMPLER_3D
	GL_INT_SAMPLER_CUBE
	GL_INT_SAMPLER_1D_ARRAY
	GL_INT_SAMPLER_2D_ARRAY
	GL_UNSIGNED_INT_SAMPLER_1D
	GL_UNSIGNED_INT_SAMPLER_2D
	GL_UNSIGNED_INT_SAMPLER_3D
	GL_UNSIGNED_INT_SAMPLER_CUBE
	GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
	GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
	GL_QUERY_WAIT
	GL_QUERY_NO_WAIT
	GL_QUERY_BY_REGION_WAIT
	GL_QUERY_BY_REGION_NO_WAIT
	GL_BUFFER_ACCESS_FLAGS
	GL_BUFFER_MAP_LENGTH
	GL_BUFFER_MAP_OFFSET
	GL_DEPTH_COMPONENT32F
	GL_DEPTH32F_STENCIL8
	GL_FLOAT_32_UNSIGNED_INT_24_8_REV
	GL_INVALID_FRAMEBUFFER_OPERATION
	GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
	GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
	GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE
	GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
	GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
	GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
	GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
	GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
	GL_FRAMEBUFFER_DEFAULT
	GL_FRAMEBUFFER_UNDEFINED
	GL_DEPTH_STENCIL_ATTACHMENT
	GL_MAX_RENDERBUFFER_SIZE
	GL_DEPTH_STENCIL
	GL_UNSIGNED_INT_24_8
	GL_DEPTH24_STENCIL8
	GL_TEXTURE_STENCIL_SIZE
	GL_TEXTURE_RED_TYPE
	GL_TEXTURE_GREEN_TYPE
	GL_TEXTURE_BLUE_TYPE
	GL_TEXTURE_ALPHA_TYPE
	GL_TEXTURE_DEPTH_TYPE
	GL_UNSIGNED_NORMALIZED
	GL_FRAMEBUFFER_BINDING
	GL_DRAW_FRAMEBUFFER_BINDING
	GL_RENDERBUFFER_BINDING
	GL_READ_FRAMEBUFFER
	GL_DRAW_FRAMEBUFFER
	GL_READ_FRAMEBUFFER_BINDING
	GL_RENDERBUFFER_SAMPLES
	GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
	GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
	GL_FRAMEBUFFER_COMPLETE
	GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
	GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
	GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
	GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
	GL_FRAMEBUFFER_UNSUPPORTED
	GL_MAX_COLOR_ATTACHMENTS
	GL_COLOR_ATTACHMENT0
	GL_COLOR_ATTACHMENT1
	GL_COLOR_ATTACHMENT2
	GL_COLOR_ATTACHMENT3
	GL_COLOR_ATTACHMENT4
	GL_COLOR_ATTACHMENT5
	GL_COLOR_ATTACHMENT6
	GL_COLOR_ATTACHMENT7
	GL_COLOR_ATTACHMENT8
	GL_COLOR_ATTACHMENT9
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
	GL_COLOR_ATTACHMENT30
	GL_COLOR_ATTACHMENT31
	GL_DEPTH_ATTACHMENT
	GL_STENCIL_ATTACHMENT
	GL_FRAMEBUFFER
	GL_RENDERBUFFER
	GL_RENDERBUFFER_WIDTH
	GL_RENDERBUFFER_HEIGHT
	GL_RENDERBUFFER_INTERNAL_FORMAT
	GL_STENCIL_INDEX1
	GL_STENCIL_INDEX4
	GL_STENCIL_INDEX8
	GL_STENCIL_INDEX16
	GL_RENDERBUFFER_RED_SIZE
	GL_RENDERBUFFER_GREEN_SIZE
	GL_RENDERBUFFER_BLUE_SIZE
	GL_RENDERBUFFER_ALPHA_SIZE
	GL_RENDERBUFFER_DEPTH_SIZE
	GL_RENDERBUFFER_STENCIL_SIZE
	GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
	GL_MAX_SAMPLES
	GL_INDEX
	GL_TEXTURE_LUMINANCE_TYPE
	GL_TEXTURE_INTENSITY_TYPE
	GL_FRAMEBUFFER_SRGB
	GL_HALF_FLOAT
	GL_MAP_READ_BIT
	GL_MAP_WRITE_BIT
	GL_MAP_INVALIDATE_RANGE_BIT
	GL_MAP_INVALIDATE_BUFFER_BIT
	GL_MAP_FLUSH_EXPLICIT_BIT
	GL_MAP_UNSYNCHRONIZED_BIT
	GL_COMPRESSED_RED_RGTC1
	GL_COMPRESSED_SIGNED_RED_RGTC1
	GL_COMPRESSED_RG_RGTC2
	GL_COMPRESSED_SIGNED_RG_RGTC2
	GL_RG
	GL_RG_INTEGER
	GL_R8
	GL_R16
	GL_RG8
	GL_RG16
	GL_R16F
	GL_R32F
	GL_RG16F
	GL_RG32F
	GL_R8I
	GL_R8UI
	GL_R16I
	GL_R16UI
	GL_R32I
	GL_R32UI
	GL_RG8I
	GL_RG8UI
	GL_RG16I
	GL_RG16UI
	GL_RG32I
	GL_RG32UI
	GL_VERTEX_ARRAY_BINDING
	GL_CLAMP_VERTEX_COLOR
	GL_CLAMP_FRAGMENT_COLOR
	GL_ALPHA_INTEGER
)

pub fn color_maski(index u32, r bool, g bool, b bool, a bool) {
	C.glColorMaski(index, r, g, b, a)
}

// TODO
pub fn get_booleani_v(target u32, index u32, data []bool) {
	C.glGetBooleani_v(target, index, data.data)
}

// TODO
pub fn get_integeri_v(target u32, index u32, data []int) {
	C.glGetIntegeri_v(target, index, data.data)
}

pub fn enablei(target u32, index u32) {
	C.glEnablei(target, index)
}

pub fn disablei(target u32, index u32) {
	C.glDisablei(target, index)
}

pub fn is_enabledi(target u32, index u32) bool {
	return C.glIsEnabledi(target, index)
}

pub fn begin_transform_feedback(primitiveMode u32) {
	C.glBeginTransformFeedback(primitiveMode)
}

pub fn end_transform_feedback() {
	C.glEndTransformFeedback()
}

pub fn bind_buffer_range(target u32, index u32, buffer u32, offset []int, size []int) {
	C.glBindBufferRange(target, index, buffer, offset.data, size.data)
}

pub fn bind_buffer_base(target u32, index u32, buffer u32) {
	C.glBindBufferBase(target, index, buffer)
}

// TODO
pub fn transform_feedback_varyings(program u32, count int, varyings voidptr, bufferMode u32) {
	C.glTransformFeedbackVaryings(program, count, varyings, bufferMode)
}

// TODO
pub fn get_transform_feedback_varying(program u32, index u32, bufSize int, length []int, size []int, type_ []u32, name string) {
	C.glGetTransformFeedbackVarying(program, index, bufSize, length.data, size.data, type_.data, name.str)
}

pub fn clamp_color(target u32, clamp u32) {
	C.glClampColor(target, clamp)
}

pub fn begin_conditional_render(id u32, mode u32) {
	C.glBeginConditionalRender(id, mode)
}

pub fn end_conditional_render() {
	C.glEndConditionalRender()
}

// TODO
pub fn vertex_attrib_i_pointer(index u32, size int, type_ u32, stride int, pointer voidptr) {
	C.glVertexAttribIPointer(index, size, type_, stride, pointer)
}

// TODO
pub fn get_vertex_attrib_iiv(index u32, pname u32, params []int) {
	C.glGetVertexAttribIiv(index, pname, params.data)
}

// TODO
pub fn get_vertex_attrib_iuiv(index u32, pname u32, params []u32) {
	C.glGetVertexAttribIuiv(index, pname, params.data)
}

pub fn vertex_attrib_i1i(index u32, x int) {
	C.glVertexAttribI1i(index, x)
}

pub fn vertex_attrib_i2i(index u32, x int, y int) {
	C.glVertexAttribI2i(index, x, y)
}

pub fn vertex_attrib_i3i(index u32, x int, y int, z int) {
	C.glVertexAttribI3i(index, x, y, z)
}

pub fn vertex_attrib_i4i(index u32, x int, y int, z int, w int) {
	C.glVertexAttribI4i(index, x, y, z, w)
}

pub fn vertex_attrib_i1ui(index u32, x u32) {
	C.glVertexAttribI1ui(index, x)
}

pub fn vertex_attrib_i2ui(index u32, x u32, y u32) {
	C.glVertexAttribI2ui(index, x, y)
}

pub fn vertex_attrib_i3ui(index u32, x u32, y u32, z u32) {
	C.glVertexAttribI3ui(index, x, y, z)
}

pub fn vertex_attrib_i4ui(index u32, x u32, y u32, z u32, w u32) {
	C.glVertexAttribI4ui(index, x, y, z, w)
}

// TODO
pub fn vertex_attrib_i1iv(index u32, v []int) {
	C.glVertexAttribI1iv(index, v.data)
}

// TODO
pub fn vertex_attrib_i2iv(index u32, v []int) {
	C.glVertexAttribI2iv(index, v.data)
}

// TODO
pub fn vertex_attrib_i3iv(index u32, v []int) {
	C.glVertexAttribI3iv(index, v.data)
}

// TODO
pub fn vertex_attrib_i4iv(index u32, v []int) {
	C.glVertexAttribI4iv(index, v.data)
}

// TODO
pub fn vertex_attrib_i1uiv(index u32, v []u32) {
	C.glVertexAttribI1uiv(index, v.data)
}

// TODO
pub fn vertex_attrib_i2uiv(index u32, v []u32) {
	C.glVertexAttribI2uiv(index, v.data)
}

// TODO
pub fn vertex_attrib_i3uiv(index u32, v []u32) {
	C.glVertexAttribI3uiv(index, v.data)
}

// TODO
pub fn vertex_attrib_i4uiv(index u32, v []u32) {
	C.glVertexAttribI4uiv(index, v.data)
}

// TODO
pub fn vertex_attrib_i4bv(index u32, v []i8) {
	C.glVertexAttribI4bv(index, v.data)
}

// TODO
pub fn vertex_attrib_i4sv(index u32, v []i16) {
	C.glVertexAttribI4sv(index, v.data)
}

// TODO
pub fn vertex_attrib_i4ubv(index u32, v []u8) {
	C.glVertexAttribI4ubv(index, v.data)
}

// TODO
pub fn vertex_attrib_i4usv(index u32, v []u16) {
	C.glVertexAttribI4usv(index, v.data)
}

// TODO
pub fn get_uniformuiv(program u32, location int, params []u32) {
	C.glGetUniformuiv(program, location, params.data)
}

// TODO
pub fn bind_frag_data_location(program u32, color u32, name string) {
	C.glBindFragDataLocation(program, color, name.str)
}

// TODO
pub fn get_frag_data_location(program u32, name string) int {
	return C.glGetFragDataLocation(program, name.str)
}

pub fn uniform1ui(location int, v0 u32) {
	C.glUniform1ui(location, v0)
}

pub fn uniform2ui(location int, v0 u32, v1 u32) {
	C.glUniform2ui(location, v0, v1)
}

pub fn uniform3ui(location int, v0 u32, v1 u32, v2 u32) {
	C.glUniform3ui(location, v0, v1, v2)
}

pub fn uniform4ui(location int, v0 u32, v1 u32, v2 u32, v3 u32) {
	C.glUniform4ui(location, v0, v1, v2, v3)
}

// TODO
pub fn uniform1uiv(location int, count int, value []u32) {
	C.glUniform1uiv(location, count, value.data)
}

// TODO
pub fn uniform2uiv(location int, count int, value []u32) {
	C.glUniform2uiv(location, count, value.data)
}

// TODO
pub fn uniform3uiv(location int, count int, value []u32) {
	C.glUniform3uiv(location, count, value.data)
}

// TODO
pub fn uniform4uiv(location int, count int, value []u32) {
	C.glUniform4uiv(location, count, value.data)
}

// TODO
pub fn tex_parameter_iiv(target u32, pname u32, params []int) {
	C.glTexParameterIiv(target, pname, params.data)
}

// TODO
pub fn tex_parameter_iuiv(target u32, pname u32, params []u32) {
	C.glTexParameterIuiv(target, pname, params.data)
}

// TODO
pub fn get_tex_parameter_iiv(target u32, pname u32, params []int) {
	C.glGetTexParameterIiv(target, pname, params.data)
}

// TODO
pub fn get_tex_parameter_iuiv(target u32, pname u32, params []u32) {
	C.glGetTexParameterIuiv(target, pname, params.data)
}

// TODO
pub fn clear_bufferiv(buffer u32, drawbuffer int, value []int) {
	C.glClearBufferiv(buffer, drawbuffer, value.data)
}

// TODO
pub fn clear_bufferuiv(buffer u32, drawbuffer int, value []u32) {
	C.glClearBufferuiv(buffer, drawbuffer, value.data)
}

// TODO
pub fn clear_bufferfv(buffer u32, drawbuffer int, value []f32) {
	C.glClearBufferfv(buffer, drawbuffer, value.data)
}

pub fn clear_bufferfi(buffer u32, drawbuffer int, depth f32, stencil int) {
	C.glClearBufferfi(buffer, drawbuffer, depth, stencil)
}

// TODO
pub fn get_stringi(name u32, index u32) []u8 {
	return C.glGetStringi(name, index)
}

pub fn is_renderbuffer(renderbuffer u32) bool {
	return C.glIsRenderbuffer(renderbuffer)
}

pub fn bind_renderbuffer(target u32, renderbuffer u32) {
	C.glBindRenderbuffer(target, renderbuffer)
}

// TODO
pub fn delete_renderbuffers(n int, renderbuffers []u32) {
	C.glDeleteRenderbuffers(n, renderbuffers.data)
}

// TODO
pub fn gen_renderbuffers(n int, renderbuffers []u32) {
	C.glGenRenderbuffers(n, renderbuffers.data)
}

pub fn renderbuffer_storage(target u32, internalformat u32, width int, height int) {
	C.glRenderbufferStorage(target, internalformat, width, height)
}

// TODO
pub fn get_renderbuffer_parameteriv(target u32, pname u32, params []int) {
	C.glGetRenderbufferParameteriv(target, pname, params.data)
}

pub fn is_framebuffer(framebuffer u32) bool {
	return C.glIsFramebuffer(framebuffer)
}

pub fn bind_framebuffer(target u32, framebuffer u32) {
	C.glBindFramebuffer(target, framebuffer)
}

// TODO
pub fn delete_framebuffers(n int, framebuffers []u32) {
	C.glDeleteFramebuffers(n, framebuffers.data)
}

// TODO
pub fn gen_framebuffers(n int, framebuffers []u32) {
	C.glGenFramebuffers(n, framebuffers.data)
}

pub fn check_framebuffer_status(target u32) u32 {
	return C.glCheckFramebufferStatus(target)
}

pub fn framebuffer_texture1_d(target u32, attachment u32, textarget u32, texture u32, level int) {
	C.glFramebufferTexture1D(target, attachment, textarget, texture, level)
}

pub fn framebuffer_texture2_d(target u32, attachment u32, textarget u32, texture u32, level int) {
	C.glFramebufferTexture2D(target, attachment, textarget, texture, level)
}

pub fn framebuffer_texture3_d(target u32, attachment u32, textarget u32, texture u32, level int, zoffset int) {
	C.glFramebufferTexture3D(target, attachment, textarget, texture, level, zoffset)
}

pub fn framebuffer_renderbuffer(target u32, attachment u32, renderbuffertarget u32, renderbuffer u32) {
	C.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer)
}

// TODO
pub fn get_framebuffer_attachment_parameteriv(target u32, attachment u32, pname u32, params []int) {
	C.glGetFramebufferAttachmentParameteriv(target, attachment, pname, params.data)
}

pub fn generate_mipmap(target u32) {
	C.glGenerateMipmap(target)
}

pub fn blit_framebuffer(srcX0 int, srcY0 int, srcX1 int, srcY1 int, dstX0 int, dstY0 int, dstX1 int, dstY1 int, mask u32, filter u32) {
	C.glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)
}

pub fn renderbuffer_storage_multisample(target u32, samples int, internalformat u32, width int, height int) {
	C.glRenderbufferStorageMultisample(target, samples, internalformat, width, height)
}

pub fn framebuffer_texture_layer(target u32, attachment u32, texture u32, level int, layer int) {
	C.glFramebufferTextureLayer(target, attachment, texture, level, layer)
}

// TODO
pub fn map_buffer_range(target u32, offset []int, length []int, access u32) voidptr {
	return C.glMapBufferRange(target, offset.data, length.data, access)
}

pub fn flush_mapped_buffer_range(target u32, offset []int, length []int) {
	C.glFlushMappedBufferRange(target, offset.data, length.data)
}

pub fn bind_vertex_array(array u32) {
	C.glBindVertexArray(array)
}

// TODO
pub fn delete_vertex_arrays(n int, arrays []u32) {
	C.glDeleteVertexArrays(n, arrays.data)
}

// TODO
pub fn gen_vertex_arrays(n int, arrays []u32) {
	C.glGenVertexArrays(n, arrays.data)
}

pub fn is_vertex_array(array u32) bool {
	return C.glIsVertexArray(array)
}
