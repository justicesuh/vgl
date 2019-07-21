module gl43

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_NUM_SHADING_LANGUAGE_VERSIONS
	GL_VERTEX_ATTRIB_ARRAY_LONG
	GL_COMPRESSED_RGB8_ETC2
	GL_COMPRESSED_SRGB8_ETC2
	GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2
	GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2
	GL_COMPRESSED_RGBA8_ETC2_EAC
	GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC
	GL_COMPRESSED_R11_EAC
	GL_COMPRESSED_SIGNED_R11_EAC
	GL_COMPRESSED_RG11_EAC
	GL_COMPRESSED_SIGNED_RG11_EAC
	GL_PRIMITIVE_RESTART_FIXED_INDEX
	GL_ANY_SAMPLES_PASSED_CONSERVATIVE
	GL_MAX_ELEMENT_INDEX
	GL_COMPUTE_SHADER
	GL_MAX_COMPUTE_UNIFORM_BLOCKS
	GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS
	GL_MAX_COMPUTE_IMAGE_UNIFORMS
	GL_MAX_COMPUTE_SHARED_MEMORY_SIZE
	GL_MAX_COMPUTE_UNIFORM_COMPONENTS
	GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS
	GL_MAX_COMPUTE_ATOMIC_COUNTERS
	GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS
	GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS
	GL_MAX_COMPUTE_WORK_GROUP_COUNT
	GL_MAX_COMPUTE_WORK_GROUP_SIZE
	GL_COMPUTE_WORK_GROUP_SIZE
	GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER
	GL_DISPATCH_INDIRECT_BUFFER
	GL_DISPATCH_INDIRECT_BUFFER_BINDING
	GL_COMPUTE_SHADER_BIT
	GL_DEBUG_OUTPUT_SYNCHRONOUS
	GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH
	GL_DEBUG_CALLBACK_FUNCTION
	GL_DEBUG_CALLBACK_USER_PARAM
	GL_DEBUG_SOURCE_API
	GL_DEBUG_SOURCE_WINDOW_SYSTEM
	GL_DEBUG_SOURCE_SHADER_COMPILER
	GL_DEBUG_SOURCE_THIRD_PARTY
	GL_DEBUG_SOURCE_APPLICATION
	GL_DEBUG_SOURCE_OTHER
	GL_DEBUG_TYPE_ERROR
	GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR
	GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR
	GL_DEBUG_TYPE_PORTABILITY
	GL_DEBUG_TYPE_PERFORMANCE
	GL_DEBUG_TYPE_OTHER
	GL_MAX_DEBUG_MESSAGE_LENGTH
	GL_MAX_DEBUG_LOGGED_MESSAGES
	GL_DEBUG_LOGGED_MESSAGES
	GL_DEBUG_SEVERITY_HIGH
	GL_DEBUG_SEVERITY_MEDIUM
	GL_DEBUG_SEVERITY_LOW
	GL_DEBUG_TYPE_MARKER
	GL_DEBUG_TYPE_PUSH_GROUP
	GL_DEBUG_TYPE_POP_GROUP
	GL_DEBUG_SEVERITY_NOTIFICATION
	GL_MAX_DEBUG_GROUP_STACK_DEPTH
	GL_DEBUG_GROUP_STACK_DEPTH
	GL_BUFFER
	GL_SHADER
	GL_PROGRAM
	GL_VERTEX_ARRAY
	GL_QUERY
	GL_PROGRAM_PIPELINE
	GL_SAMPLER
	GL_MAX_LABEL_LENGTH
	GL_DEBUG_OUTPUT
	GL_CONTEXT_FLAG_DEBUG_BIT
	GL_MAX_UNIFORM_LOCATIONS
	GL_FRAMEBUFFER_DEFAULT_WIDTH
	GL_FRAMEBUFFER_DEFAULT_HEIGHT
	GL_FRAMEBUFFER_DEFAULT_LAYERS
	GL_FRAMEBUFFER_DEFAULT_SAMPLES
	GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
	GL_MAX_FRAMEBUFFER_WIDTH
	GL_MAX_FRAMEBUFFER_HEIGHT
	GL_MAX_FRAMEBUFFER_LAYERS
	GL_MAX_FRAMEBUFFER_SAMPLES
	GL_INTERNALFORMAT_SUPPORTED
	GL_INTERNALFORMAT_PREFERRED
	GL_INTERNALFORMAT_RED_SIZE
	GL_INTERNALFORMAT_GREEN_SIZE
	GL_INTERNALFORMAT_BLUE_SIZE
	GL_INTERNALFORMAT_ALPHA_SIZE
	GL_INTERNALFORMAT_DEPTH_SIZE
	GL_INTERNALFORMAT_STENCIL_SIZE
	GL_INTERNALFORMAT_SHARED_SIZE
	GL_INTERNALFORMAT_RED_TYPE
	GL_INTERNALFORMAT_GREEN_TYPE
	GL_INTERNALFORMAT_BLUE_TYPE
	GL_INTERNALFORMAT_ALPHA_TYPE
	GL_INTERNALFORMAT_DEPTH_TYPE
	GL_INTERNALFORMAT_STENCIL_TYPE
	GL_MAX_WIDTH
	GL_MAX_HEIGHT
	GL_MAX_DEPTH
	GL_MAX_LAYERS
	GL_MAX_COMBINED_DIMENSIONS
	GL_COLOR_COMPONENTS
	GL_DEPTH_COMPONENTS
	GL_STENCIL_COMPONENTS
	GL_COLOR_RENDERABLE
	GL_DEPTH_RENDERABLE
	GL_STENCIL_RENDERABLE
	GL_FRAMEBUFFER_RENDERABLE
	GL_FRAMEBUFFER_RENDERABLE_LAYERED
	GL_FRAMEBUFFER_BLEND
	GL_READ_PIXELS
	GL_READ_PIXELS_FORMAT
	GL_READ_PIXELS_TYPE
	GL_TEXTURE_IMAGE_FORMAT
	GL_TEXTURE_IMAGE_TYPE
	GL_GET_TEXTURE_IMAGE_FORMAT
	GL_GET_TEXTURE_IMAGE_TYPE
	GL_MIPMAP
	GL_MANUAL_GENERATE_MIPMAP
	GL_AUTO_GENERATE_MIPMAP
	GL_COLOR_ENCODING
	GL_SRGB_READ
	GL_SRGB_WRITE
	GL_FILTER
	GL_VERTEX_TEXTURE
	GL_TESS_CONTROL_TEXTURE
	GL_TESS_EVALUATION_TEXTURE
	GL_GEOMETRY_TEXTURE
	GL_FRAGMENT_TEXTURE
	GL_COMPUTE_TEXTURE
	GL_TEXTURE_SHADOW
	GL_TEXTURE_GATHER
	GL_TEXTURE_GATHER_SHADOW
	GL_SHADER_IMAGE_LOAD
	GL_SHADER_IMAGE_STORE
	GL_SHADER_IMAGE_ATOMIC
	GL_IMAGE_TEXEL_SIZE
	GL_IMAGE_COMPATIBILITY_CLASS
	GL_IMAGE_PIXEL_FORMAT
	GL_IMAGE_PIXEL_TYPE
	GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST
	GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST
	GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE
	GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE
	GL_TEXTURE_COMPRESSED_BLOCK_WIDTH
	GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT
	GL_TEXTURE_COMPRESSED_BLOCK_SIZE
	GL_CLEAR_BUFFER
	GL_TEXTURE_VIEW
	GL_VIEW_COMPATIBILITY_CLASS
	GL_FULL_SUPPORT
	GL_CAVEAT_SUPPORT
	GL_IMAGE_CLASS_4_X_32
	GL_IMAGE_CLASS_2_X_32
	GL_IMAGE_CLASS_1_X_32
	GL_IMAGE_CLASS_4_X_16
	GL_IMAGE_CLASS_2_X_16
	GL_IMAGE_CLASS_1_X_16
	GL_IMAGE_CLASS_4_X_8
	GL_IMAGE_CLASS_2_X_8
	GL_IMAGE_CLASS_1_X_8
	GL_IMAGE_CLASS_11_11_10
	GL_IMAGE_CLASS_10_10_10_2
	GL_VIEW_CLASS_128_BITS
	GL_VIEW_CLASS_96_BITS
	GL_VIEW_CLASS_64_BITS
	GL_VIEW_CLASS_48_BITS
	GL_VIEW_CLASS_32_BITS
	GL_VIEW_CLASS_24_BITS
	GL_VIEW_CLASS_16_BITS
	GL_VIEW_CLASS_8_BITS
	GL_VIEW_CLASS_S3TC_DXT1_RGB
	GL_VIEW_CLASS_S3TC_DXT1_RGBA
	GL_VIEW_CLASS_S3TC_DXT3_RGBA
	GL_VIEW_CLASS_S3TC_DXT5_RGBA
	GL_VIEW_CLASS_RGTC1_RED
	GL_VIEW_CLASS_RGTC2_RG
	GL_VIEW_CLASS_BPTC_UNORM
	GL_VIEW_CLASS_BPTC_FLOAT
	GL_UNIFORM
	GL_UNIFORM_BLOCK
	GL_PROGRAM_INPUT
	GL_PROGRAM_OUTPUT
	GL_BUFFER_VARIABLE
	GL_SHADER_STORAGE_BLOCK
	GL_VERTEX_SUBROUTINE
	GL_TESS_CONTROL_SUBROUTINE
	GL_TESS_EVALUATION_SUBROUTINE
	GL_GEOMETRY_SUBROUTINE
	GL_FRAGMENT_SUBROUTINE
	GL_COMPUTE_SUBROUTINE
	GL_VERTEX_SUBROUTINE_UNIFORM
	GL_TESS_CONTROL_SUBROUTINE_UNIFORM
	GL_TESS_EVALUATION_SUBROUTINE_UNIFORM
	GL_GEOMETRY_SUBROUTINE_UNIFORM
	GL_FRAGMENT_SUBROUTINE_UNIFORM
	GL_COMPUTE_SUBROUTINE_UNIFORM
	GL_TRANSFORM_FEEDBACK_VARYING
	GL_ACTIVE_RESOURCES
	GL_MAX_NAME_LENGTH
	GL_MAX_NUM_ACTIVE_VARIABLES
	GL_MAX_NUM_COMPATIBLE_SUBROUTINES
	GL_NAME_LENGTH
	GL_TYPE
	GL_ARRAY_SIZE
	GL_OFFSET
	GL_BLOCK_INDEX
	GL_ARRAY_STRIDE
	GL_MATRIX_STRIDE
	GL_IS_ROW_MAJOR
	GL_ATOMIC_COUNTER_BUFFER_INDEX
	GL_BUFFER_BINDING
	GL_BUFFER_DATA_SIZE
	GL_NUM_ACTIVE_VARIABLES
	GL_ACTIVE_VARIABLES
	GL_REFERENCED_BY_VERTEX_SHADER
	GL_REFERENCED_BY_TESS_CONTROL_SHADER
	GL_REFERENCED_BY_TESS_EVALUATION_SHADER
	GL_REFERENCED_BY_GEOMETRY_SHADER
	GL_REFERENCED_BY_FRAGMENT_SHADER
	GL_REFERENCED_BY_COMPUTE_SHADER
	GL_TOP_LEVEL_ARRAY_SIZE
	GL_TOP_LEVEL_ARRAY_STRIDE
	GL_LOCATION
	GL_LOCATION_INDEX
	GL_IS_PER_PATCH
	GL_SHADER_STORAGE_BUFFER
	GL_SHADER_STORAGE_BUFFER_BINDING
	GL_SHADER_STORAGE_BUFFER_START
	GL_SHADER_STORAGE_BUFFER_SIZE
	GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS
	GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS
	GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS
	GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS
	GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS
	GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS
	GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS
	GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS
	GL_MAX_SHADER_STORAGE_BLOCK_SIZE
	GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT
	GL_SHADER_STORAGE_BARRIER_BIT
	GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES
	GL_DEPTH_STENCIL_TEXTURE_MODE
	GL_TEXTURE_BUFFER_OFFSET
	GL_TEXTURE_BUFFER_SIZE
	GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT
	GL_TEXTURE_VIEW_MIN_LEVEL
	GL_TEXTURE_VIEW_NUM_LEVELS
	GL_TEXTURE_VIEW_MIN_LAYER
	GL_TEXTURE_VIEW_NUM_LAYERS
	GL_TEXTURE_IMMUTABLE_LEVELS
	GL_VERTEX_ATTRIB_BINDING
	GL_VERTEX_ATTRIB_RELATIVE_OFFSET
	GL_VERTEX_BINDING_DIVISOR
	GL_VERTEX_BINDING_OFFSET
	GL_VERTEX_BINDING_STRIDE
	GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET
	GL_MAX_VERTEX_ATTRIB_BINDINGS
	GL_VERTEX_BINDING_BUFFER
	GL_DISPLAY_LIST
	GL_STACK_UNDERFLOW
	GL_STACK_OVERFLOW
)

