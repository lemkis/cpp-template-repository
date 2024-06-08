// Global module fragment where #includes can happen
module;
#include <iostream>
#include <print>
// first thing after the Global module fragment must be a module command
export module foo;

export struct foo {
    std::string_view str{"Beware world!"};
    auto helloworld() -> void;
};

auto foo::helloworld() -> void { str = "hello world {}\n"; }
