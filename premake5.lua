project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "On"

    targetdir ("build/" .. outputdir .. "/%{prj.name}")
	objdir ("bin/" .. outputdir .. "/%{prj.name}")

	files {
		"src/**.h",
        "src/**.cpp",

        "include/**.h"
    }

    defines {
        "YAML_CPP_STATIC_DEFINE",
    }


    includedirs {
        "include"
    }

	filter "system:windows"
		systemversion "latest"

    filter "configurations:Debug"
        buildoptions "/MTd"
        symbols "on"

    filter "configurations:Release"
        buildoptions "/MT"
        optimize "on"
