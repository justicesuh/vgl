module glfw

#flag -I @VROOT/thirdparty/glfw 
#flag -L @VROOT/thirdparty/glfw

#flag darwin -lglfw
#flag linux -lglfw
#flag windows -lglfw3
#flag -D GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>

import const (
	GLFW_ACCUM_ALPHA_BITS
	GLFW_ACCUM_BLUE_BITS
	GLFW_ACCUM_GREEN_BITS
	GLFW_ACCUM_RED_BITS
	GLFW_ALPHA_BITS
	GLFW_ANY_RELEASE_BEHAVIOR
	GLFW_API_UNAVAILABLE
	GLFW_ARROW_CURSOR
	GLFW_AUTO_ICONIFY
	GLFW_AUX_BUFFERS
	GLFW_BLUE_BITS
	GLFW_CENTER_CURSOR
	GLFW_CLIENT_API
	GLFW_COCOA_CHDIR_RESOURCES
	GLFW_COCOA_FRAME_NAME
	GLFW_COCOA_GRAPHICS_SWITCHING
	GLFW_COCOA_MENUBAR
	GLFW_COCOA_RETINA_FRAMEBUFFER
	GLFW_CONNECTED
	GLFW_CONTEXT_CREATION_API
	GLFW_CONTEXT_NO_ERROR
	GLFW_CONTEXT_RELEASE_BEHAVIOR
	GLFW_CONTEXT_REVISION
	GLFW_CONTEXT_ROBUSTNESS
	GLFW_CONTEXT_VERSION_MAJOR
	GLFW_CONTEXT_VERSION_MINOR
	GLFW_CROSSHAIR_CURSOR
	GLFW_CURSOR
	GLFW_CURSOR_DISABLED
	GLFW_CURSOR_HIDDEN
	GLFW_CURSOR_NORMAL
	GLFW_DECORATED
	GLFW_DEPTH_BITS
	GLFW_DISCONNECTED
	GLFW_DONT_CARE
	GLFW_DOUBLEBUFFER
	GLFW_EGL_CONTEXT_API
	GLFW_FALSE
	GLFW_FLOATING
	GLFW_FOCUS_ON_SHOW
	GLFW_FOCUSED
	GLFW_FORMAT_UNAVAILABLE
	GLFW_GAMEPAD_AXIS_LAST
	GLFW_GAMEPAD_AXIS_LEFT_TRIGGER
	GLFW_GAMEPAD_AXIS_LEFT_X
	GLFW_GAMEPAD_AXIS_LEFT_Y
	GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER
	GLFW_GAMEPAD_AXIS_RIGHT_X
	GLFW_GAMEPAD_AXIS_RIGHT_Y
	GLFW_GAMEPAD_BUTTON_A
	GLFW_GAMEPAD_BUTTON_B
	GLFW_GAMEPAD_BUTTON_BACK
	GLFW_GAMEPAD_BUTTON_CIRCLE
	GLFW_GAMEPAD_BUTTON_CROSS
	GLFW_GAMEPAD_BUTTON_DPAD_DOWN
	GLFW_GAMEPAD_BUTTON_DPAD_LEFT
	GLFW_GAMEPAD_BUTTON_DPAD_RIGHT
	GLFW_GAMEPAD_BUTTON_DPAD_UP
	GLFW_GAMEPAD_BUTTON_GUIDE
	GLFW_GAMEPAD_BUTTON_LAST
	GLFW_GAMEPAD_BUTTON_LEFT_BUMPER
	GLFW_GAMEPAD_BUTTON_LEFT_THUMB
	GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER
	GLFW_GAMEPAD_BUTTON_RIGHT_THUMB
	GLFW_GAMEPAD_BUTTON_SQUARE
	GLFW_GAMEPAD_BUTTON_START
	GLFW_GAMEPAD_BUTTON_TRIANGLE
	GLFW_GAMEPAD_BUTTON_X
	GLFW_GAMEPAD_BUTTON_Y
	GLFW_GREEN_BITS
	GLFW_HAND_CURSOR
	GLFW_HAT_CENTERED
	GLFW_HAT_DOWN
	GLFW_HAT_LEFT
	GLFW_HAT_LEFT_DOWN
	GLFW_HAT_LEFT_UP
	GLFW_HAT_RIGHT
	GLFW_HAT_RIGHT_DOWN
	GLFW_HAT_RIGHT_UP
	GLFW_HAT_UP
	GLFW_HOVERED
	GLFW_HRESIZE_CURSOR
	GLFW_IBEAM_CURSOR
	GLFW_ICONIFIED
	GLFW_INVALID_ENUM
	GLFW_INVALID_VALUE
	GLFW_JOYSTICK_1
	GLFW_JOYSTICK_10
	GLFW_JOYSTICK_11
	GLFW_JOYSTICK_12
	GLFW_JOYSTICK_13
	GLFW_JOYSTICK_14
	GLFW_JOYSTICK_15
	GLFW_JOYSTICK_16
	GLFW_JOYSTICK_2
	GLFW_JOYSTICK_3
	GLFW_JOYSTICK_4
	GLFW_JOYSTICK_5
	GLFW_JOYSTICK_6
	GLFW_JOYSTICK_7
	GLFW_JOYSTICK_8
	GLFW_JOYSTICK_9
	GLFW_JOYSTICK_HAT_BUTTONS
	GLFW_JOYSTICK_LAST
	GLFW_KEY_0
	GLFW_KEY_1
	GLFW_KEY_2
	GLFW_KEY_3
	GLFW_KEY_4
	GLFW_KEY_5
	GLFW_KEY_6
	GLFW_KEY_7
	GLFW_KEY_8
	GLFW_KEY_9
	GLFW_KEY_A
	GLFW_KEY_APOSTROPHE
	GLFW_KEY_B
	GLFW_KEY_BACKSLASH
	GLFW_KEY_BACKSPACE
	GLFW_KEY_C
	GLFW_KEY_CAPS_LOCK
	GLFW_KEY_COMMA
	GLFW_KEY_D
	GLFW_KEY_DELETE
	GLFW_KEY_DOWN
	GLFW_KEY_E
	GLFW_KEY_END
	GLFW_KEY_ENTER
	GLFW_KEY_EQUAL
	GLFW_KEY_ESCAPE
	GLFW_KEY_F
	GLFW_KEY_F1
	GLFW_KEY_F10
	GLFW_KEY_F11
	GLFW_KEY_F12
	GLFW_KEY_F13
	GLFW_KEY_F14
	GLFW_KEY_F15
	GLFW_KEY_F16
	GLFW_KEY_F17
	GLFW_KEY_F18
	GLFW_KEY_F19
	GLFW_KEY_F2
	GLFW_KEY_F20
	GLFW_KEY_F21
	GLFW_KEY_F22
	GLFW_KEY_F23
	GLFW_KEY_F24
	GLFW_KEY_F25
	GLFW_KEY_F3
	GLFW_KEY_F4
	GLFW_KEY_F5
	GLFW_KEY_F6
	GLFW_KEY_F7
	GLFW_KEY_F8
	GLFW_KEY_F9
	GLFW_KEY_G
	GLFW_KEY_GRAVE_ACCENT
	GLFW_KEY_H
	GLFW_KEY_HOME
	GLFW_KEY_I
	GLFW_KEY_INSERT
	GLFW_KEY_J
	GLFW_KEY_K
	GLFW_KEY_KP_0
	GLFW_KEY_KP_1
	GLFW_KEY_KP_2
	GLFW_KEY_KP_3
	GLFW_KEY_KP_4
	GLFW_KEY_KP_5
	GLFW_KEY_KP_6
	GLFW_KEY_KP_7
	GLFW_KEY_KP_8
	GLFW_KEY_KP_9
	GLFW_KEY_KP_ADD
	GLFW_KEY_KP_DECIMAL
	GLFW_KEY_KP_DIVIDE
	GLFW_KEY_KP_ENTER
	GLFW_KEY_KP_EQUAL
	GLFW_KEY_KP_MULTIPLY
	GLFW_KEY_KP_SUBTRACT
	GLFW_KEY_L
	GLFW_KEY_LAST
	GLFW_KEY_LEFT
	GLFW_KEY_LEFT_ALT
	GLFW_KEY_LEFT_BRACKET
	GLFW_KEY_LEFT_CONTROL
	GLFW_KEY_LEFT_SHIFT
	GLFW_KEY_LEFT_SUPER
	GLFW_KEY_M
	GLFW_KEY_MENU
	GLFW_KEY_MINUS
	GLFW_KEY_N
	GLFW_KEY_NUM_LOCK
	GLFW_KEY_O
	GLFW_KEY_P
	GLFW_KEY_PAGE_DOWN
	GLFW_KEY_PAGE_UP
	GLFW_KEY_PAUSE
	GLFW_KEY_PERIOD
	GLFW_KEY_PRINT_SCREEN
	GLFW_KEY_Q
	GLFW_KEY_R
	GLFW_KEY_RIGHT
	GLFW_KEY_RIGHT_ALT
	GLFW_KEY_RIGHT_BRACKET
	GLFW_KEY_RIGHT_CONTROL
	GLFW_KEY_RIGHT_SHIFT
	GLFW_KEY_RIGHT_SUPER
	GLFW_KEY_S
	GLFW_KEY_SCROLL_LOCK
	GLFW_KEY_SEMICOLON
	GLFW_KEY_SLASH
	GLFW_KEY_SPACE
	GLFW_KEY_T
	GLFW_KEY_TAB
	GLFW_KEY_U
	GLFW_KEY_UNKNOWN
	GLFW_KEY_UP
	GLFW_KEY_V
	GLFW_KEY_W
	GLFW_KEY_WORLD_1
	GLFW_KEY_WORLD_2
	GLFW_KEY_X
	GLFW_KEY_Y
	GLFW_KEY_Z
	GLFW_LOCK_KEY_MODS
	GLFW_LOSE_CONTEXT_ON_RESET
	GLFW_MAXIMIZED
	GLFW_MOD_ALT
	GLFW_MOD_CAPS_LOCK
	GLFW_MOD_CONTROL
	GLFW_MOD_NUM_LOCK
	GLFW_MOD_SHIFT
	GLFW_MOD_SUPER
	GLFW_MOUSE_BUTTON_1
	GLFW_MOUSE_BUTTON_2
	GLFW_MOUSE_BUTTON_3
	GLFW_MOUSE_BUTTON_4
	GLFW_MOUSE_BUTTON_5
	GLFW_MOUSE_BUTTON_6
	GLFW_MOUSE_BUTTON_7
	GLFW_MOUSE_BUTTON_8
	GLFW_MOUSE_BUTTON_LAST
	GLFW_MOUSE_BUTTON_LEFT
	GLFW_MOUSE_BUTTON_MIDDLE
	GLFW_MOUSE_BUTTON_RIGHT
	GLFW_NATIVE_CONTEXT_API
	GLFW_NO_API
	GLFW_NO_CURRENT_CONTEXT
	GLFW_NO_ERROR
	GLFW_NO_RESET_NOTIFICATION
	GLFW_NO_ROBUSTNESS
	GLFW_NO_WINDOW_CONTEXT
	GLFW_NOT_INITIALIZED
	GLFW_OPENGL_ANY_PROFILE
	GLFW_OPENGL_API
	GLFW_OPENGL_COMPAT_PROFILE
	GLFW_OPENGL_CORE_PROFILE
	GLFW_OPENGL_DEBUG_CONTEXT
	GLFW_OPENGL_ES_API
	GLFW_OPENGL_FORWARD_COMPAT
	GLFW_OPENGL_PROFILE
	GLFW_OSMESA_CONTEXT_API
	GLFW_OUT_OF_MEMORY
	GLFW_PLATFORM_ERROR
	GLFW_PRESS
	GLFW_RED_BITS
	GLFW_REFRESH_RATE
	GLFW_RELEASE
	GLFW_RELEASE_BEHAVIOR_FLUSH
	GLFW_RELEASE_BEHAVIOR_NONE
	GLFW_REPEAT
	GLFW_RESIZABLE
	GLFW_SAMPLES
	GLFW_SCALE_TO_MONITOR
	GLFW_SRGB_CAPABLE
	GLFW_STENCIL_BITS
	GLFW_STEREO
	GLFW_STICKY_KEYS
	GLFW_STICKY_MOUSE_BUTTONS
	GLFW_TRANSPARENT_FRAMEBUFFER
	GLFW_TRUE
	GLFW_VERSION_MAJOR
	GLFW_VERSION_MINOR
	GLFW_VERSION_REVISION
	GLFW_VERSION_UNAVAILABLE
	GLFW_VISIBLE
	GLFW_VRESIZE_CURSOR
	GLFW_X11_CLASS_NAME
	GLFW_X11_INSTANCE_NAME
)