pub fn init_glad() int {
	return C.gladLoadGL()
}

// TODO
pub fn clear_buffer_data(target u32, internalformat u32, format u32, type_ u32, data voidptr) {
	C.glClearBufferData(target, internalformat, format, type_, data)
}

// TODO
pub fn clear_buffer_sub_data(target u32, internalformat u32, offset []int, size []int, format u32, type_ u32, data voidptr) {
	C.glClearBufferSubData(target, internalformat, offset, size, format, type_, data)
}

pub fn dispatch_compute(num_groups_x u32, num_groups_y u32, num_groups_z u32) {
	C.glDispatchCompute(num_groups_x, num_groups_y, num_groups_z)
}

pub fn dispatch_compute_indirect(indirect []int) {
	C.glDispatchComputeIndirect(indirect)
}

pub fn copy_image_sub_data(srcName u32, srcTarget u32, srcLevel int, srcX int, srcY int, srcZ int, dstName u32, dstTarget u32, dstLevel int, dstX int, dstY int, dstZ int, srcWidth int, srcHeight int, srcDepth int) {
	C.glCopyImageSubData(srcName, srcTarget, srcLevel, srcX, srcY, srcZ, dstName, dstTarget, dstLevel, dstX, dstY, dstZ, srcWidth, srcHeight, srcDepth)
}

