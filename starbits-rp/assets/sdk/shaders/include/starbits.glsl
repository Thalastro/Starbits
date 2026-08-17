#ifndef MOJIMPORT_SDK_STARBITS
#define MOJIMPORT_SDK_STARBITS

bool sdk_starbits_shouldShade(vec4 color) {
    return abs(color.r * 255.0 - 1) < 0.5 &&
        abs(color.g * 255.0 - 1) < 0.5 &&
        abs(color.b * 255.0 - 254) < 0.5;
}

#endif // MOJIMPORT_SDK_STARBITS
