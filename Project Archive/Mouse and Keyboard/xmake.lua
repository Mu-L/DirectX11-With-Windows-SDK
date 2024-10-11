targetName = "Mouse_and_Keyboard"
target(targetName)
    set_group("Project Archive")
    set_kind("binary")
    set_targetdir(path.join(binDir,targetName))
    add_rules("imguiini")
    add_dx_sdk_options()
    add_deps("Common")
    add_headerfiles("**.h")
    add_files("**.cpp")
    -- shader
    add_rules("hlsl_shader_complier")
    add_headerfiles("HLSL/**.hlsl|HLSL/**.hlsli")
    add_files("HLSL/**.hlsl|HLSL/**.hlsli")
target_end() 