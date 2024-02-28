workspace "Project Clip"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Clip.App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Core"
	include "Clip.Core/Build-Core.lua"
group ""

include "Clip.App/Build-App.lua"