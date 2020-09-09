//This file is automatically generated by generator.lua from https://github.com/cimgui/cimguizmo_quat
//based on imGuIZMOquat.h file version  XXX from https://github.com/BrutPitt/imGuIZMO.quat
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


typedef struct imguiGizmo imguiGizmo;
typedef struct ImVector_G3Dvec3 {int Size;int Capacity;G3Dvec3* Data;} ImVector_G3Dvec3;

struct imguiGizmo
{
    quat qtV;
    quat qtV2;
    G3Dvec3 posPanDolly;
    vgButtons buttonPanDolly;
    int drawMode;
    int axesOriginType;
    bool showFullAxes;
};
    enum {
                mode3Axes = 0x0001,
                modeDirection = 0x0002,
                modeDirPlane = 0x0004,
                modeDual = 0x0008,
                modePanDolly = 0x0010,
                modeMask = 0x00ff,
                cubeAtOrigin = 0x0100,
                sphereAtOrigin = 0x0200,
                noSolidAtOrigin = 0x0400,
                modeFullAxes = 0x0800,
                axesModeMask = 0xff00
    };
    enum { sphereTess16, sphereTess8, sphereTess4, sphereTess2 };
    enum { CONE_SURF, CONE_CAP, CYL_SURF, CYL_CAP };
    enum { axisIsX, axisIsY, axisIsZ };
typedef enum { backSide, frontSide }solidSides;
#else
#endif // CIMGUI_DEFINE_ENUMS_AND_STRUCTS

