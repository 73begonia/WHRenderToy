project "WHGraphics"
		kind "StaticLib"
		language "C++"
		cppdialect "C++20"
		staticruntime "off"

		targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

		pchheader "pch.h"
		pchsource "src/pch.cpp"

		forceincludes { "pch.h" }

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
			"src",
			"%{IncludeDir.ImGui}",
			"%{IncludeDir.SimpleMath}"
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