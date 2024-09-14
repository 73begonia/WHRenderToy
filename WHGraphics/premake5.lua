project "WHGraphics"
		kind "StaticLib"
		language "C++"
		cppdialect "C++17"
		staticruntime "off"

		targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

		pchheader "WHGraphics.h"
		pchsource "src/WHGraphics.cpp"

		files
		{
			"src/**.h",
			"src/**.cpp"
		}

		defines
		{
			"_CRT_SECURE_NO_WARNINGS",
		}

		includedirs
		{
			"%{prj.name}/src",
			"%{IncludeDir.ImGui}"
		}

		links
		{
			"ImGui"
		}

		filter "system:windows"
				systemversion "latest"

		filter "configurations:Debug"
				runtime "Debug"
				symbols "on"

		filter "configurations:Release"
				runtime "Release"
				optimize "on"