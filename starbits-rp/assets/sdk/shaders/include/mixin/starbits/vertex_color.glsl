    if (!sdk_starbits_shouldShade(Color)) {
        vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color);
    } else {
        vertexColor = vec4(1.0);
    }
