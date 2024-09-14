workspace "WHRenderToy"
	architecture "x86_64"
	startproject "PathTracer"

	configurations
	{
		"Debug",
		"Release"
	}

	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Include directories relative to root folder (solution directory)
IncludeDir = {}
IncludeDir["ImGui"] = "external/imgui"

group "Dependencies"
		include "external/imgui"
group ""

include "WHGraphics"
include "samples/pathtracer"