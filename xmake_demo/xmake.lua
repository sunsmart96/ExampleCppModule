add_rules("mode.release", "mode.debug")
set_languages("c++23")

target("mod")
  set_kind("shared")
  add_files("src/mod/mod.mpp", {public = true})
  add_files("src/mod/mod.cpp")
  add_defines("MY_LIBRARY_EXPORTS")  
    

target("cpp_with_moduledeps")
  set_kind("binary")
  add_deps("mod")
  add_files("src/main/main.cpp")
