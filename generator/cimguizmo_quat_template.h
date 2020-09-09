#ifndef CIMGUIZMO_INCLUDED
#define CIMGUIZMO_INCLUDED
#include <stdio.h>
#include <stdint.h>
#if defined _WIN32 || defined __CYGWIN__
    #ifdef CIMGUI_NO_EXPORT
        #define API
    #else
        #define API __declspec(dllexport)
    #endif
    #ifndef __GNUC__
    #define snprintf sprintf_s
    #endif
#else
    #ifdef __GNUC__
        #define API  __attribute__((__visibility__("default")))
    #else
        #define API
    #endif
#endif

#if defined __cplusplus
    #define EXTERN extern "C"
#else
    #include <stdarg.h>
    #include <stdbool.h>
    #define EXTERN extern
#endif

#define CIMGUI_API EXTERN API
#define CONST const


#ifdef _MSC_VER
typedef unsigned __int64 ImU64;
#else
//typedef unsigned long long ImU64;
#endif


#ifdef CIMGUI_DEFINE_ENUMS_AND_STRUCTS

typedef int vgButtons;
typedef int vgModifiers;

typedef struct Vec4{
	float x,y,z,w;
}Vec4;

typedef struct G3Dvec4{
	float x,y,z,w;
}G3Dvec4;

typedef struct G3Dvec3{
	float x,y,z;
}G3Dvec3;

typedef struct Mat4{
	union {
		float f[16];
        Vec4 v[4];
        /*struct {      float m00, m01, m02, m03,
                        m10, m11, m12, m13,
                        m20, m21, m22, m23,
                        m30, m31, m32, m33; };*/
    };
}Mat4;

typedef struct quat{
	float x,y,z,w;
}quat;


#include "imgui_structs.h"
#else
#endif // CIMGUI_DEFINE_ENUMS_AND_STRUCTS

#include "auto_funcs.h"

#ifdef CIMGUI_DEFINE_ENUMS_AND_STRUCTS
CIMGUI_API void mat4_cast( quat *q,Mat4* mat);
CIMGUI_API void mat4_pos_cast( quat *q, G3Dvec3 pos, Mat4* mat);
CIMGUI_API void quat_cast(float f[16], quat *qq);
CIMGUI_API void quat_pos_cast(float f[16], quat *qq, G3Dvec3 *pos);
#else
CIMGUI_API void mat4_cast( quat *q,Mat4* mat);
CIMGUI_API void mat4_pos_cast( quat *q, vec3 pos, Mat4* mat);
CIMGUI_API void quat_cast(float f[16], quat *qq);
CIMGUI_API void quat_pos_cast(float f[16], quat *qq, vec3 *pos);
#endif

#endif //CIMGUIZMO_INCLUDED
