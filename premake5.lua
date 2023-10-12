project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"

    targetdir ("bin/%{cfg.buildcfg}")
    objdir ("bin-int/%{cfg.buildcfg}")

    flags {"MultiProcessorCompile"}

    files
    {
        "*.h",
        "*.cpp",
        "backends/imgui_impl_glfw.*",
        "backends/imgui_impl_opengl3.*"
    }

    includedirs
    {
        "%{IncludeDir.GLFW}",
        "%{IncludeDir.IMGUI}"
    }