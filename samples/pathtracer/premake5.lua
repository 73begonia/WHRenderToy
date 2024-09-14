project "PathTracer"
		kind "WindowedApp"
		language "C++"
		cppdialect "C++17"
		staticruntime "on"

		targetdir ("bin/" .. outputdir .. "/%{prj.name}")
		objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

		files
		{
			"src/**.h",
			"src/**.cpp"
		}

		includedirs
		{
			"%{wks.location}/WHGraphics/src"
		}

		links
		{
			"WHGraphics"
		}

		filter "system:windows"
				systemversion "latest"

		filter "configurations:Debug"
				runtime "Debug"
				symbols "on"

		filter "configurations:Release"
				runtime "Release"
				optimize "on"

