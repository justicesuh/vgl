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

pub fn buffer_data(target int, data []f64, usage int) {
	C.glBufferData(target, data, usage)
}

pub fn buffer_data(target int, data []f32, usage int) {
	C.glBufferData(target, data, usage)
}

pub fn buffer_data(target int, data []int, usage int) {
	C.glBufferData(target, data, usage)
}

pub fn buffer_data(target int, data []i64, usage int) {
	C.glBufferData(target, data, usage)
}

pub fn buffer_data(target int, size i64, usage int) {
	C.glBufferData(target, size, usage)
}

pub fn buffer_data(target int, data []i16, usage int) {
	C.glBufferData(target, data, usage)
}

pub fn buffer_data(target int, data voidptr, usage int) {
	C.glBufferData(target, data, usage)
}

pub fn buffer_data(target int, data voidptr, usage int) {
	C.glBufferData(target, data, usage)
}

pub fn buffer_data(target int, data voidptr, usage int) {
	C.glBufferData(target, data, usage)
}

pub fn buffer_data(target int, data voidptr, usage int) {
	C.glBufferData(target, data, usage)
}

pub fn buffer_data(target int, data voidptr, usage int) {
	C.glBufferData(target, data, usage)
}

pub fn buffer_data(target int, data voidptr, usage int) {
	C.glBufferData(target, data, usage)
}

pub fn buffer_sub_data(target int, offset i64, data []f64) {
	C.glBufferSubData(target, offset, data)
}

pub fn buffer_sub_data(target int, offset i64, data []f32) {
	C.glBufferSubData(target, offset, data)
}

pub fn buffer_sub_data(target int, offset i64, data []int) {
	C.glBufferSubData(target, offset, data)
}

pub fn buffer_sub_data(target int, offset i64, data []i64) {
	C.glBufferSubData(target, offset, data)
}

pub fn buffer_sub_data(target int, offset i64, data []i16) {
	C.glBufferSubData(target, offset, data)
}

pub fn buffer_sub_data(target int, offset i64, data voidptr) {
	C.glBufferSubData(target, offset, data)
}

pub fn buffer_sub_data(target int, offset i64, data voidptr) {
	C.glBufferSubData(target, offset, data)
}

pub fn buffer_sub_data(target int, offset i64, data voidptr) {
	C.glBufferSubData(target, offset, data)
}

pub fn buffer_sub_data(target int, offset i64, data voidptr) {
	C.glBufferSubData(target, offset, data)
}

pub fn buffer_sub_data(target int, offset i64, data voidptr) {
	C.glBufferSubData(target, offset, data)
}

pub fn buffer_sub_data(target int, offset i64, data voidptr) {
	C.glBufferSubData(target, offset, data)
}

pub fn delete_buffers(buffer int) {
	C.glDeleteBuffers(buffer)
}

pub fn delete_buffers(buffers []int) {
	C.glDeleteBuffers(buffers)
}

pub fn delete_buffers(buffers voidptr) {
	C.glDeleteBuffers(buffers)
}

pub fn delete_queries(id int) {
	C.glDeleteQueries(id)
}

pub fn delete_queries(ids []int) {
	C.glDeleteQueries(ids)
}

pub fn delete_queries(ids voidptr) {
	C.glDeleteQueries(ids)
}

pub fn end_query(target int) {
	C.glEndQuery(target)
}

pub fn gen_buffers() int {
	return C.glGenBuffers()
}

pub fn gen_buffers(buffers []int) {
	C.glGenBuffers(buffers)
}

pub fn gen_buffers(buffers voidptr) {
	C.glGenBuffers(buffers)
}

pub fn gen_queries() int {
	return C.glGenQueries()
}

pub fn gen_queries(ids []int) {
	C.glGenQueries(ids)
}

pub fn gen_queries(ids voidptr) {
	C.glGenQueries(ids)
}