struct Cursor {
	handle i64
}

struct Monitor {
	handle i64
}

struct Window {
pub:
	handle i64
}

// TODO
pub fn create_cursor(image voidptr, xhot int, yhot int) Cursor {
	handle := C.glfwCreateCursor(image, xhot, yhot)
	return Cursor {
		handle: handle
	}
}

pub fn create_standard_cursor(shape int) Cursor {
	handle := C.glfwCreateStandardCursor(shape)
	return Cursor {
		handle: handle
	}
}

// TODO
pub fn create_window(width int, height int, title string, monitor i64, share i64) Window {
	handle := C.glfwCreateWindow(width, height, title.str, monitor, share)
	return Window {
		handle: handle
	}
}

pub fn default_window_hints() {
	C.glfwDefaultWindowHints()
}

pub fn (cursor Cursor) destroy() {
	C.glfwDestroyCursor(cursor.handle)
}

pub fn (window Window) destroy() {
	C.glfwDestroyWindow(window.handle)
}

pub fn extension_supported(extension string) bool {
	return C.glfwExtensionSupported(extension.str)
}

pub fn (window Window) focus() {
	C.glfwFocusWindow(window.handle)
}

pub fn (window Window) get_clipboard_string() string {
	ret := C.glfwGetClipboardString(window.handle)
	return tos(ret, strlen(ret))
}

