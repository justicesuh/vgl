module glfw

#flag -I @VROOT/thirdparty/glfw 
#flag -L @VROOT/thirdparty/glfw 
#flag darwin -lglfw
#flag linux -lglfw
#flag windows -lglfw3 

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

pub fn glfw_create_cursor(image voidptr, xhot int, yhot int) i64 {
	return C.glfwCreateCursor(image, xhot, yhot)
}

pub fn glfw_create_standard_cursor(shape int) i64 {
	return C.glfwCreateStandardCursor(shape)
}

pub fn glfw_create_window(width int, height int, title string, monitor i64, share i64) i64 {
	return C.glfwCreateWindow(width, height, title.str, monitor, share)
}

pub fn glfw_default_window_hints() {
	C.glfwDefaultWindowHints()
}

pub fn glfw_destroy_cursor(cursor i64) {
	C.glfwDestroyCursor(cursor)
}

pub fn glfw_destroy_window(window i64) {
	C.glfwDestroyWindow(window)
}

pub fn glfw_extension_supported(extension voidptr) bool {
	return C.glfwExtensionSupported(extension)
}

pub fn glfw_focus_window(window i64) {
	C.glfwFocusWindow(window)
}

pub fn glfw_get_clipboard_string(window i64) string {
	ret := C.glfwGetClipboardString(window)
	return tos(ret, strlen(ret))
}

pub fn glfw_get_current_context() i64 {
	return C.glfwGetCurrentContext()
}

pub fn glfw_get_cursor_pos(window i64, xpos *f64, ypos *f64) {
	C.glfwGetCursorPos(window, &xpos, &ypos)
}

pub fn glfw_get_error(description *voidptr) int {
	return C.glfwGetError(description)
}

pub fn glfw_get_framebuffer_size(window i64, width *int, height *int) {
	C.glfwGetFramebufferSize(window, &width, &height)
}

pub fn glfw_get_gamepad_name(jid int) string {
	ret := C.glfwGetGamepadName(jid)
	return tos(ret, strlen(ret))
}

pub fn glfw_get_gamepad_state(jid int, state voidptr) bool {
	return C.glfwGetGamepadState(jid, state)
}

pub fn glfw_get_gamma_ramp(monitor i64) voidptr {
	return C.glfwGetGammaRamp(monitor)
}

pub fn glfw_get_input_mode(window i64, mode int) int {
	return C.glfwGetInputMode(window, mode)
}

pub fn glfw_get_joystick_axes(jid int, count *int) voidptr {
	return C.glfwGetJoystickAxes(jid, &count)
}

pub fn glfw_get_joystick_buttons(jid int, count *int) voidptr {
	return C.glfwGetJoystickButtons(jid, &count)
}

pub fn glfw_get_joystick_guid(jid int) string {
	ret := C.glfwGetJoystickGUID(jid)
	return tos(ret, strlen(ret))
}

pub fn glfw_get_joystick_hats(jid int, count *int) voidptr {
	return C.glfwGetJoystickHats(jid, &count)
}

pub fn glfw_get_joystick_name(jid int) string {
	ret := C.glfwGetJoystickName(jid)
	return tos(ret, strlen(ret))
}

pub fn glfw_get_joystick_user_pointer(jid int) i64 {
	return C.glfwGetJoystickUserPointer(jid)
}

pub fn glfw_get_key(window i64, key int) int {
	return C.glfwGetKey(window, key)
}

pub fn glfw_get_key_name(key int, scancode int) string {
	ret := C.glfwGetKeyName(key, scancode)
	return tos(ret, strlen(ret))
}

pub fn glfw_get_key_scancode(key int) int {
	return C.glfwGetKeyScancode(key)
}

pub fn glfw_get_monitor_content_scale(monitor i64, xscale *f32, yscale *f32) {
	C.glfwGetMonitorContentScale(monitor, &xscale, &yscale)
}

pub fn glfw_get_monitor_name(monitor i64) string {
	ret := C.glfwGetMonitorName(monitor)
	return tos(ret, strlen(ret))
}

pub fn glfw_get_monitor_physical_size(monitor i64, width_mm *int, height_mm *int) {
	C.glfwGetMonitorPhysicalSize(monitor, &width_mm, &height_mm)
}

pub fn glfw_get_monitor_pos(monitor i64, xpos *int, ypos *int) {
	C.glfwGetMonitorPos(monitor, &xpos, &ypos)
}

pub fn glfw_get_monitors(count *int) *voidptr {
	return C.glfwGetMonitors(&count)
}

pub fn glfw_get_monitor_user_pointer(monitor i64) i64 {
	return C.glfwGetMonitorUserPointer(monitor)
}