pub fn framebuffer_parameteri(target u32, pname u32, param int) {
	C.glFramebufferParameteri(target, pname, param)
}

// TODO
pub fn get_framebuffer_parameteriv(target u32, pname u32, params []int) {
	C.glGetFramebufferParameteriv(target, pname, params.data)
}

// TODO
pub fn get_internalformati64v(target u32, internalformat u32, pname u32, bufSize int, params []i64) {
	C.glGetInternalformati64v(target, internalformat, pname, bufSize, params.data)
}

pub fn invalidate_tex_sub_image(texture u32, level int, xoffset int, yoffset int, zoffset int, width int, height int, depth int) {
	C.glInvalidateTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth)
}

pub fn invalidate_tex_image(texture u32, level int) {
	C.glInvalidateTexImage(texture, level)
}

pub fn invalidate_buffer_sub_data(buffer u32, offset []int, length []int) {
	C.glInvalidateBufferSubData(buffer, offset, length)
}

pub fn invalidate_buffer_data(buffer u32) {
	C.glInvalidateBufferData(buffer)
}

// TODO
pub fn invalidate_framebuffer(target u32, numAttachments int, attachments []u32) {
	C.glInvalidateFramebuffer(target, numAttachments, attachments.data)
}

// TODO
pub fn invalidate_sub_framebuffer(target u32, numAttachments int, attachments []u32, x int, y int, width int, height int) {
	C.glInvalidateSubFramebuffer(target, numAttachments, attachments.data, x, y, width, height)
}