pub fn get_current_context() Window {
	handle := C.glfwGetCurrentContext()
	return Window {
		handle: handle
	}
}

pub fn (window Window) get_cursor_pos() []int {
	xpos := 0
	ypos := 0
	C.glfwGetCursorPos(window.handle, &xpos, &ypos)
	return [xpos, ypos]
}

// TODO
pub fn get_error(description *voidptr) int {
	return C.glfwGetError(description)
}

pub fn (window Window) get_framebuffer_size() []int {
	width := 0
	height := 0
	C.glfwGetFramebufferSize(window.handle, &width, &height)
	return [width, height]
}

pub fn get_gamepad_name(jid int) string {
	ret := C.glfwGetGamepadName(jid)
	return tos(ret, strlen(ret))
}

// TODO
pub fn get_gamepad_state(jid int, state voidptr) bool {
	return C.glfwGetGamepadState(jid, state)
}

// TODO
pub fn (monitor Monitor) get_gamma_ramp() voidptr {
	return C.glfwGetGammaRamp(monitor.handle)
}

pub fn (window Window) get_input_mode(mode int) int {
	return C.glfwGetInputMode(window.handle, mode)
}

// TODO
pub fn get_joystick_axes(jid int, count *int) {
	return C.glfwGetJoystickAxes(jid, &count)
}

