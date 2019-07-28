import vgl.opengl.gl10
import vgl.glfw

fn key_down(window i64, key, code, action, mods int) {
	switch key {
	case GLFW_KEY_ESCAPE:
		glfw.set_window_should_close(window, true)
 	}
}

fn main() {
	glfw.init()
	glfw.window_hint(GLFW_VISIBLE, GLFW_TRUE)
	glfw.window_hint(GLFW_RESIZABLE, GLFW_TRUE)
	glfw.window_hint(GLFW_CONTEXT_VERSION_MAJOR, 3)
	glfw.window_hint(GLFW_CONTEXT_VERSION_MINOR, 2)

	window := glfw.create_window(600, 400, 'GLFW Window', 0, 0)

	glfw.set_key_callback(window.handle, key_down)
	window.show()

	window.make_context_current()

	gl10.init_glad()

	for {
		if window.should_close() {
			break
		}

		gl10.clear_color(1, 0, 0, 0)
		gl10.clear(u32(GL_COLOR_BUFFER_BIT))

		window.swap_buffers()
		glfw.poll_events()
	}

	window.destroy()

	glfw.terminate()
}
