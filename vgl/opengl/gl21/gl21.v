module gl21

#flag  -I @VROOT/thirdparty/glad
#flag @VROOT/thirdparty/glad/glad.o

#include <glad.h>

import const (
	GL_COMPRESSED_SLUMINANCE
	GL_COMPRESSED_SLUMINANCE_ALPHA
	GL_COMPRESSED_SRGB
	GL_COMPRESSED_SRGB_ALPHA
	GL_CURRENT_RASTER_SECONDARY_COLOR
	GL_FLOAT_MAT2x3
	GL_FLOAT_MAT2x4
	GL_FLOAT_MAT3x2
	GL_FLOAT_MAT3x4
	GL_FLOAT_MAT4x2
	GL_FLOAT_MAT4x3
	GL_PIXEL_PACK_BUFFER
	GL_PIXEL_PACK_BUFFER_BINDING
	GL_PIXEL_UNPACK_BUFFER
	GL_PIXEL_UNPACK_BUFFER_BINDING
	GL_SLUMINANCE
	GL_SLUMINANCE_ALPHA
	GL_SLUMINANCE8
	GL_SLUMINANCE8_ALPHA8
	GL_SRGB
	GL_SRGB_ALPHA
	GL_SRGB8
	GL_SRGB8_ALPHA8
)

pub fn uniform_matrix2x3fv(location int, transpose bool, value []f32) {
	C.glUniformMatrix2x3fv(location, value.len, transpose, value.data)
}

pub fn uniform_matrix2x4fv(location int, transpose bool, value []f32) {
	C.glUniformMatrix2x4fv(location, value.len, transpose, value.data)
}

pub fn uniform_matrix3x2fv(location int, transpose bool, value []f32) {
	C.glUniformMatrix3x2fv(location, value.len, transpose, value.data)
}

pub fn uniform_matrix3x4fv(location int, transpose bool, value []f32) {
	C.glUniformMatrix3x4fv(location, value.len, transpose, value.data)
}

pub fn uniform_matrix4x2fv(location int, transpose bool, value []f32) {
	C.glUniformMatrix4x2fv(location, value.len, transpose, value.data)
}

pub fn uniform_matrix4x3fv(location int, transpose bool, value []f32) {
	C.glUniformMatrix4x3fv(location, value.len, transpose, value.data)
}