// TODO
pub fn multi_draw_arrays_indirect(mode u32, indirect voidptr, drawcount int, stride int) {
	C.glMultiDrawArraysIndirect(mode, indirect, drawcount, stride)
}

// TODO
pub fn multi_draw_elements_indirect(mode u32, type_ u32, indirect voidptr, drawcount int, stride int) {
	C.glMultiDrawElementsIndirect(mode, type_, indirect, drawcount, stride)
}

// TODO
pub fn get_program_interfaceiv(program u32, programInterface u32, pname u32, params []int) {
	C.glGetProgramInterfaceiv(program, programInterface, pname, params.data)
}

// TODO
pub fn get_program_resource_index(program u32, programInterface u32, name string) u32 {
	return C.glGetProgramResourceIndex(program, programInterface, name.str)
}

// TODO
pub fn get_program_resource_name(program u32, programInterface u32, index u32, bufSize int, length []int, name string) {
	C.glGetProgramResourceName(program, programInterface, index, bufSize, length.data, name.str)
}

// TODO
pub fn get_program_resourceiv(program u32, programInterface u32, index u32, propCount int, props []u32, bufSize int, length []int, params []int) {
	C.glGetProgramResourceiv(program, programInterface, index, propCount, props.data, bufSize, length.data, params.data)
}

