#include <GLFW/glfw3.h>
#include <glfw_initialization.h>
#include <glfw_monitor.h>


std::int32_t main(std::int32_t argc, gsl::zstring* argv) {
  const veng::GlfwInitialization _glfw;

  gsl::not_null<GLFWwindow*> window = glfwCreateWindow(800, 600, "Vulkan Engine", nullptr, nullptr);
  gsl::final_action _cleanup_window([window]() -> void {
    glfwDestroyWindow(window);
  });

  gsl::span<GLFWmonitor*> monitors = veng::GetMonitors();

  if (monitors.size() > 1)
  {
    veng::MoveWindowToMonitor(window, monitors[1]);
  }

  while (!glfwWindowShouldClose(window)) {
    glfwPollEvents();
  }

  return EXIT_SUCCESS;
}
