module gl15

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_ARRAY_BUFFER
	GL_ARRAY_BUFFER_BINDING
	GL_BUFFER_ACCESS
	GL_BUFFER_MAP_POINTER
	GL_BUFFER_MAPPED
	GL_BUFFER_SIZE
	GL_BUFFER_USAGE
	GL_COLOR_ARRAY_BUFFER_BINDING
	GL_CURRENT_FOG_COORD
	GL_CURRENT_QUERY
	GL_DYNAMIC_COPY
	GL_DYNAMIC_DRAW
	GL_DYNAMIC_READ
	GL_EDGE_FLAG_ARRAY_BUFFER_BINDING
	GL_ELEMENT_ARRAY_BUFFER
	GL_ELEMENT_ARRAY_BUFFER_BINDING
	GL_FOG_COORD
	GL_FOG_COORD_ARRAY
	GL_FOG_COORD_ARRAY_BUFFER_BINDING
	GL_FOG_COORD_ARRAY_POINTER
	GL_FOG_COORD_ARRAY_STRIDE
	GL_FOG_COORD_ARRAY_TYPE
	GL_FOG_COORD_SRC
	GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING
	GL_INDEX_ARRAY_BUFFER_BINDING
	GL_NORMAL_ARRAY_BUFFER_BINDING
	GL_QUERY_COUNTER_BITS
	GL_QUERY_RESULT
	GL_QUERY_RESULT_AVAILABLE
	GL_READ_ONLY
	GL_READ_WRITE
	GL_SAMPLES_PASSED
	GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING
	GL_SRC0_ALPHA
	GL_SRC0_RGB
	GL_SRC1_ALPHA
	GL_SRC1_RGB
	GL_SRC2_ALPHA
	GL_SRC2_RGB
	GL_STATIC_COPY
	GL_STATIC_DRAW
	GL_STATIC_READ
	GL_STREAM_COPY
	GL_STREAM_DRAW
	GL_STREAM_READ
	GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
	GL_VERTEX_ARRAY_BUFFER_BINDING
	GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING
	GL_WEIGHT_ARRAY_BUFFER_BINDING
	GL_WRITE_ONLY
)

pub fn begin_query(target int, id int) {
	C.glBeginQuery(target, id)
}

pub fn bind_buffer(target int, buffer int) {
	C.glBindBuffer(target, buffer)
}

// TODO
pub fn buffer_data(target int, data voidptr, usage int) {
	C.glBufferData(target, 0, data, usage)
}

// TODO
pub fn buffer_sub_data(target int, offset int, data voidptr) {
	C.glBufferSubData(target, offset, 0, data)
}

pub fn delete_buffer(buffers []u32) {
	C.glDeleteBuffers(buffers.len, buffers.data)
}

pub fn delete_queries(ids []u32) {
	C.glDeleteQueries(ids.len, ids.data)
}

pub fn end_query(target int, id int) {
	C.glEndQuery(target, id)
}

pub fn get_buffers(size int) []u32 {
	buffers := [u32(0); size]
	C.glGenBuffers(size, buffers.data)
	return buffers
}

pub fn gen_queries(size int) []u32 {
	ids := [u32(0); size]
	C.glGenQueries(size, ids.data)
	return ids
}

pub fn get_buffer_parameteri(target int, pname int) int {
	return C.glGetBufferParameteri(target, pname)
}

pub fn get_buffer_parameteriv(target int, pname int, params []int) {
	C.glGetBufferParameteriv(target, pname, params.data)
}

pub fn get_buffer_pointer(target int, pname int) i64 {
	return C.glGetBufferPointer(target, pname)
}

// TODO
pub fn get_buffer_pointerv(target int, pname int, params *voidptr) {
	C.glGetBufferPointerv(target, pname, params)
}

// TODO
pub fn get_buffer_sub_data(target int, offset int, data voidptr) {
	C.glGetBufferSubData(target, offset, 0, data)
}

pub fn get_queryi(target int, pname int) int {
	return C.glGetQueryi(target, pname)
}

pub fn get_queryiv(target int, pname int, params []int) {
	C.glGetQueryiv(target, pname, params.data)
}

pub fn get_query_objecti(id int, pname int) int {
	return C.glGetQueryObjecti(id, pname)
}

pub fn get_query_objectiv(id int, pname int, params []int) {
	C.glGetQueryObjectiv(id, pname, params.data)
}

pub fn get_query_objectui(id int, pname int) int {
	return C.glGetQueryObjectui(id, pname)
}

pub fn get_query_objectuiv(id int, pname int, params []int) {
	C.glGetQueryObjectuiv(id, pname, params.data)
}

pub fn is_buffer(buffer int) bool {
	return C.glIsBuffer(buffer)
}

pub fn is_query(id int) bool {
	return C.glIsQuery(id)
}

// TODO
pub fn map_buffer(target int, access int) voidptr {
	return C.glMapBuffer(target, access)
}

pub fn unmap_buffer(target u32) bool {
	return C.glUnmapBuffer(target)
}