pub fn glfw_get_mouse_button(window i64, button int) int {
	return C.glfwGetMouseButton(window, button)
}

pub fn glfw_get_primary_monitor() i64 {
	return C.glfwGetPrimaryMonitor()
}

pub fn glfw_get_proc_address(procname string) i64 {
	return C.glfwGetProcAddress(procname.str)
}

pub fn glfw_get_time() f64 {
	return C.glfwGetTime()
}

pub fn glfw_get_timer_frequency() i64 {
	return C.glfwGetTimerFrequency()
}

pub fn glfw_get_timer_value() i64 {
	return C.glfwGetTimerValue()
}

pub fn glfw_get_version(major *int, minor *int, rev *int) {
	C.glfwGetVersion(&major, &minor, &rev)
}

pub fn glfw_get_version_string() string {
	ret := C.glfwGetVersionString()
	return tos(ret, strlen(ret))
}

pub fn glfw_get_video_mode(monitor i64) voidptr {
	return C.glfwGetVideoMode(monitor)
}

pub fn glfw_get_video_modes(monitor i64, count *int) voidptr {
	return C.glfwGetVideoModes(monitor, &count)
}

pub fn glfw_get_window_attrib(window i64, attrib int) int {
	return C.glfwGetWindowAttrib(window, attrib)
}

pub fn glfw_get_window_content_scale(window i64, xscale *f32, yscale *f32) {
	C.glfwGetWindowContentScale(window, &xscale, &yscale)
}

pub fn glfw_get_window_frame_size(window i64, left *int, top *int, right *int, bottom *int) {
	C.glfwGetWindowFrameSize(window, &left, &top, &right, &bottom)
}

pub fn glfw_get_window_monitor(window i64) i64 {
	return C.glfwGetWindowMonitor(window)
}

pub fn glfw_get_window_opacity(window i64) f32 {
	return C.glfwGetWindowOpacity(window)
}

pub fn glfw_get_window_pos(window i64, xpos *int, ypos *int) {
	C.glfwGetWindowPos(window, &xpos, &ypos)
}

pub fn glfw_get_window_size(window i64, width *int, height *int) {
	C.glfwGetWindowSize(window, width, height)
}

pub fn glfw_get_window_user_pointer(window i64) i64 {
	return C.glfwGetWindowUserPointer(window)
}

pub fn glfw_hide_window(window i64) {
	C.glfwHideWindow(window)
}

pub fn glfw_iconify_window(window i64) {
	C.glfwIconifyWindow(window)
}

pub fn glfw_init() bool {
	return C.glfwInit()
}

pub fn glfw_init_hint(hint int, value int) {
	C.glfwInitHint(hint, value)
}

pub fn glfw_joystick_is_gamepad(jid int) bool {
	return C.glfwJoystickIsGamepad(jid)
}

pub fn glfw_joystick_present(jid int) bool {
	return C.glfwJoystickPresent(jid)
}

pub fn glfw_make_context_current(window i64) {
	C.glfwMakeContextCurrent(window)
}

pub fn glfw_maximize_window(window i64) {
	C.glfwMaximizeWindow(window)
}

pub fn glfw_poll_events() {
	C.glfwPollEvents()
}

pub fn glfw_post_empty_event() {
	C.glfwPostEmptyEvent()
}

pub fn glfw_request_window_attention(window i64) {
	C.glfwRequestWindowAttention(window)
}

pub fn glfw_restore_window(window i64) {
	C.glfwRestoreWindow(window)
}

pub fn glfw_set_char_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetCharCallback(window, cbfun)
}

pub fn glfw_set_char_mods_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetCharModsCallback(window, cbfun)
}

pub fn glfw_set_clipboard_string(window i64, str string) {
	C.glfwSetClipboardString(window, str.str)
}

pub fn glfw_set_cursor(window i64, cursor i64) {
	C.glfwSetCursor(window, cursor)
}

pub fn glfw_set_cursor_enter_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetCursorEnterCallback(window, cbfun)
}

pub fn glfw_set_cursor_pos(window i64, xpos f64, ypos f64) {
	C.glfwSetCursorPos(window, xpos, ypos)
}

pub fn glfw_set_cursor_pos_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetCursorPosCallback(window, cbfun)
}

pub fn glfw_set_drop_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetDropCallback(window, cbfun)
}

pub fn glfw_set_error_callback(cbfun voidptr) voidptr {
	return C.glfwSetErrorCallback(cbfun)
}

pub fn glfw_set_framebuffer_size_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetFramebufferSizeCallback(window, cbfun)
}

pub fn glfw_set_gamma(monitor i64, gamma f32) {
	C.glfwSetGamma(monitor, gamma)
}

