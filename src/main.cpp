#include <cmath>
#include <cstdint>
#include <gsl/gsl>
#include <iostream>

struct Point {
  std::float_t x, y, z;

  void MyMethod() const {}
};

int main(std::int32_t argc, gsl::zstring* argv) {
  gsl::span<gsl::zstring> arguments(argv, argc);
  std::sort(arguments.begin(), arguments.end());

  std::uint32_t count = 0;
  std::size_t size = 12;

std:
  float_t s = 0.0f;

  std::cout << "Hello, World!" << std::endl;
  return 0;
}