// TODO
pub fn get_program_resource_location(program u32, programInterface u32, name string) int {
	return C.glGetProgramResourceLocation(program, programInterface, name.str)
}

// TODO
pub fn get_program_resource_location_index(program u32, programInterface u32, name string) int {
	return C.glGetProgramResourceLocationIndex(program, programInterface, name.str)
}

pub fn shader_storage_block_binding(program u32, storageBlockIndex u32, storageBlockBinding u32) {
	C.glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding)
}

pub fn tex_buffer_range(target u32, internalformat u32, buffer u32, offset []int, size []int) {
	C.glTexBufferRange(target, internalformat, buffer, offset, size)
}

pub fn tex_storage2_d_multisample(target u32, samples int, internalformat u32, width int, height int, fixedsamplelocations bool) {
	C.glTexStorage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations)
}

pub fn tex_storage3_d_multisample(target u32, samples int, internalformat u32, width int, height int, depth int, fixedsamplelocations bool) {
	C.glTexStorage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations)
}

pub fn texture_view(texture u32, target u32, origtexture u32, internalformat u32, minlevel u32, numlevels u32, minlayer u32, numlayers u32) {
	C.glTextureView(texture, target, origtexture, internalformat, minlevel, numlevels, minlayer, numlayers)
}

pub fn bind_vertex_buffer(bindingindex u32, buffer u32, offset []int, stride int) {
	C.glBindVertexBuffer(bindingindex, buffer, offset, stride)
}

pub fn vertex_attrib_format(attribindex u32, size int, type_ u32, normalized bool, relativeoffset u32) {
	C.glVertexAttribFormat(attribindex, size, type_, normalized, relativeoffset)
}

pub fn vertex_attrib_i_format(attribindex u32, size int, type_ u32, relativeoffset u32) {
	C.glVertexAttribIFormat(attribindex, size, type_, relativeoffset)
}

pub fn vertex_attrib_l_format(attribindex u32, size int, type_ u32, relativeoffset u32) {
	C.glVertexAttribLFormat(attribindex, size, type_, relativeoffset)
}

pub fn vertex_attrib_binding(attribindex u32, bindingindex u32) {
	C.glVertexAttribBinding(attribindex, bindingindex)
}

pub fn vertex_binding_divisor(bindingindex u32, divisor u32) {
	C.glVertexBindingDivisor(bindingindex, divisor)
}

// TODO
pub fn debug_message_control(source u32, type_ u32, severity u32, count int, ids []u32, enabled bool) {
	C.glDebugMessageControl(source, type_, severity, count, ids.data, enabled)
}

// TODO
pub fn debug_message_insert(source u32, type_ u32, id u32, severity u32, length int, buf string) {
	C.glDebugMessageInsert(source, type_, id, severity, length, buf.str)
}

// TODO
pub fn debug_message_callback(callback voidptr, userParam voidptr) {
	C.glDebugMessageCallback(callback, userParam)
}

// TODO
pub fn get_debug_message_log(count u32, bufSize int, sources []u32, types []u32, ids []u32, severities []u32, lengths []int, messageLog string) u32 {
	return C.glGetDebugMessageLog(count, bufSize, sources.data, types.data, ids.data, severities.data, lengths.data, messageLog.str)
}

// TODO
pub fn push_debug_group(source u32, id u32, length int, message string) {
	C.glPushDebugGroup(source, id, length, message.str)
}

pub fn pop_debug_group() {
	C.glPopDebugGroup()
}

// TODO
pub fn object_label(identifier u32, name u32, length int, label string) {
	C.glObjectLabel(identifier, name, length, label.str)
}

// TODO
pub fn get_object_label(identifier u32, name u32, bufSize int, length []int, label string) {
	C.glGetObjectLabel(identifier, name, bufSize, length.data, label.str)
}

// TODO
pub fn object_ptr_label(ptr voidptr, length int, label string) {
	C.glObjectPtrLabel(ptr, length, label.str)
}

// TODO
pub fn get_object_ptr_label(ptr voidptr, bufSize int, length []int, label string) {
	C.glGetObjectPtrLabel(ptr, bufSize, length.data, label.str)
}

// TODO
pub fn get_pointerv(pname u32, params voidptr) {
	C.glGetPointerv(pname, params)
}
