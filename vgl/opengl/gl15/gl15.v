module gl15

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_BUFFER_SIZE
	GL_BUFFER_USAGE
	GL_QUERY_COUNTER_BITS
	GL_CURRENT_QUERY
	GL_QUERY_RESULT
	GL_QUERY_RESULT_AVAILABLE
	GL_ARRAY_BUFFER
	GL_ELEMENT_ARRAY_BUFFER
	GL_ARRAY_BUFFER_BINDING
	GL_ELEMENT_ARRAY_BUFFER_BINDING
	GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING
	GL_READ_ONLY
	GL_WRITE_ONLY
	GL_READ_WRITE
	GL_BUFFER_ACCESS
	GL_BUFFER_MAPPED
	GL_BUFFER_MAP_POINTER
	GL_STREAM_DRAW
	GL_STREAM_READ
	GL_STREAM_COPY
	GL_STATIC_DRAW
	GL_STATIC_READ
	GL_STATIC_COPY
	GL_DYNAMIC_DRAW
	GL_DYNAMIC_READ
	GL_DYNAMIC_COPY
	GL_SAMPLES_PASSED
	GL_SRC1_ALPHA
	GL_VERTEX_ARRAY_BUFFER_BINDING
	GL_NORMAL_ARRAY_BUFFER_BINDING
	GL_COLOR_ARRAY_BUFFER_BINDING
	GL_INDEX_ARRAY_BUFFER_BINDING
	GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
	GL_EDGE_FLAG_ARRAY_BUFFER_BINDING
	GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING
	GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING
	GL_WEIGHT_ARRAY_BUFFER_BINDING
	GL_FOG_COORD_SRC
	GL_FOG_COORD
	GL_CURRENT_FOG_COORD
	GL_FOG_COORD_ARRAY_TYPE
	GL_FOG_COORD_ARRAY_STRIDE
	GL_FOG_COORD_ARRAY_POINTER
	GL_FOG_COORD_ARRAY
	GL_FOG_COORD_ARRAY_BUFFER_BINDING
	GL_SRC0_RGB
	GL_SRC1_RGB
	GL_SRC2_RGB
	GL_SRC0_ALPHA
	GL_SRC2_ALPHA
)

pub fn init_glad() int {
	return C.gladLoadGL()
}

// TODO
pub fn gen_queries(n int, ids []u32) {
	C.glGenQueries(n, ids.data)
}

// TODO
pub fn delete_queries(n int, ids []u32) {
	C.glDeleteQueries(n, ids.data)
}

pub fn is_query(id u32) bool {
	return C.glIsQuery(id)
}

pub fn begin_query(target u32, id u32) {
	C.glBeginQuery(target, id)
}

pub fn end_query(target u32) {
	C.glEndQuery(target)
}

// TODO
pub fn get_queryiv(target u32, pname u32, params []int) {
	C.glGetQueryiv(target, pname, params.data)
}

// TODO
pub fn get_query_objectiv(id u32, pname u32, params []int) {
	C.glGetQueryObjectiv(id, pname, params.data)
}

// TODO
pub fn get_query_objectuiv(id u32, pname u32, params []u32) {
	C.glGetQueryObjectuiv(id, pname, params.data)
}

pub fn bind_buffer(target u32, buffer u32) {
	C.glBindBuffer(target, buffer)
}

// TODO
pub fn delete_buffers(n int, buffers []u32) {
	C.glDeleteBuffers(n, buffers.data)
}

// TODO
pub fn gen_buffers(n int, buffers []u32) {
	C.glGenBuffers(n, buffers.data)
}

pub fn is_buffer(buffer u32) bool {
	return C.glIsBuffer(buffer)
}

// TODO
pub fn buffer_data(target u32, size []int, data voidptr, usage u32) {
	C.glBufferData(target, size, data, usage)
}

// TODO
pub fn buffer_sub_data(target u32, offset []int, size []int, data voidptr) {
	C.glBufferSubData(target, offset, size, data)
}

// TODO
pub fn get_buffer_sub_data(target u32, offset []int, size []int, data voidptr) {
	C.glGetBufferSubData(target, offset, size, data)
}

// TODO
pub fn map_buffer(target u32, access u32) voidptr {
	return C.glMapBuffer(target, access)
}

pub fn unmap_buffer(target u32) bool {
	return C.glUnmapBuffer(target)
}

// TODO
pub fn get_buffer_parameteriv(target u32, pname u32, params []int) {
	C.glGetBufferParameteriv(target, pname, params.data)
}

// TODO
pub fn get_buffer_pointerv(target u32, pname u32, params voidptr) {
	C.glGetBufferPointerv(target, pname, params)
}
