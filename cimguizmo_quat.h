//This file is manually generated 
//based on imGuIZMOquat.h file version  v3.0 from https://github.com/BrutPitt/imGuIZMO.quat
#ifndef CIMGUIZMOQUAT_INCLUDED
#define CIMGUIZMOQUAT_INCLUDED
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

typedef struct{
	float x,y,z,w;
}Vec4;

typedef struct{
	union {
		float f[16];
        Vec4 v[4];
        /*struct {      float m00, m01, m02, m03,
                        m10, m11, m12, m13,
                        m20, m21, m22, m23,
                        m30, m31, m32, m33; };*/
    };
}Mat4;

typedef struct{
	float x,y,z,w;
}quat;

typedef enum      {                          
                mode3Axes          = 0x0001, 
                modeDirection      = 0x0002, 
                modeDirPlane       = 0x0004, 
                modeDual           = 0x0008, 
                modePanDolly       = 0x0010, 
                modeMask           = 0x00ff, 
                

                cubeAtOrigin       = 0x0100, 
                sphereAtOrigin     = 0x0200, 
                noSolidAtOrigin    = 0x0400, 
                modeFullAxes       = 0x0800,
                axesModeMask       = 0xff00  
    } gizmo_modes;
	
#endif // CIMGUI_DEFINE_ENUMS_AND_STRUCTS


CIMGUI_API void resizeAxesOf(float sx,float sy, float sz);
CIMGUI_API void restoreAxesSize();
CIMGUI_API void resizeSolidOf(float sx);
CIMGUI_API void restoreSolidSize();
CIMGUI_API void setDirectionColor(const ImVec4 color);
CIMGUI_API void restoreDirectionColor();
CIMGUI_API void setSphereColors(const ImVec4 a,const ImVec4 b);
CIMGUI_API void restoreSphereColors();
CIMGUI_API void setGizmoFeelingRot(float f);
CIMGUI_API float getGizmoFeelingRot();
CIMGUI_API void setDollyScale(float f);
CIMGUI_API float getDollyScale();
CIMGUI_API void setPanScale(float f);
CIMGUI_API float getPanScale();
CIMGUI_API void mat4_cast( quat *q,Mat4* mat);
CIMGUI_API void mat4_pos_cast( quat *q, float pos[3], Mat4* mat);
CIMGUI_API void quat_cast(float f[16], quat *qq);
CIMGUI_API void quat_pos_cast(float f[16], quat *qq, float pos[3]);

CIMGUI_API bool ImGuizmo3D(const char* label, quat *q, float size, const int mode);
CIMGUI_API bool ImGuizmo3Dquat(const char* label, float q[4], float size, const int mode);
CIMGUI_API bool ImGuizmo3Dvec4(const char* label, float a[4], float size, const int mode);
CIMGUI_API bool ImGuizmo3Dvec3(const char*label ,float v[3],float size,const int mode);
CIMGUI_API bool ImGuizmo3Dquatquat(const char*label,float q1[4],float q2[4],float size,const int mode);
CIMGUI_API bool ImGuizmo3Dquatvec4(const char* label,float q[4],float a[4],float size,const int mode);
CIMGUI_API bool ImGuizmo3Dquatvec3(const char* label, float q[4], float v[3],float size,const int mode);

CIMGUI_API bool ImGuizmo3DPan(const char* label, float pa[3], quat *q, float size, const int mode);
CIMGUI_API bool ImGuizmo3DPanquat(const char* label, float pa[3], float q[4], float size, const int mode);
CIMGUI_API bool ImGuizmo3DPanvec4(const char* label, float pa[3], float a[4], float size, const int mode);
CIMGUI_API bool ImGuizmo3DPanvec3(const char*label, float pa[3] ,float v[3],float size,const int mode);
CIMGUI_API bool ImGuizmo3DPanquatquat(const char*label, float pa[3],float q1[4],float q2[4],float size,const int mode);
CIMGUI_API bool ImGuizmo3DPanquatvec4(const char* label, float pa[3],float q[4],float a[4],float size,const int mode);
CIMGUI_API bool ImGuizmo3DPanquatvec3(const char* label, float pa[3], float q[4], float v[3],float size,const int mode);


#endif //CIMGUIZMOQUAT_INCLUDED



