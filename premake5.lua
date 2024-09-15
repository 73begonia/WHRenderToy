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

IncludeDir = {}
IncludeDir["ImGui"] = "%{wks.location}/external/imgui"
IncludeDir["SimpleMath"] = "%{wks.location}/external/SimpleMath"
IncludeDir["WHGraphics"] = "%{wks.location}/WHGraphics/src"

group "Dependencies"
		include "external/imgui"
group ""

include "WHGraphics"
include "samples/pathtracer"