#ifndef CIMGUI_DEFINE_ENUMS_AND_STRUCTS
typedef ImVector<vec3> ImVector_vec3;
CIMGUI_API void imguiGizmo_buildPlane(const float size,const float thickness);
CIMGUI_API void imguiGizmo_buildCube(const float size);
CIMGUI_API void imguiGizmo_buildPolygon(const vec3 size,ImVector_vec3* vtx,ImVector_vec3* norm);
CIMGUI_API void imguiGizmo_buildSphere(const float radius,const int tessFactor);
CIMGUI_API void imguiGizmo_buildCone(const float x0,const float x1,const float radius,const int slices);
CIMGUI_API void imguiGizmo_buildCylinder(const float x0,const float x1,const float radius,const int slices);
CIMGUI_API void imguiGizmo_resizeAxesOf(const vec3 newSize);
CIMGUI_API void imguiGizmo_restoreAxesSize(void);
CIMGUI_API void imguiGizmo_resizeSolidOf(float newSize);
CIMGUI_API void imguiGizmo_restoreSolidSize(void);
CIMGUI_API void imguiGizmo_setDirectionColorU32U32(ImU32 dColor,const ImU32 pColor);
CIMGUI_API void imguiGizmo_setDirectionColorVec4Vec4(const ImVec4 dColor,const ImVec4 pColor);
CIMGUI_API void imguiGizmo_setDirectionColorU32(ImU32 color);
CIMGUI_API void imguiGizmo_setDirectionColorVec4(const ImVec4 color);
CIMGUI_API void imguiGizmo_restoreDirectionColor(void);
CIMGUI_API void imguiGizmo_setSphereColorsVec4(const ImVec4 a,const ImVec4 b);
CIMGUI_API void imguiGizmo_setSphereColorsU32(ImU32 a,ImU32 b);
CIMGUI_API void imguiGizmo_restoreSphereColors(void);
CIMGUI_API void imguiGizmo_setGizmoFeelingRot(float f);
CIMGUI_API float imguiGizmo_getGizmoFeelingRot(void);
CIMGUI_API void imguiGizmo_setPanModifier(vgModifiers v);
CIMGUI_API void imguiGizmo_setDollyModifier(vgModifiers v);
CIMGUI_API void imguiGizmo_setDollyScale(float scale);
CIMGUI_API float imguiGizmo_getDollyScale(void);
CIMGUI_API void imguiGizmo_setPanScale(float scale);
CIMGUI_API float imguiGizmo_getPanScale(void);
CIMGUI_API bool imguiGizmo_drawFunc(imguiGizmo* self,const char* label,float size);
CIMGUI_API void imguiGizmo_modeSettings(imguiGizmo* self,int mode);
CIMGUI_API void imguiGizmo_setDualMode(imguiGizmo* self,const int mode);
CIMGUI_API bool imguiGizmo_getTransformsvec3Ptr(imguiGizmo* self,quat* q,const char* label,vec3* dir,float size);
CIMGUI_API bool imguiGizmo_getTransformsvec4Ptr(imguiGizmo* self,quat* q,const char* label,vec4* axis_angle,float size);
CIMGUI_API bool iggizmo3DquatPtrFloatInt(const char* noname1,quat* noname2,float noname3,const int noname4);
CIMGUI_API bool iggizmo3Dvec4Ptr(const char* noname1,vec4* noname2,float noname3,const int noname4);
CIMGUI_API bool iggizmo3Dvec3PtrFloatInt(const char* noname1,vec3* noname2,float noname3,const int noname4);
CIMGUI_API bool iggizmo3DquatPtrquatPtrFloatInt(const char* noname1,quat* noname2,quat* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3DquatPtrvec4PtrFloatInt(const char* noname1,quat* noname2,vec4* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3DquatPtrvec3PtrFloatInt(const char* noname1,quat* noname2,vec3* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3Dvec3PtrquatPtrFloatInt(const char* noname1,vec3* noname2,quat* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3Dvec3Ptrvec4PtrFloatInt(const char* noname1,vec3* noname2,vec4* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3Dvec3Ptrvec3PtrFloatInt(const char* noname1,vec3* noname2,vec3* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3Dvec3PtrquatPtrquatPtr(const char* noname1,vec3* noname2,quat* noname3,quat* noname4,float noname5,const int noname6);
CIMGUI_API bool iggizmo3Dvec3PtrquatPtrvec4Ptr(const char* noname1,vec3* noname2,quat* noname3,vec4* noname4,float noname5,const int noname6);
CIMGUI_API bool iggizmo3Dvec3PtrquatPtrvec3Ptr(const char* noname1,vec3* noname2,quat* noname3,vec3* noname4,float noname5,const int noname6);
#endif //CIMGUI_DEFINE_ENUMS_AND_STRUCTS
#ifdef CIMGUI_DEFINE_ENUMS_AND_STRUCTS
CIMGUI_API void imguiGizmo_buildPlane(const float size,const float thickness);
CIMGUI_API void imguiGizmo_buildCube(const float size);
CIMGUI_API void imguiGizmo_buildPolygon(const G3Dvec3 size,ImVector_G3Dvec3* vtx,ImVector_G3Dvec3* norm);
CIMGUI_API void imguiGizmo_buildSphere(const float radius,const int tessFactor);
CIMGUI_API void imguiGizmo_buildCone(const float x0,const float x1,const float radius,const int slices);
CIMGUI_API void imguiGizmo_buildCylinder(const float x0,const float x1,const float radius,const int slices);
CIMGUI_API void imguiGizmo_resizeAxesOf(const G3Dvec3 newSize);
CIMGUI_API void imguiGizmo_restoreAxesSize(void);
CIMGUI_API void imguiGizmo_resizeSolidOf(float newSize);
CIMGUI_API void imguiGizmo_restoreSolidSize(void);
CIMGUI_API void imguiGizmo_setDirectionColorU32U32(ImU32 dColor,const ImU32 pColor);
CIMGUI_API void imguiGizmo_setDirectionColorVec4Vec4(const ImVec4 dColor,const ImVec4 pColor);
CIMGUI_API void imguiGizmo_setDirectionColorU32(ImU32 color);
CIMGUI_API void imguiGizmo_setDirectionColorVec4(const ImVec4 color);
CIMGUI_API void imguiGizmo_restoreDirectionColor(void);
CIMGUI_API void imguiGizmo_setSphereColorsVec4(const ImVec4 a,const ImVec4 b);
CIMGUI_API void imguiGizmo_setSphereColorsU32(ImU32 a,ImU32 b);
CIMGUI_API void imguiGizmo_restoreSphereColors(void);
CIMGUI_API void imguiGizmo_setGizmoFeelingRot(float f);
CIMGUI_API float imguiGizmo_getGizmoFeelingRot(void);
CIMGUI_API void imguiGizmo_setPanModifier(vgModifiers v);
CIMGUI_API void imguiGizmo_setDollyModifier(vgModifiers v);
CIMGUI_API void imguiGizmo_setDollyScale(float scale);
CIMGUI_API float imguiGizmo_getDollyScale(void);
CIMGUI_API void imguiGizmo_setPanScale(float scale);
CIMGUI_API float imguiGizmo_getPanScale(void);
CIMGUI_API bool imguiGizmo_drawFunc(imguiGizmo* self,const char* label,float size);
CIMGUI_API void imguiGizmo_modeSettings(imguiGizmo* self,int mode);
CIMGUI_API void imguiGizmo_setDualMode(imguiGizmo* self,const int mode);
CIMGUI_API bool imguiGizmo_getTransformsvec3Ptr(imguiGizmo* self,quat* q,const char* label,G3Dvec3* dir,float size);
CIMGUI_API bool imguiGizmo_getTransformsvec4Ptr(imguiGizmo* self,quat* q,const char* label,G3Dvec4* axis_angle,float size);
CIMGUI_API bool iggizmo3DquatPtrFloatInt(const char* noname1,quat* noname2,float noname3,const int noname4);
CIMGUI_API bool iggizmo3Dvec4Ptr(const char* noname1,G3Dvec4* noname2,float noname3,const int noname4);
CIMGUI_API bool iggizmo3Dvec3PtrFloatInt(const char* noname1,G3Dvec3* noname2,float noname3,const int noname4);
CIMGUI_API bool iggizmo3DquatPtrquatPtrFloatInt(const char* noname1,quat* noname2,quat* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3DquatPtrvec4PtrFloatInt(const char* noname1,quat* noname2,G3Dvec4* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3DquatPtrvec3PtrFloatInt(const char* noname1,quat* noname2,G3Dvec3* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3Dvec3PtrquatPtrFloatInt(const char* noname1,G3Dvec3* noname2,quat* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3Dvec3Ptrvec4PtrFloatInt(const char* noname1,G3Dvec3* noname2,G3Dvec4* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3Dvec3Ptrvec3PtrFloatInt(const char* noname1,G3Dvec3* noname2,G3Dvec3* noname3,float noname4,const int noname5);
CIMGUI_API bool iggizmo3Dvec3PtrquatPtrquatPtr(const char* noname1,G3Dvec3* noname2,quat* noname3,quat* noname4,float noname5,const int noname6);
CIMGUI_API bool iggizmo3Dvec3PtrquatPtrvec4Ptr(const char* noname1,G3Dvec3* noname2,quat* noname3,G3Dvec4* noname4,float noname5,const int noname6);
CIMGUI_API bool iggizmo3Dvec3PtrquatPtrvec3Ptr(const char* noname1,G3Dvec3* noname2,quat* noname3,G3Dvec3* noname4,float noname5,const int noname6);
#endif //CIMGUI_DEFINE_ENUMS_AND_STRUCTS


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
