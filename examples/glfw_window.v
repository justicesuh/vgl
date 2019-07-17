import vgl.opengl.gl11
import vgl.opengl.gl12
import vgl.opengl.gl13
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

	glfw.set_key_callback(window, key_down)
	glfw.show_window(window)

	glfw.make_context_current(window)

	gl11.init_glad()

	for {
		if glfw.window_should_close(window) {
			break
		}

		gl11.clear_color(1, 0, 0, 0)
		gl11.clear(GL_COLOR_BUFFER_BIT)

		glfw.swap_buffers(window)
		glfw.poll_events()
	}

	glfw.destroy_window(window)

	glfw.terminate()
}
