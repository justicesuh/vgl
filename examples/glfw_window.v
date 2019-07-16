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

	window := glfw.create_window(600, 400, 'GLFW Window', 0, 0)
	glfw.set_key_callback(window, key_down)
	glfw.show_window(window)

	pos := glfw.get_window_size(window)
	println(pos)

	for {
		if glfw.window_should_close(window) {
			break
		}

		glfw.poll_events()
	}

	glfw.destroy_window(window)

	glfw.terminate()
}