// TODO
pub fn get_joystick_buttons(jid int, count *int) voidptr {
	return C.glfwGetJoystickButtons(jid, &count)
}

pub fn get_joystick_guid(jid int) string {
	ret := C.glfwGetJoystickGUID(jid)
	return tos(ret, strlen(ret))
}

// TODO
pub fn get_joystick_hats(jid int, count *int) voidptr {
	return C.glfwGetJoystickHats(jid, &count)
}

pub fn get_joystick_name(jid int) string {
	ret := C.glfwGetJoystickName(jid)
	return tos(ret, strlen(ret))
}

pub fn get_joystick_user_pointer(jid int) i64 {
	return C.glfwGetJoystickUserPointer(jid)
}

pub fn (window Window) get_key(key int) int {
	return C.glfwGetKey(window.handle, key)
}

pub fn get_key_name(key int, scancode int) string {
	ret := C.glfwGetKeyName(key, scancode)
	return tos(ret, strlen(ret))
}

pub fn get_key_scancode(key int) int {
	return C.glfwGetKeyScancode(key)
}

pub fn (monitor Monitor) get_content_scale() []f32 {
	xscale := f32(0)
	yscale := f32(0)
	C.glfwGetMonitorContentScale(monitor.handle, &xscale, &yscale)
	return [xscale, yscale]
}

