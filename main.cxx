
import foo;

#include <string_view>

auto main() -> int {
    constexpr std::string_view goodbye{"goodbye world!"};
    foo f{goodbye};
    f.helloworld();

    return 0;
}