pub fn get_buffer_parameteri(target int, pname int) int {
	return C.glGetBufferParameteri(target, pname)
}

pub fn get_buffer_parameteriv(target int, pname int, params []int) {
	C.glGetBufferParameteriv(target, pname, params)
}

pub fn get_buffer_parameteriv(target int, pname int, params voidptr) {
	C.glGetBufferParameteriv(target, pname, params)
}

pub fn get_buffer_pointer(target int, pname int) i64 {
	return C.glGetBufferPointer(target, pname)
}

pub fn get_buffer_pointerv(target int, pname int, params *voidptr) {
	C.glGetBufferPointerv(target, pname, params)
}

pub fn get_buffer_sub_data(target int, offset i64, data []f64) {
	C.glGetBufferSubData(target, offset, data)
}

pub fn get_buffer_sub_data(target int, offset i64, data []f32) {
	C.glGetBufferSubData(target, offset, data)
}

pub fn get_buffer_sub_data(target int, offset i64, data []int) {
	C.glGetBufferSubData(target, offset, data)
}

pub fn get_buffer_sub_data(target int, offset i64, data []i64) {
	C.glGetBufferSubData(target, offset, data)
}

pub fn get_buffer_sub_data(target int, offset i64, data []i16) {
	C.glGetBufferSubData(target, offset, data)
}

pub fn get_buffer_sub_data(target int, offset i64, data voidptr) {
	C.glGetBufferSubData(target, offset, data)
}

pub fn get_buffer_sub_data(target int, offset i64, data voidptr) {
	C.glGetBufferSubData(target, offset, data)
}

pub fn get_buffer_sub_data(target int, offset i64, data voidptr) {
	C.glGetBufferSubData(target, offset, data)
}

pub fn get_buffer_sub_data(target int, offset i64, data voidptr) {
	C.glGetBufferSubData(target, offset, data)
}

pub fn get_buffer_sub_data(target int, offset i64, data voidptr) {
	C.glGetBufferSubData(target, offset, data)
}

pub fn get_buffer_sub_data(target int, offset i64, data voidptr) {
	C.glGetBufferSubData(target, offset, data)
}

pub fn get_queryi(target int, pname int) int {
	return C.glGetQueryi(target, pname)
}

pub fn get_queryiv(target int, pname int, params []int) {
	C.glGetQueryiv(target, pname, params)
}

pub fn get_queryiv(target int, pname int, params voidptr) {
	C.glGetQueryiv(target, pname, params)
}

pub fn get_query_objecti(id int, pname int) int {
	return C.glGetQueryObjecti(id, pname)
}

pub fn get_query_objectiv(id int, pname int, params []int) {
	C.glGetQueryObjectiv(id, pname, params)
}

pub fn get_query_objectiv(id int, pname int, params voidptr) {
	C.glGetQueryObjectiv(id, pname, params)
}

pub fn get_query_objectui(id int, pname int) int {
	return C.glGetQueryObjectui(id, pname)
}

pub fn get_query_objectuiv(id int, pname int, params []int) {
	C.glGetQueryObjectuiv(id, pname, params)
}

pub fn get_query_objectuiv(id int, pname int, params voidptr) {
	C.glGetQueryObjectuiv(id, pname, params)
}

pub fn is_buffer(buffer int) bool {
	return C.glIsBuffer(buffer)
}

pub fn is_query(id int) bool {
	return C.glIsQuery(id)
}

pub fn map_buffer(target int, access int) voidptr {
	return C.glMapBuffer(target, access)
}

pub fn map_buffer(target int, access int, length i64, old_buffer voidptr) voidptr {
	return C.glMapBuffer(target, access, length, old_buffer)
}

pub fn map_buffer(target int, access int, old_buffer voidptr) voidptr {
	return C.glMapBuffer(target, access, old_buffer)
}

pub fn unmap_buffer(target int) bool {
	return C.glUnmapBuffer(target)
}