pub fn glfw_set_gamma_ramp(monitor i64, ramp voidptr) {
	C.glfwSetGammaRamp(monitor, ramp)
}

pub fn glfw_set_input_mode(window i64, mode int, value int) {
	C.glfwSetInputMode(window, mode, value)
}

pub fn glfw_set_joystick_callback(cbfun voidptr) voidptr {
	return C.glfwSetJoystickCallback(cbfun)
}

pub fn glfw_set_joystick_user_pointer(jid int, pointer i64) {
	C.glfwSetJoystickUserPointer(jid, pointer)
}

pub fn glfw_set_key_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetKeyCallback(window, cbfun)
}

pub fn glfw_set_monitor_callback(cbfun voidptr) voidptr {
	return C.glfwSetMonitorCallback(cbfun)
}

pub fn glfw_set_monitor_user_pointer(monitor i64, pointer i64) {
	C.glfwSetMonitorUserPointer(monitor, pointer)
}

pub fn glfw_set_mouse_button_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetMouseButtonCallback(window, cbfun)
}

pub fn glfw_set_scroll_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetScrollCallback(window, cbfun)
}

pub fn glfw_set_time(time f64) {
	C.glfwSetTime(time)
}

pub fn glfw_set_window_aspect_ratio(window i64, numer int, denom int) {
	C.glfwSetWindowAspectRatio(window, numer, denom)
}

pub fn glfw_set_window_attrib(window i64, attrib int, value int) {
	C.glfwSetWindowAttrib(window, attrib, value)
}

pub fn glfw_set_window_close_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowCloseCallback(window, cbfun)
}

pub fn glfw_set_window_content_scale_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowContentScaleCallback(window, cbfun)
}

pub fn glfw_set_window_focus_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowFocusCallback(window, cbfun)
}

pub fn glfw_set_window_icon(window i64, count int, images voidptr) {
	C.glfwSetWindowIcon(window, count, images)
}

pub fn glfw_set_window_iconify_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowIconifyCallback(window, cbfun)
}

pub fn glfw_set_window_maximize_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowMaximizeCallback(window, cbfun)
}

pub fn glfw_set_window_monitor(window i64, monitor i64, xpos int, ypos int, width int, height int, refresh_rate int) {
	C.glfwSetWindowMonitor(window, monitor, xpos, ypos, width, height, refresh_rate)
}

pub fn glfw_set_window_opacity(window i64, opacity f32) {
	C.glfwSetWindowOpacity(window, opacity)
}

pub fn glfw_set_window_pos(window i64, xpos int, ypos int) {
	C.glfwSetWindowPos(window, xpos, ypos)
}

pub fn glfw_set_window_pos_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowPosCallback(window, cbfun)
}

pub fn glfw_set_window_refresh_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowRefreshCallback(window, cbfun)
}

pub fn glfw_set_window_should_close(window i64, value bool) {
	C.glfwSetWindowShouldClose(window, value)
}

pub fn glfw_set_window_size(window i64, width int, height int) {
	C.glfwSetWindowSize(window, width, height)
}

pub fn glfw_set_window_size_callback(window i64, cbfun voidptr) voidptr {
	return C.glfwSetWindowSizeCallback(window, cbfun)
}

pub fn glfw_set_window_size_limits(window i64, minwidth int, minheight int, maxwidth int, maxheight int) {
	C.glfwSetWindowSizeLimits(window, minwidth, minheight, maxwidth, maxheight)
}

pub fn glfw_set_window_title(window i64, title string) {
	C.glfwSetWindowTitle(window, title.str)
}

pub fn glfw_set_window_user_pointer(window i64, pointer i64) {
	C.glfwSetWindowUserPointer(window, pointer)
}

pub fn glfw_show_window(window i64) {
	C.glfwShowWindow(window)
}

pub fn glfw_swap_buffers(window i64) {
	C.glfwSwapBuffers(window)
}

pub fn glfw_swap_interval(interval int) {
	C.glfwSwapInterval(interval)
}

pub fn glfw_terminate() {
	C.glfwTerminate()
}

pub fn glfw_update_gamepad_mappings(string voidptr) bool {
	return C.glfwUpdateGamepadMappings(string)
}

pub fn glfw_wait_events() {
	C.glfwWaitEvents()
}

pub fn glfw_wait_events_timeout(timeout f64) {
	C.glfwWaitEventsTimeout(timeout)
}

pub fn glfw_window_hint(hint int, value int) {
	C.glfwWindowHint(hint, value)
}

pub fn glfw_window_hint_string(hint int, value string) {
	C.glfwWindowHintString(hint, value.str)
}

pub fn glfw_window_should_close(window i64) bool {
	return C.glfwWindowShouldClose(window)
}
