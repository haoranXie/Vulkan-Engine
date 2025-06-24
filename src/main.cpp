#include <iostream>
#include <cstdint>
#include <cmath>
#include <gsl/gsl>

int main(std::int32_t argc, gsl::zstring* argv)
{
	gsl::span<gsl::zstring> arguments(argv, argc);
	std::sort(arguments.begin(), arguments.end());


	std::uint32_t count = 0;
	std::size_t size = 12;

	std:float_t s = 0.0f;

	std::cout << "Hello, World!" << std::endl;
	return 0;
}