pub fn (monitor Monitor) get_name() string {
	ret := C.glfwGetMonitorName(monitor.handle)
	return tos(ret, strlen(ret))
}

pub fn (monitor Monitor) get_physical_size() []int {
	width_mm := 0
	height_mm := 0
	C.glfwGetMonitorPhysicalSize(monitor.handle, &width_mm, &height_mm)
	return [width_mm, height_mm]
}

pub fn (monitor Monitor) get_pos() []int {
	xpos := 0
	ypos := 0
	C.glfwGetMonitorPos(monitor.handle, &xpos, &ypos)
	return [xpos, ypos]
}

// TODO
pub fn get_monitors(count *int) *voidptr {
	return C.glfwGetMonitors(&count)
}

// TODO
pub fn get_monitor_user_pointer(monitor i64) i64 {
	return C.glfwGetMonitorUserPointer(monitor)
}

pub fn (window Window) get_mouse_button(button int) int {
	return C.glfwGetMouseButton(window.handle, button)
}

pub fn get_primary_monitor() Monitor {
	handle := C.glfwGetPrimaryMonitor()
	return Monitor {
		handle: handle
	}
}

// TODO
pub fn get_proc_address(procname string) i64 {
	return C.glfwGetProcAddress(procname.str)
}

pub fn get_time() f64 {
	return C.glfwGetTime()
}

pub fn get_timer_frequency() i64 {
	return C.glfwGetTimerFrequency()
}

pub fn get_timer_value() i64 {
	return C.glfwGetTimerValue()
}

pub fn get_version() []int {
	major := 0
	minor := 0
	rev := 0
	C.glfwGetVersion(&major, &minor, &rev)
	return [major, minor, rev]
}

pub fn get_version_string() string {
	ret := C.glfwGetVersionString()
	return tos(ret, strlen(ret))
}

// TODO
pub fn (monitor Monitor) get_video_mode() voidptr {
	return C.glfwGetVideoMode(monitor.handle)
}

// TODO
pub fn (monitor Monitor) get_video_modes(count *int) voidptr {
	return C.glfwGetVideoModes(monitor.handle, &count)
}

pub fn (window Window) get_attrib(attrib int) int {
	return C.glfwGetWindowAttrib(window.handle, attrib)
}

pub fn (window Window) get_content_scale() []f32 {
	xscale := f32(0)
	yscale := f32(0)
	C.glfwGetWindowContentScale(window.handle, &xscale, &yscale)
	return [xscale, yscale]
}

