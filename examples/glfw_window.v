import vgl.glfw

fn key_down(window i64, key, code, action, mods int) {
	switch key {
	case GLFW_KEY_ESCAPE:
		glfw.glfw_set_window_should_close(window, true)
 	}
}

fn main() {
	glfw.glfw_init()
	glfw.glfw_window_hint(GLFW_VISIBLE, GLFW_TRUE)
	glfw.glfw_window_hint(GLFW_RESIZABLE, GLFW_TRUE)

	window := glfw.glfw_create_window(600, 400, 'GLFW Window', 0, 0)
	glfw.glfw_set_key_callback(window, key_down)
	glfw.glfw_show_window(window)

	for {
		if glfw.glfw_window_should_close(window) {
			break
		}

		glfw.glfw_poll_events()
	}

	glfw.glfw_destroy_window(window)

	glfw.glfw_terminate()
}
