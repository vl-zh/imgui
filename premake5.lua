project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("bin/")
    objdir ("bin-int/")

    flags {"MultiProcessorCompile"}

    optimize "Full"
    warnings "Off"

    files
    {
        "*.h",
        "*.cpp",
        "backends/imgui_impl_glfw.*",
        "backends/imgui_impl_opengl3.*",
        "misc/cpp/imgui_stdlib.*"
    }

    includedirs
    {
        "%{IncludeDir.GLFW}",
        "%{IncludeDir.IMGUI}"
    }