pub fn (window Window) get_frame_size() []int {
	left := 0
	top := 0
	right := 0
	bottom := 0
	C.glfwGetWindowFrameSize(window.handle, &left, &top, &right, &bottom)
	return [left, top, right, bottom]
}

pub fn (window Window) get_monitor() Monitor {
	handle := C.glfwGetWindowMonitor(window.handle)
	return Monitor {
		handle: handle
	}
}

pub fn (window Window) get_opacity() f32 {
	return C.glfwGetWindowOpacity(window.handle)
}

pub fn (window Window) get_pos() []int {
	xpos := 0
	ypos := 0
	C.glfwGetWindowPos(window.handle, &xpos, &ypos)
	return [xpos, ypos]
}

pub fn (window Window) get_size() []int {
	width := 0
	height := 0
	C.glfwGetWindowSize(window.handle, &width, &height)
	return [width, height]
}

// TODO
pub fn get_window_user_pointer(window i64) i64 {
	return C.glfwGetWindowUserPointer(window)
}

pub fn (window Window) hide() {
	C.glfwHideWindow(window.handle)
}

pub fn (window Window) iconify() {
	C.glfwIconifyWindow(window.handle)
}

pub fn init() bool {
	return C.glfwInit()
}

pub fn init_hint(hint int, value int) {
	C.glfwInitHint(hint, value)
}

pub fn joystick_is_gamepad(jid int) bool {
	return C.glfwJoystickIsGamepad(jid)
}

pub fn joystick_present(jid int) bool {
	return C.glfwJoystickPresent(jid)
}

pub fn (window Window) make_context_current() {
	C.glfwMakeContextCurrent(window.handle)
}

pub fn (window Window) maximize() {
	C.glfwMaximizeWindow(window.handle)
}

pub fn poll_events() {
	C.glfwPollEvents()
}

pub fn post_empty_event() {
	C.glfwPostEmptyEvent()
}

pub fn (window Window) request_attention() {
	C.glfwRequestWindowAttention(window.handle)
}

pub fn (window Window) restore() {
	C.glfwRestoreWindow(window.handle)
}

// TODO
pub fn set_char_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetCharCallback(window, cbfun)
}

// TODO
pub fn set_char_mods_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetCharModsCallback(window, cbfun)
}

pub fn set_clipboard_string(window i64, str string) {
	C.glfwSetClipboardString(window, str.str)
}

pub fn set_cursor(window i64, cursor i64) {
	C.glfwSetCursor(window, cursor)
}

// TODO
pub fn set_cursor_enter_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetCursorEnterCallback(window, cbfun)
}

pub fn (window Window) set_cursor_pos(xpos f64, ypos f64) {
	C.glfwSetCursorPos(window.handle, xpos, ypos)
}

// TODO
pub fn set_cursor_pos_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetCursorPosCallback(window, cbfun)
}

// TODO
pub fn set_drop_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetDropCallback(window, cbfun)
}

// TODO
pub fn set_error_callback(cbfun voidptr) voidptr {
	return C.glfwSetErrorCallback(cbfun)
}

// TODO
pub fn set_framebuffer_size_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetFramebufferSizeCallback(window, cbfun)
}

pub fn (monitor Monitor) set_gamma(gamma f32) {
	C.glfwSetGamma(monitor.handle, gamma)
}

// TODO
pub fn (monitor Monitor) set_gamma_ramp(ramp voidptr) {
	C.glfwSetGammaRamp(monitor.handle, ramp)
}

pub fn (window Window) set_input_mode(mode int, value int) {
	C.glfwSetInputMode(window.handle, mode, value)
}

// TODO
pub fn set_joystick_callback(cbfun voidptr) voidptr {
	return C.glfwSetJoystickCallback(cbfun)
}

pub fn set_joystick_user_pointer(jid int, pointer i64) {
	C.glfwSetJoystickUserPointer(jid, pointer)
}

// TODO
pub fn set_key_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetKeyCallback(window, cbfun)
}

// TODO
pub fn set_monitor_callback(cbfun voidptr) voidptr {
	return C.glfwSetMonitorCallback(cbfun)
}

// TODO
pub fn set_monitor_user_pointer(monitor i64, pointer i64) {
	C.glfwSetMonitorUserPointer(monitor, pointer)
}

// TODO
pub fn set_mouse_button_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetMouseButtonCallback(window, cbfun)
}

// TODO
pub fn set_scroll_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetScrollCallback(window, cbfun)
}

pub fn set_time(time f64) {
	C.glfwSetTime(time)
}

pub fn (window Window) set_aspect_ratio(numer int, denom int) {
	C.glfwSetWindowAspectRatio(window.handle, numer, denom)
}

pub fn (window Window) set_attrib(attrib int, value int) {
	C.glfwSetWindowAttrib(window.handle, attrib, value)
}

// TODO
pub fn set_window_close_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowCloseCallback(window, cbfun)
}

// TODO
pub fn set_window_content_scale_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowContentScaleCallback(window, cbfun)
}

// TODO
pub fn set_window_focus_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowFocusCallback(window, cbfun)
}

// TODO
pub fn (window Window) set_window_icon(count int, images voidptr) {
	C.glfwSetWindowIcon(window.handle, count, images)
}

// TODO
pub fn set_window_iconify_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowIconifyCallback(window, cbfun)
}

// TODO
pub fn set_window_maximize_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowMaximizeCallback(window, cbfun)
}

// TODO
pub fn set_window_monitor(window i64, monitor i64, xpos int, ypos int, width int, height int, refresh_rate int) {
	C.glfwSetWindowMonitor(window, monitor, xpos, ypos, width, height, refresh_rate)
}

pub fn (window Window) set_opacity(opacity f32) {
	C.glfwSetWindowOpacity(window.handle, opacity)
}

pub fn (window Window) set_pos(xpos int, ypos int) {
	C.glfwSetWindowPos(window.handle, xpos, ypos)
}

// TODO
pub fn set_window_pos_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowPosCallback(window, cbfun)
}

// TODO
pub fn set_window_refresh_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowRefreshCallback(window, cbfun)
}

// TODO
pub fn set_window_should_close(window i64, value bool) {
	C.glfwSetWindowShouldClose(window, value)
}

pub fn (window Window) set_size(width int, height int) {
	C.glfwSetWindowSize(window.handle, width, height)
}

// TODO
pub fn set_window_size_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowSizeCallback(window, cbfun)
}

pub fn (window Window) set_size_limits(minwidth int, minheight int, maxwidth int, maxheight int) {
	C.glfwSetWindowSizeLimits(window.handle, minwidth, minheight, maxwidth, maxheight)
}

pub fn (window Window) set_title(title string) {
	C.glfwSetWindowTitle(window.handle, title.str)
}

// TODO
pub fn set_window_user_pointer(window i64, pointer i64) {
	C.glfwSetWindowUserPointer(window, pointer)
}

pub fn (window Window) show() {
	C.glfwShowWindow(window.handle)
}

pub fn (window Window) swap_buffers() {
	C.glfwSwapBuffers(window.handle)
}

pub fn swap_interval(interval int) {
	C.glfwSwapInterval(interval)
}

pub fn terminate() {
	C.glfwTerminate()
}

pub fn update_gamepad_mappings(str string) bool {
	return C.glfwUpdateGamepadMappings(str.str)
}

pub fn wait_events() {
	C.glfwWaitEvents()
}

pub fn wait_events_timeout(timeout f64) {
	C.glfwWaitEventsTimeout(timeout)
}

pub fn window_hint(hint int, value int) {
	C.glfwWindowHint(hint, value)
}

pub fn window_hint_string(hint int, value string) {
	C.glfwWindowHintString(hint, value.str)
}

pub fn (window Window) should_close() bool {
	return C.glfwWindowShouldClose(window.handle)
}
